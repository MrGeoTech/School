#pragma warning disable 520,1385
#include "piclib.h"

int main() {
    TRISA |= 0x02;
    TRISB = 0xFF;
    lcd_init();
    lcd_send(CONTROL_ON_NOCURSOR);
    ad_converter_init();
    serial_init();

    while (1) {
        lcd_send(CLEAR);
        lcd_append_all("Press any buttonto start!");
        while (!PORTB);
        lcd_send(CLEAR);
        lcd_append_all("Started!");

        serial_newline();
        PORTA = 0x00;
        for (u8_t i = 0; i < 1000; i++) {
            serial_append(ad_converter_read(PORTA_1) >> 2);
            serial_append(',');
            wait(1);
        }
        PORTA = 0x01;
        serial_newline();
    }

    return 0;
}
