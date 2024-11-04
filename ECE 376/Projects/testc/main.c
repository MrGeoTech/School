#pragma warning disable 520,1385,1311,1510,1518,2053
#include "piclib.h"

i32_t time;
u8_t running;

void __interrupt() timer2_interrupt() {
    time--;
    if (PORTB) running = 0;
    if (time == 0) PORTA = 0xFF;
    timer2_end();
}

int main() {
    time = 0;
    running = 0;

    ADCON1 = 15;

    TRISA = 0x00;
    PORTA = 0x00;

    TRISB = 0x01;
    PORTB = 0x00;

    timer2_init(0, 250, 1);
    lcd_init();

    lcd_send(CLEAR);
    lcd_append_all("Press Button 0  to Start!");

    while (!PORTB) time++;
    while (PORTB) time++;
    // Wait 100ms for denoising
    wait(100);

    time %= 40000;
    time += 30000;

    running = 1;
    timers_enable();
    lcd_send(CLEAR);
    lcd_append_all("Current time:");

    while (running) {
        lcd_goto(1, 0);
        lcd_append_int(time, 5, 4);
    }

    lcd_send(CLEAR);
    lcd_append_all("Time delta:");
    lcd_goto(1, 0);
    lcd_append_int(-time, 5, 4);

    // Get another uniqe button push
    while (PORTB);
    while (!PORTB);
    while (PORTB);

    return 0;
}
