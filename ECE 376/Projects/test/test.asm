#include <p18f4620.inc>
    
    ; Program
    org 0x800
    
    movlw 0xFF
    clrf  TRISA
    movwf TRISB
    clrf  TRISC
    clrf  TRISD

    clrf  PORTC
    clrf  PORTD

GameLoop:
    movlw  0x00
    cpfseq PORTB
    goto   Input
    incf   PORTA, W
    andlw  0x0F
    movwf  PORTA
    goto   GameLoop
Input:
    movlw  3
    cpfseq PORTA
    goto   Button1
    movf   PORTC, W
    addlw  3
    movwf  PORTC
    goto   Wait
Button1:
    btfss  PORTB, 0
    incf   PORTC
    incf   PORTC
Wait:
    movlw  0x00
    cpfseq PORTB
    goto   Wait
    goto   GameLoop
    
    end
