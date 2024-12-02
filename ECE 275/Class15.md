# Class 15

## Universal Gates

2 Universal Gates
- NAND
- NOR

You can use just NAND gates or just NOR gates to make every other gate

## NAND Examples
#### Example: Create inverter with a NAND gate

![](Images/Class15-0.png)

#### Example: Create AND using NANDs

![](Images/Class15-1.png)

#### Example: Create OR using NANDS

![](Images/Class15-2.png)

## NOR Examples

#### Example: NOT using NOR

![](Images/Class15-3.png)

#### Example: OR using NOR

![](Images/Class15-4.png)

#### Example: AND using NOR

![](Images/Class15-5.png)

## Multiplexers (Multiplexor) : Data Selector

Uses an input selector to choose which data goes through

2:1 MUX

![](Images/Class15-6.png)

When 
    `S = 0, F <= A`
    `S = 1, F <= B`

You can also have 4:1 MUX

Symbol is the same but has 2 selector bits

When
    `S = 00, F <= A`
    `S = 01, F <= B`
    `S = 10, F <= C`
    `S = 11, F <= D`

You can also have 
- 8:1 MUX with 3 select lines
- 16:1 MUX with 4 select lines
- 32:1 MUX with 5 select lines

**MUXes are universal gates**

## MUX Examples
#### Example: Inverter using 2:1 MUX

![](Images/Class15-7.png)

#### Example: AND using 2:1 MUX

![](Images/Class15-8.png)

#### Example: OR using 2:1 MUX

![](Images/Class15-9.png)

#### Example: XOR using 2:1 MUX

![](Images/Class15-10.png)

#### Example: NAND using 2:1 MUX

![](Images/Class15-11.png)

#### Example: NOR using 2:1 MUX

![](Images/Class15-12.png)

#### Design Problem: 4:1 MUX using 2:1 MUX's

![](Images/Class15-13.png)

#### Design Problem
Program the following 8:1 MUX to implement 
F = ABC + A'CD + BC'D' + AB'D
Inputs: A, A', B, B', C, C', D, D', `0`, `1`

What should be the values for the pins?

###### Step 1: Draw the truth table

| A   | B   | C   | D   | F   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 0   | 1   | 0   |
| 0   | 0   | 1   | 0   | 0   |
| 0   | 0   | 1   | 1   | 1   |
| 0   | 1   | 0   | 0   | 1   |
| 0   | 1   | 0   | 1   | 0   |
| 0   | 1   | 1   | 0   | 0   |
| 0   | 1   | 1   | 1   | 1   |
| 1   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 1   | 1   |
| 1   | 0   | 1   | 0   | 0   |
| 1   | 0   | 1   | 1   | 1   |
| 1   | 1   | 0   | 0   | 1   |
| 1   | 1   | 0   | 1   | 0   |
| 1   | 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   | 1   |
Next, figure out select lines
For simplicity, make select lines A,B,C

![](Images/Class15-14.png)

---

## Homework, XOR using NAND (4) and NOR (5)

---
#### NANDs
![](Images/Class15-15.png)

#### NORs
F = A'B + AB'
F = ((A'B)'(AB')')'
F = ((A + B')(A' + B))'
