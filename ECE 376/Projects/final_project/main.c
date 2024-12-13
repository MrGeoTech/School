#include "piclib.h"

u8_t current_hr = 0;
u8_t display_on = 1;

void incTemp(u16_t amount) {
    reverse_full(&PORTC, 200 * amount, 0);
}

void decTemp(u16_t amount) {
    rotate_full(&PORTC, 200 * amount, 0);
}

void resetTMR0() {
    TMR0H = 0x92; // 2^24 - 28125 = 16749091 = 0x9223
    TMR0L = 0x23;
}

void incrementCurrentHR() {
    current_hr++;

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

void __interrupt() int_handler() {
    if (TMR2IF) {
        PORTB = 0x10;
        PORTB = 0x00;
        TMR2IF = 0;
    } else if (TMR0IF) {
        incrementCurrentHR();
        TMR0IF = 0;
    }
}

// App that controls my thermostat based on time.
int main() {
    TRISA = 0x00;
    TRISB = 0xE0;
    TRISC = 0xFF;

    // CLOCK -> MS
    T2CON = 0xFF; // 1:16, Enable, PS = 5
    PR2 = 125; // 16 * 5 * 125 = 10,000
    TMR2IE = 1;
    TMR2IP = 1;

    // MS -> HR
    T0COM = 0xAE; // Enable, 16-bit, Pin Triggered, Prescaller Assigned, 1:128
    resetTMR0();
    TMR0IE = 1;
    TMR0IP = 1;

    PIE = 1;
    GIE = 1;

    while (1) {
        if (PORTB & (1 << 7)) { // RB7
            display_on = !display_on;
            while (PORTB & 0x80);
            wait(1);
        }

        // Send full instructions incase an interrupt happens mid-instruction
        if (display_on) {
            lcd_send(CLEAR);
            lcd_send(CONTROL_ON_NOCURSOR);
            lcd_append_all("Current hour: ");
            lcd_goto(1, 0);
            lcd_append_int(current_hr, 2, 0);
        } else {
            lcd_send(CLEAR);
            lcd_send(CONTROL_OFF_NOCURSOR);
        }

        if (PORTB & (1 << 6)) { // RB6
            current_hr = 0;
            TMR2 = 0;
            resetTMR0();
            while (PORTB & 0x40);
            wait(1);
        }

        if (PORTB & (1 << 5)) { // RB5
            incrementCurrentHR();
            while (PORTB & 0x40);
            wait(1);
        }
    }
}
