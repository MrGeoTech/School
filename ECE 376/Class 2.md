PIC is a Harvard Architecture chip. Aka, separate program, data, and stack, memory.

In the pic, program memory is 16 bit, data memory is 8 bit, and stack memory is 15 bit.

Program Memory: 16 bit -> 0-32767
Data Memory: 8 bit -> 0-3968
Stack Memory: 15 bit -> 0-31

Only 32k of ROM

RAM is split into banks of 4096 bytes
Don't have to worry about in this class as there is only one bank

Stack is only 31 levels deep.
Recursion is not allowed

Clock is at 10MHz
One clock per instruction
Two clocks if the instruction is a jump

PIC has one register, named `W`
On the PIC, a Word is 16 bits