#pragma warning disable 520,1385,1311,1510,1518,2053
#include "piclib.h"

#define E4 15169
#define E4_LOW 15184
#define F4 14317

u8_t playing;
u16_t note;

void __interrupt() interrupt_handler() {
    if (CCP1IF) {
        if (playing) RC2 ^= 1;
        CCPR1 += note;
        CCP1IF = 0;
    }
}

void play(u16_t new_note, u16_t milliseconds) {
    note = new_note;
    playing = 1;
    wait(milliseconds);
    playing = 0;
}

int main() {
    TRISB = 0x03;
    PORTB = 0x00;

    TRISC = 0x00;
    PORTC = 0x00;

    TMR1CS = 0;
    T1CON = 0x81;
    TMR1ON = 1;
    TMR1IE = 1;
    TMR1IP = 1;

    CCP1CON = 0x0A;
    CCP1IE = 1;
    CCPR1 = 0;

    timers_enable();
    u8_t right = 0;
    u8_t wrong = 0;
    while (1) {
        while (!RB0);
        while (RB0);

        u8_t is_same = TMR1 & 1;

        play(E4, 500);
        wait(200);
        if (is_same)
            play(E4, 500);
        else
            play(E4_LOW, 500);
        wait(1000);

        while (!PORTB);
        if ((RB0 && is_same) || (RB1 && !is_same))
            right++;
        else
            wrong++;
        while (PORTB);

        lcd_append_all("Right: ");
        lcd_append_int(right, 1, 0);
        lcd_goto(1, 0);
        lcd_append_all("Wrong: ");
        lcd_append_int(wrong, 1, 0);
    }
}
