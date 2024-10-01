#pragma warning disable 520,1385
#include "lcd.h"

/**
 * I would like to just start by apologizing for the C code below
 *
 * If anyone ever asks "Why rust", just point them to this and say
 * "Count the vulnerabilities"
 */

char *messages[12] = {
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "Reply hazy. Try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict  now",
    "Don't count on  it",
    "My reply is no",
    "Outlook not so  good",
    "Very doubtful"
};

inline void lcd_print(char *ptr);
inline unsigned char get_random_number();
inline void wait_for_it();

int main() {
    // Initialize Ports
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0x00;

    LCD_Init();

    // Game loop
    while (1) {
        lcd_print("  Magic 8-Ball  Ask Your Question");
        unsigned char temp = get_random_number();
        wait_for_it();
        lcd_print(messages[temp]);
        Wait_ms(5000);
    }
}

inline void lcd_print(char *ptr) {
    LCD_Inst(0x01); // Clears

    unsigned char count = 0;
    while (*ptr) {
        // Output character
        LCD_Write(*ptr);
        Wait_ms(50); // I like the effect it give and it makes it works so it stays
        // Increment counters
        ptr++;
        count++;
        // Move to second row if out of space
        if (count == 16) LCD_Move(1, 0);
    }
}

inline unsigned char get_random_number() {
    unsigned char rand = 0;
    // One
    while (RB0 == 0) rand++;
    while (RB0 != 0) rand++;
    // Two
    while (RB0 == 0) rand++;
    while (RB0 != 0) rand++;
    // Three
    while (RB0 == 0) rand++;
    while (RB0 != 0) rand++;

    return rand % 12;
}

inline void wait_for_it() {
    LCD_Inst(0x01); // Clears
    Wait_ms(5000 / 4);
    LCD_Write('.'); // Thinking a little
    Wait_ms(5000 / 4);
    LCD_Write('.'); // Thinking a little more
    Wait_ms(5000 / 4);
    LCD_Write('.'); // Really starting to think!
    Wait_ms(5000 / 4);
}
