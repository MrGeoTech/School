#include <xc.h>
// Used in the wait function to measure time
// You can set your own to make sure your PIC is perfectly timed
// To figure out the value you should use for your PIC, you can
// either use an occiliscope or hook up a speaker and adjust the
// value until if waiting 1 ms, you get 500 Hz
#ifndef LOOPS_PER_MS
#define LOOPS_PER_MS 1104
#endif

/* ------ Time ------ */

// Waits for the specified time in milliseconds
void wait(unsigned int milliseconds);
// Waits for LOOPS_PER_MS >> `shift` loops
void wait_fractional(unsigned char shift);

/* ------ LCD ------ */

// An enum that contains all commands you can send to the LCD screen
enum LCDCommand {
    CLEAR = 0x01,
    HOME = 0x02,
    MODE_DECREMENT_NORMAL = 0x04,
    MODE_DECREMENT_SHIFTED,
    MODE_INCREMENT_NORMAL,
    MODE_INCREMENT_SHIFTED,
    CONTROL_OFF_NOCURSOR = 0x08,
    CONTROL_OFF_CURSOR_SOLID = 0x0A,
    CONTROL_OFF_CURSOR_BLINK,
    CONTROL_ON_NOCURSOR = 0x0C,
    CONTROL_ON_CURSOR_SOLID = 0x0E,
    CONTROL_ON_CURSOR_BLINK,
    SHIFT_CURSOR_RIGHT = 0x10,
    SHIFT_CURSOR_LEFT = 0x14,
    SHIFT_DISPLAY_RIGHT = 0x18,
    SHIFT_DISPLAY_LEFT = 0x1C,
    SET_4BIT_1LINE_5X8FONT = 0x20,
    SET_4BIT_1LINE_5X11FONT = 0x24,
    SET_4BIT_2LINE_5X8FONT = 0x28,
    SET_4BIT_2LINE_5X11FONT = 0x2C,
    SET_8BIT_1LINE_5X8FONT = 0x30,
    SET_8BIT_1LINE_5X11FONT = 0x34,
    SET_8BIT_2LINE_5X8FONT = 0x38,
    SET_8BIT_2LINE_5X11FONT = 0x3C,
};

// Initializes the LCD screen in 16x4 mode
inline void lcd_init();
// Sends an command to the LCD screen
void lcd_send(unsigned char command);
// Moves the LCD cursor to the new row and column position
void lcd_goto(unsigned char row, unsigned char column);
// Appends the character to the LCD screen and moves the cursor over one
void lcd_append(unsigned char character);
// Writes an integer out to the LCD screen
void lcd_append_int(long int integer, unsigned char digits, unsigned char decimal_digits);
// Writes out a string to the LCD.
// This will automatically wrap at `len > 16` and will cut off anything over 32 characters
void lcd_append_all(char *string);

/* ------ Keypad ------ */

// Reads the integer value from the keypad
// If there is no button being push, it will return 0
// Otherwise, it will return the character being pushed
// Priority is given in the order 1234567890#*
char read_keypad(volatile unsigned char *port);

/* ------ Stepper Motor ------ */

// Rotates the motor `steps` steps
// There are 200 steps to a full rotation
void rotate_full(volatile unsigned char *port, unsigned int steps, unsigned int ms_per_step);
// Roates the motor `steps` half steps
// There are 400 half-steps for a full rotation
void rotate_half(volatile unsigned char *port, unsigned int steps, unsigned int ms_per_step);
// Rotates the motor `steps` steps backwards
// There are 200 steps to a full rotation
void reverse_full(volatile unsigned char *port, unsigned int steps, unsigned int ms_per_step);
// Roates the motor `steps` half steps backwards
// There are 400 half-steps for a full rotation
void reverse_half(volatile unsigned char *port, unsigned int steps, unsigned int ms_per_step);

/* ------ Neo-Pixel ------ */

#ifndef NEO_PIXEL_COUNT
#define NEO_PIXEL_COUNT 8
#endif

#if NEO_PIXEL_COUNT > 255
#error Neopixel count too high!
#endif

// Sends the array `colors` out on PORTD pin 0 (since it's not being used by the LCD)
// `colors` must be an array of at least `NEO_PIXEL_COUNT * 3` bytes
void neopixel_send(unsigned char *colors);
// Sets all the neopixels to the given RGB values
void neopixel_set(unsigned char red, unsigned char green, unsigned char blue);