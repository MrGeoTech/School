#pragma warning disable 520,1385
#include "piclib.h"

int main() {
    TRISB = 0x01;
    lcd_init();
    serial_init();

    i8_t DIE = 0, X = 0;
    while(1) {
        while(!(PORTB & 0x01));
        while(PORTB & 0x01) {
            DIE = (DIE + 1) % 6;
            X = (X + 1) % 7;
        }
        DIE = DIE + 1;
        if(X == 0) DIE = 6;

        lcd_goto(1,0); 
        lcd_append_int(DIE, 1, 0);
        serial_append_int(DIE, 1, 0);
        serial_append(',');
    }

    return 0;
}
