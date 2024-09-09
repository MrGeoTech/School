#include <p18f4620.inc> 

    org 0x800
    movlw 0xFF
    movwf TRISB
    clrf  TRISC
    clrf  PORTC
    movlw 0x0F
    movwf ADCON1

    movf   B, W
    cpfsgt A
    bra    2
    incf   C, F
    cpfslt A
    bra    2
    decf   C, F