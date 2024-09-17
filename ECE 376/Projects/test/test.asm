#include <p18f4620.inc>
    
; Variables
PREV_STATE       EQU 1
PREV_STATE_LEFT  EQU 2
PREV_STATE_RIGHT EQU 3

    ; Program
    org 0x800
    
    movlw 0xFF
    movwf TRISB
    clrf  TRISC
    clrf  TRISD

    movwf PORTC
    clrf  PORTD

    movlw 0x0F
    movwf ADCON1

Start:
    movff  PORTB, PREV_STATE
    movlw  0x00
    cpfsgt PREV_STATE
    goto   Start
WhileDown:
    cpfsgt PORTB
    goto   UpdateOutput
    goto   WhileDown
UpdateOutput:
    movff  PREV_STATE, PREV_STATE_LEFT
    movff  PREV_STATE, PREV_STATE_RIGHT
    rlcf   PREV_STATE_LEFT, F
    rrcf   PREV_STATE_RIGHT, F ; Rotate PREV_STATE both left and right
    movf   PREV_STATE, W
    iorwf  PREV_STATE_LEFT, W
    iorwf  PREV_STATE_RIGHT, W ; Logical OR all PREV_STATEs together
    xorwf  PORTC, F            ; Logical XOR PORTC with W (the mask)
    incf   PORTD
    movlw  0x00
    cpfseq PORTC
    goto   Start
    
    clrf  PORTC
    clrf  PORTD
    end
