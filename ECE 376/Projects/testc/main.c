#include "piclib.h"

u8_t current_hr = 0;
u8_t display_on = 1;

void incTemp(u16_t amount) {
    reverse_full(&PORTC, 20 * amount, 0);
}

void decTemp(u16_t amount) {
    rotate_full(&PORTC, 20 * amount, 0);
}

void resetTMR0() {
    TMR0H = 0xFE; // 2^16 - 1000 = 0xFC18
    TMR0L = 0x18;
    //TMR0H = 0x92; // 2^16 - 28125 = 37411 = 0x9223
    //TMR0L = 0x23;
}

void __interrupt() int_handler() {
    if (TMR2IF) {
        // Toggle RB4
        PORTB ^= 0x10;
        wait_fractional(2);
        PORTB ^= 0x10;
        TMR2IF = 0;
    } else if (TMR0IF) {
        current_hr++;
        resetTMR0();
        TMR0IF = 0;
    }
}

// App that controls my thermostat based on time.
int main() {
    TRISA = 0x10;
    TRISB = 0xE0;
    TRISC = 0xFF;

    // CLOCK -> MS
    T2CON = 0xFF; // 1:16, Enable, PS = 5
    PR2 = 125; // 16 * 5 * 125 = 10,000
    TMR2IE = 1;
    TMR2IP = 1;

    // MS -> HR
    T0CON = 0xAE; // Enable, 16-bit, Pin Triggered, Prescaller Assigned, 1:128
    resetTMR0();
    TMR0IE = 1;
    TMR0IP = 1;

    PEIE = 1;
    GIE = 1;

    u8_t prev_hr = current_hr - 1;
    lcd_init();
    lcd_append_all("Current hour: ");

    while (1) {
        if (PORTB & (1 << 7)) { // RB7
            display_on = !display_on;
            lcd_send(CLEAR);
            if (display_on) {
                lcd_send(CONTROL_ON_NOCURSOR);
                lcd_append_all("Current hour: ");
            } else {
                lcd_send(CONTROL_OFF_NOCURSOR);
            }
            while (PORTB & 0x80);
            wait(100); // Poor mans debouncer
        }

        // Send full instructions incase an interrupt happens mid-instruction
        if (display_on && prev_hr != current_hr) {
            lcd_goto(1, 0);
            lcd_append_int(current_hr, 2, 0);
            prev_hr = current_hr;

            // Move motor "asynchronous" to the timing
            if (current_hr >= 24) {
                current_hr = 0;
            } else if (current_hr == 6) {
                incTemp(15);
            } else if (current_hr == 9) {
                decTemp(3);
            } else if (current_hr == 22) {
                decTemp(12);
            }
        }

        if (PORTB & (1 << 6)) { // RB6
            current_hr = 0;
            TMR2 = 0;
            resetTMR0();
            while (PORTB & 0x40);
            wait(100); // Poor mans debouncer
        }

        if (PORTB & (1 << 5)) { // RB5
            current_hr++;
            while (PORTB & 0x20);
            wait(100); // Poor mans debouncer
        }

        wait(1);
    }
}
