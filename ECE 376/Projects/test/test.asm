#include <p18f4620.inc> 

    org 0x800
    movlw 0xFF
    movwf TRISB
    clrf  TRISC
    clrf  PORTC
    movlw 0x0F
    movwf ADCON1

Loop1:
    movlw  0
    cpfseq PORTB
    goto   Loop1
Loop2:
    btfsc  PORTB, 0
    goto   Six
    btfsc  PORTB, 1
    goto   Eight
Sixteen:
    incf   PORTC, F  ; Increment
    movlw  16
    cpfslt PORTC
    goto   Loop1      ; Less than 16
    subwf  PORTC, F   ; More than 16
    goto   Loop1
Six:
    incf   PORTC, F  ; Increment
    movlw  6
    cpfslt PORTC
    goto   Loop1      ; Less than 6
    subwf  PORTC, F   ; More than 6
    goto   Loop1
Eight:
    incf   PORTC, F  ; Increment
    movlw  8
    cpfslt PORTC
    goto   Loop1      ; Less than 8
    subwf  PORTC, F   ; More than 8
    goto   Loop1

    end
