# Class 7
```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity circuit is
	port (A, B, C : in  std_logic;
		  F, G    : out std_logic);
end;

architecture arch of circuit is
signal temp1, temp2 : std_logic;
begin
	temp1 <= not A;
	temp2 <= A and C;
	F <= temp1 and B;
	G <= not temp2;
end;
```

### Binary Addition

`0` + `0` = `0`
`0` + `1` = `1`
`1` + `0` = `1`
`1` + `1` = `0` & carry `1`

##### Example 1:
Base 10: 11 + 6 = 17
Base 2: `1011` + `110` = `10001` == 17

---
##### Example 2:
Base 2: `1011` + `1111` = `11010`
Base 10: 11 + 15 = 26

### Binary Subtraction

`0` - `0` = `0`
`1` - `0` = `1`
`1` - `1` = `0`
`0` - `1` = `1` + borrow `1`

##### Example 1:
Base 2:
```
     1
     1
  1110
- 0101
-------
  1001
```
Base 10: 13 - 5 = 9

---
##### Example 2:
Base 2:
```
     1
     1
  11101
- 10011
--------
  01010
```
Base 10: 29 - 19 = 10

---
##### Example 3:
Base 2: `10000` - `00011`
```
   1111
   0001
  00000
- 00011
--------
  01101
```
Base 10: 16 - 3 = 13

### Binary Multiplication

`0` * `0` = `0`
`0` * `1` = `0`
`1` * `0` = `0`
`1` * `1` = `1`

##### Example 1:
Base 2: `1011` * `1100`
```
    1011
   *1100
--------
    0000
   0000x
  1011xx
 1011xxx
--------
10000100
```
Base 10: 11 * 12 = 132

---
##### Example 2:
Base 2: `1111` * `1101`
```
    1111
   *1101
--------
    1
  101111
  10000x
101111xx
 1111xxx
--------
11000011
```
Base 10: 15 * 13 = 195

### Negative Numbers

3 ways to represent
1. Sign and Magnitude
2. 1's Complement
3. 2's Complement

---
##### Sign and Magnitude
Insert sign bit at the front

If the sign bit is 0 => Positive and 1 => Negative

  61 => `0111101`
-61 => `1111101`

Why it doesn't work:
Base 10: 5 - 5 = 0
Base 2:
```
 0101
 1101
------
10010 NOT ZERO!
```

---
##### 1's Complement
Just flip all the bits => -a = not a

| N |  | N |  |
| ---- | ---- | ---- | ---- |
| +0 | `0000` | -0 | `1111` |
| +1 | `0001` | -1 | `1110` |
| +2 | `0010` | -2 | `1101` |
| +3 | `0011` | -3 | `1100` |
| +4 | `0100` | -4 | `1011` |
| +5 | `0101` | -5 | `1010` |
| +6 | `0110` | -6 | `1001` |
| +7 | `0111` | -7 | `1000` |
23  => `010111`
-23 => `101000`

Base 10: 5 - 5 = 0
Base 2:
```
0101
1010
----
1111 == -0 (Negative Zero?)
```
