# Assembly

CISC vs RISC

CISC: Complex Instruction Set Computing
- Many instructions
- Instructions do many things

RISC: Reduced Instruction Set Computing
- Small amount of instructions
- Instructions are usually faster

PIC (RISC) has 75 instructions

#### Converting C to ASM
C:
`A = 5`
ASM:
```asm
movlw 5
movwf A
```

C:
`if (A == B) X = 10;`
ASM:
```asm
movf    A, W
cpfseq  B
goto    End
movlw   10
movwf   X
End:    nop
```

C:
`for (i = 1; i < 10; i++);`
ASM:
```asm
	movlw   1
	movwf   i
Loop:
	incf    i, F
	movlw   10
	cpfslt  i
	goto    End
	goto    Loop
End:
	nop
```

There is a status register that hold information about the previous operation, such as if the result was negative, equal to zero, e.g.

---
**Program starts at `0x800`**

### Compiling programs
`.lst` file: Contains the assembly for the program
`.hex` file: Contains machine code

---