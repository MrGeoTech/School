#pragma warning disable 520,1385
#include "piclib.h"

char correct_keycode[4] = { '0', '0', '0', '0' };

void get_correct_keycode();
void change_keycode();

int main() {
    lcd_init();

    lcd_send(CONTROL_ON_NOCURSOR);
    lcd_append_all("Initializing... Please wait");
    lcd_goto(0, 0);

    // Make sure the door is locked
    rotate_full(&PORTC, 1000, 0);

    lcd_send(CLEAR);
    
    while (1) {
        get_correct_keycode();

        lcd_send(CONTROL_ON_NOCURSOR);
        lcd_send(CLEAR);
        lcd_append_all("Correct!        Opening now...");

        rotate_full(&PORTC, 100, 0);
        wait(2000);
        reverse_full(&PORTC, 100, 0);

        if (read_keypad(&PORTC) != '#') continue;
        change_keycode();
    }

    return 0;
}

void get_user_input(char *code) {
    unsigned char length = 0;

    while (length < 4) {
        char key = 0;
        while (!key) key = read_keypad(&PORTC);
        while (read_keypad(&PORTC));

        if (key == '*') {
            if (length) length--;
            lcd_goto(1, length);
            lcd_append(' ');
            lcd_goto(1, length);
            code[length] = 0;
        } else {
            if (length > 3) continue;
            lcd_append(key);
            code[length] = key;
            length++;
        }
    }
}

// Blocks until the user inputs the correct code
void get_correct_keycode() {
    char current_keycode[4];

    while (1) { // In any other context, I would make this a for loop but since speed is king, infinite loops babbbbyyyyyy!!
        lcd_send(CONTROL_ON_CURSOR_BLINK);
        lcd_send(CLEAR);
        lcd_append_all("Enter code:");
        lcd_goto(1, 0);
        while (read_keypad(&PORTC));
        wait(500);

        get_user_input(current_keycode);

        if (
            current_keycode[0] == correct_keycode[0] &&
            current_keycode[1] == correct_keycode[1] &&
            current_keycode[2] == correct_keycode[2] &&
            current_keycode[3] == correct_keycode[3]
        ) break;

        lcd_send(CLEAR);
        lcd_send(CONTROL_ON_NOCURSOR);
        lcd_append_all("Incorrect code! Try again");
        wait(2000);
    }
}

void change_keycode() {
    char new_keycode[4];

    while (1) {
        lcd_send(CLEAR);
        lcd_append_all("Enter new code:");
        lcd_send(CONTROL_ON_CURSOR_BLINK);
        lcd_goto(1, 0);

        get_user_input(new_keycode);

        lcd_send(CLEAR);
        lcd_append_all("Confirm code:");
        lcd_goto(1, 0);

        char confirm_keycode[4];
        get_user_input(confirm_keycode);

        if (
            new_keycode[0] == confirm_keycode[0] && 
            new_keycode[1] == confirm_keycode[1] && 
            new_keycode[2] == confirm_keycode[2] && 
            new_keycode[3] == confirm_keycode[3]
        ) break;

        lcd_send(CLEAR);
        lcd_send(CONTROL_ON_NOCURSOR);
        lcd_append_all("Codes mismatch! Try again!");
        wait(2000);
    }

    correct_keycode[0] = new_keycode[0];
    correct_keycode[1] = new_keycode[1];
    correct_keycode[2] = new_keycode[2];
    correct_keycode[3] = new_keycode[3];
}
