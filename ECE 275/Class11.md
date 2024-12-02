# Class 11

```vhdl
-- FILE HA.vhd
library ieee;
use ieee.std_logic_1164.all;

entity HA is
	port (A, B    : in  std_logic;
	      S, Cout : out std_logic);
end;

architecture arch of HA is
begin
	S    <= A xor B;
	Cout <= A and B;
end;
```

```vhdl
-- FILE FA.vhd
library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port (A, B, Cin : in  std_logic;
	      S, Cout   : out std_logic);
end;

architecture arch of FA is
begin
	S    <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and (A xor B));
end;
```

```vhdl
-- FILE RCA.vhd
library ieee;
use ieee.std_logic_1164.all;

entity RCA is
	port (A, B : in  std_logic_vector(3 downto 0);
		  F    : out std_logic_vector(4 downto 0));
end;

architecture arch of RCA is
component HA is
	port (A, B    : in  std_logic;
	      S, Cout : out std_logic);
end component;
component FA is
	port (A, B, Cin : in  std_logic;
	      S, Cout   : out std_logic);
end component;
signal C1, C2, C3 : std_logic;
begin
	HA_0 : HA port map (A(0), B(0),     F(0), C1);
	FA_1 : FA port map (A(1), B(1), C1, F(1), C2);
	FA_2 : FA port map (A(2), B(2), C2, F(2), C3);
	FA_3 : FA port map (A(3), B(3), C3, F(3), Cout);
end;
```

## More Boolean Simplification

#### SOP : Sum of Products
**Standard SOP**
F(A, B, C) = A'B + AC
**Canonical SOP**
F(A, B, C) = A'B * 1 + AC * 1
A'B(C + C') + AC(B + B')
A'BC + A'BC' + ABC + AB'C
**Minterms** - Consider the ones

| A | B | C | F | Minterm |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | A'B'C' = m0 |
| 0 | 0 | 1 | 0 | A'B'C = m1 |
| 0 | 1 | 0 | 1 | A'BC' = m2 |
| 0 | 1 | 1 | 1 | A'BC = m3 |
| 1 | 0 | 0 | 0 | AB'C' = m4 |
| 1 | 0 | 1 | 1 | AB'C = m5 |
| 1 | 1 | 0 | 0 | ABC' = m6 |
| 1 | 1 | 1 | 1 | ABC = m7 |
F(A, B, C) = m3 + m2 + m7 + m5
F(A, B, C) = ∑m(2, 3, 5, 7)

**K-maps**
#### POS: Product of Sums
**Standard POS**
F(A, B, C) = (A + B') * (A + C)
**Canonical POS**
F(A, B, C) = (A + B' + 0) * (A + C + 0)
(A + B' + CC') * (A + C + BB')
(A + B' + C) * (A + B' + C') * (A + C + B) * (A + C +B')
**Maxterms** - Consider the zeros

| A | B | C | F | Maxterm |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | `A + B + C` = M0 |
| 0 | 0 | 1 | 1 | `A + B + C'` = M1 |
| 0 | 1 | 0 | 0 | `A + B' + C` = M2 |
| 0 | 1 | 1 | 0 | `A + B' + C'` = M3 |
| 1 | 0 | 0 | 1 | `A' + B + C` = M4 |
| 1 | 0 | 1 | 1 | `A' + B + C'` = M5 |
| 1 | 1 | 0 | 1 | `A' + B' + C` = M6 |
| 1 | 1 | 1 | 1 | `A' + B' + C'` = M7 |
F(A, B, C) = M0 * M2 * M3
F(A, B, C) = πM(0,2,3)
