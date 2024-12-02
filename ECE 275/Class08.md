# Class 8

### 2's Complement
1's Complement + 1
Most popular way to represent negative numbers

###### Example 1
21 => `010101` => Flip => `101010` => +1 => `101011` == 2's Complement (-21)

###### Example 2
`110011` == 51 (Unsigned) == -19 (Sign and Mag) == -12 (1's Comp) == -13 (2's Comp)

###### Example 3
Using 4-bits what is largest and smallest
- Unsigned: *0-15*
- Sign & Magnitude: *-7-7*
- 1's Complement: *-7-7*
- 2's Complement: *-8-7*

13 + 10 = Overflow (Can't represent the result given the space allowed)

#### More addition

3 + 4 = 7
`0011` + `0100` = `0111`

5 + -6 = -1
`0101` + `1010` = `1111`

-5 + 6 = 1
`1011` + `0110` = `0001`

5 + 6 = 11
`0101` + `0110` = `1011` == -5 (another overflow)

-5 + -6 = -11
`1011` + `1010` = `0101` == 5 (subtraction overflow)

---
#### Overflow Conditions
1. Add two positive numbers, but the result is negative
2. Add two negative numbers, but the result is positive

---

-19 + -6 = -25 (Make sure to sign extend) (Lengths of positive numbers must be the same)
`101101` + `111010` = `100111`

#### Binary Codes
ASCII - American Standard Code for Information Interchange

7-bits: 0 to 127
A-Z, a-z, 0-9, Special Symbols (+-%$@#)

8 bits == 1 Byte

Weighted Codes:
**BCD (Binary Coded Decimal):**
746 == `0111` + `0100` + `0110`
could be 8-4-2-1
or 6-3-1-1
....

**2-out-of-5:**
0 - `00011`
1 - `00101`
2 - `10010`
used for error checking

**Gray Code:**
0 - `0000`
1 - `0001`
2 - `0011`
only a one bit change
used for parity checkers

**Excess-3**
0 - `0011`
1 - `0100`
2 - `0101`
add 3 to the number
IEEE Floating Point Hardware
