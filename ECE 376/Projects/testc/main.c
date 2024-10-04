#pragma warning disable 520,1385,2053

#include "piclib.h"

int main() {
    unsigned char colors[NEO_PIXEL_COUNT * 3] = {
        255, 255, 255,
        255, 255, 255,
        255, 255, 255,
        255, 255, 255,
        255, 255, 255,
        255, 255, 255
    };

    neopixel_send(colors);
    return 0;
}
