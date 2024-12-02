# Class 4

- SSI - Small Scale Integration (~50 transistors) - Logic gates
- MSI - Medium Scale Integration (50-500 transistors) - Flip Flops
- LSI - Large Scale Integration (500-50K) - Larger memory components
- VLSI - Very Large Scale Integration (500,000) - Processors Cache

### Gordon Moore (Moore's Law)

Double the amount of transistors in the same chip area over ~18 months

### IC Logic Families

- RTL - Resistor Transistor Logic
- DTL - Diode Transistor Logic
- TTL - Transistor Transistor Logic
- ECL - Emitter Coupled Logic (BJT)
- NMOS - N-Type Metal Oxide Semiconductor (MOS)
- PMOS - P-Type MOS
- CMOS - Complementory MOS - Modern devices use this

##### Characteristics

1. Fan Out - How many gates can the output drive?
	Buffer = Not gate without the not. Given 1, it outputs 1. Given 0, it outputs 0
	Buffer has a fan out of 50-70 gates
2. Propagation Delay - How long the gate takes to change after updating the input
	Usually in the order of picoseconds

|  | TTL | ECL | CMOS |
| ---- | ---- | ---- | ---- |
| Fan Out | 1-10 | 20-30 | 750 |
| PD | 1-3ons | 1-6ns | 1-210ns |
| Power | 10nW | 50mW | 0.01mW |

