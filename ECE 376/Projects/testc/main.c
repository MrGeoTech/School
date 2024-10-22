#pragma warning disable 520,1385
#include "piclib.h"

int main() {
    ad_converter_init();
    serial_init();
    serial_newline();

    while (1) {
        u16_t value = ad_converter_read(PORTA_1);
        serial_append_int(value, 4, 0);
        serial_newline();
    }
    return 0;
}
