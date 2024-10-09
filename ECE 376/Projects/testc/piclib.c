/**
 * A set of utility functions for controlling different things with the PIC
 */
#include "piclib.h"

/* ------ Waits ------ */

void wait(u16_t milliseconds) {
    u16_t i, j;
    for (i = 0; i < milliseconds; i++) {
        for (j = 0; j < LOOPS_PER_MS; j++); 
    }
}

void wait_fractional(u8_t shift) {
    for (u16_t i = 0; i < LOOPS_PER_MS >> shift; i++);
}


/* ------ LCD Screen ------ */

// A helper function that will send a loaded (in PORTD) instruction to the LCD screen
void send_lcd_inst() {
    // Send instruction
    asm("bsf PORTD, 3");
    wait_fractional(3);
    asm("bcf PORTD, 3");
    // These about 1.2ms (enable cycle time from 1602 LCD datasheets)
    wait(1);
}

inline void lcd_init() {
    TRISD = 0x00;
    PORTD = 0xFF;
    wait(20);
    // LCD initialization sequence
    PORTD = 0x30;
    send_lcd_inst();
    wait(10); // Have to wait more than 4.1ms
    send_lcd_inst();
    wait(1); // Have to wait more than 100us
    send_lcd_inst();
    wait(1);
    PORTD = 0x20;
    send_lcd_inst();
    wait(1);

    lcd_send(SET_4BIT_2LINE_5X8FONT);
    lcd_send(CONTROL_ON_CURSOR_SOLID);
    lcd_send(CLEAR);
    lcd_send(MODE_INCREMENT_NORMAL);
}

void lcd_send(u8_t command) {
    PORTD = command & 0xF0;
    send_lcd_inst();
    PORTD = (command << 4) & 0xF0;
    send_lcd_inst();
}

void lcd_goto(u8_t row, u8_t column) {
#ifdef DEBUG
    if (row > 1 || column > 16) {
        lcd_send(HOME);
        lcd_print(" Invalid Inputs  for lcd_goto!  ");
        return;
    }
#endif
    if (row)
        lcd_send(column + 0xC0);
    else
        lcd_send(column + 0x80);
}

void lcd_append(u8_t character) {
    PORTD = (character & 0xF0) | 0x04;
    send_lcd_inst();
    PORTD = ((character << 4) & 0xF0) | 0x04;
    send_lcd_inst();
}

void lcd_append_int(i32_t integer, u8_t digits, u8_t decimal_digits) {
    u8_t array[10], i;

    if (integer < 0) {
        lcd_append('-');
        integer = -integer;
    }

    for (i = 0; i < 10; i++) {
        array[i] = integer % 10;
        integer = integer / 10;
    }

    for (i = digits; i > 0; i--) {
        if (i == decimal_digits) lcd_append('.');
        lcd_append(array[i - 1] + '0');
    }
}

void lcd_append_all(u8_t *string) {
    u8_t *ptr = string;
    while (*ptr) {
        if (ptr - string == 16) lcd_goto(1, 0);
#ifdef DEBUG
        if (ptr - string >= 32) {
            lcd_goto(0, 0);
            lcd_append_all("String too long!Can't output all");
        };
#endif
        lcd_append(*ptr);
        ptr++;
    }
}


/* ------ Keypad ------ */

char keypad_read(volatile u8_t *port) {
    // Set TRISX to 0x07 (want inputs from the bottom 3 bits but output top 5)
    *(port + 0x12) = 0x07;
    // Setting PORTX to enable all buttons
    *port = 0xF8;
    if (*port == 0xF8) return '\0';

Row1:
    *port = 0x40;
    if (*port == 0x40) goto Row2;
    if (*port & 0x04) return '1';
    if (*port & 0x02) return '2';
    return '3';
Row2:
    *port = 0x20;
    if (*port == 0x20) goto Row3;
    if (*port & 0x04) return '4';
    if (*port & 0x02) return '5';
    return '6';
Row3:
    *port = 0x10;
    if (*port == 0x10) goto Row4;
    if (*port & 0x04) return '7';
    if (*port & 0x02) return '8';
    return '9';
Row4:
    *port = 0x08;
    if (*port == 0x08) return '\0'; // Must have just missed it
    if (*port & 0x02) return '0'; // Check the numbers before anything else
    if (*port & 0x01) return '#';
    return '*';
}


/* ------ Stepper Motor ------ */

u8_t table_index = 0;
u8_t table[4] = { 0x31, 0x62, 0xC4, 0x98 };

void rotate_full(volatile u8_t *port, u16_t steps, u16_t ms_per_step) {
    rotate_half(port, steps << 1, ms_per_step >> 1);
}

void rotate_half(volatile u8_t *port, u16_t steps, u16_t ms_per_step) {
    // Set TRISX to output for the lower half
    *(port + 0x12) &= 0xF0;
    for (u16_t i = 0; i < steps; i++) {
        // Gets value in the table at (i / 2) % 4 and if i % 2 is 1, it shifts it over, getting the half-step value
        *port = (*port & 0xF0) | ((table[table_index] >> ((i & 0x01) << 2)) & 0x0F); 
        if (i & 0x01) table_index = (table_index + 1) & 0x03;
        wait(ms_per_step + 2);
        wait_fractional(3);
    }
}

void reverse_full(volatile u8_t *port, u16_t steps, u16_t ms_per_step) {
    reverse_half(port, steps << 1, ms_per_step >> 1);
}

void reverse_half(volatile u8_t *port, u16_t steps, u16_t ms_per_step) {
    // Set TRISX to output for the lower half
    *(port + 0x12) &= 0xF0;
    for (u16_t i = 0; i < steps; i++) {
        // Gets value in the table at (i / 2) % 4 and if i % 2 is 1, it shifts it over, getting the half-step value
        *port = (*port & 0xF0) | ((table[table_index] >> ((i & 0x01) << 2)) & 0x0F); 
        if (i & 0x01) table_index = (table_index - 1) & 0x03;
        wait(ms_per_step + 4);
    }
}


/* ------ Neo-Pixel ------ */

static u8_t PIXEL;

void neopixel_send_byte(u8_t byte) {
    PIXEL = byte;
    asm("call Pixel_8");
    asm("return");

    asm("Pixel_8:");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("call Pixel_1");
    asm("return");
    asm("Pixel_1:");
    asm("bsf PORTD, 0");
    asm("nop");
    asm("btfss _PIXEL, 7");
    asm("bcf PORTD, 0");
    asm("rlncf _PIXEL, F");
    asm("nop");
    asm("nop");
    asm("bcf PORTD, 0");
    asm("return");
}

void neopixel_send(u8_t *colors) {
    TRISD &= 0xFE;
    // Sends all the pixel data
    for (u8_t i = 0; i < NEO_PIXEL_COUNT * 3; i += 3) {
        neopixel_send_byte(colors[i]);
        neopixel_send_byte(colors[i+1]);
        neopixel_send_byte(colors[i+2]);
    }
    wait_fractional(5);
}

void neopixel_set(u8_t red, u8_t green, u8_t blue) {
    TRISD &= 0xFE;
    // Sends all the pixel data
    for (u8_t i = 0; i < NEO_PIXEL_COUNT * 3; i += 3) {
        neopixel_send_byte(green);
        neopixel_send_byte(red);
        neopixel_send_byte(blue);
    }
    wait_fractional(5);
}


/* ------ A/D Converter ------ */

inline void ad_converter_init() {
    ADCON2 = 0x85;
    ADCON1 = 0x07;
    ADCON0 = 0x01;
}

u16_t ad_converter_read(u8_t channel) {
    ADCON0 = (u8_t) (channel << 2) | 0x01;
    for (u8_t i = 0; i < 3; i++); // Wait a we bit
    GODONE = 1;
    while (GODONE); // Waits for conversion to finish
    return ADRES;
}


/* ------ Serial ------ */

void serial_init() {
    // Turn on SCI interrupts at 9600 baud
    TRISC |= 0xC0;
    TXIE = 0;
    RCIE = 1;
    BRGH = 1;
    BRG16 = 1;
    SYNC = 0;
    SPBRG = 255;
    TXSTA = 0x22;
    RCSTA = 0x90;
}

void serial_append(u8_t character) {
    while (!TRMT);
    TXREG = character;
}

void serial_append_int(i32_t integer, u8_t digits, u8_t decimal_digits) {
    u8_t array[10], i;

    if (integer < 0) {
        serial_append('-');
        integer = -integer;
    }

    for (i = 0; i < 10; i++) {
        array[i] = integer % 10;
        integer = integer / 10;
    }

    for (i = digits; i > 0; i--) {
        if (i == decimal_digits) serial_append('.');
        serial_append(array[i - 1] + '0');
    }
}

void serial_append_all(u8_t *string) {
    u8_t *ptr = string;
    while (*ptr) {
        serial_append(*ptr);
        ptr++;
    }
}

void serial_newline() {
    serial_append(0x0D); // Carriage Return
    serial_append(0x0A); // Line Feed
}
