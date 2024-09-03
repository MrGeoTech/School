#### Design Problems

1. Three switches (A, B, C) trigger F when at least 2 switches are on

| A | B | C | F |
| ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

F = A'BC + AB'C + ABC' + ABC + ABC + ABC
F = AB(C + C') + BC(A + A') + AC(B + B')
F = AB + BC + AC

2. Three Switches (A, B, C) trigger F when ABC >= 3

| A | B | C | F |
| ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

F = A'BC + AB'C' + AB'C + ABC' + ABC
F = A'BC + AB'C' + AB'C + AB
F = A'BC + AB' + AB
F = A'BC + A
F = A + BC

3. Three Switches (A, B, C) trigger F when decimal of ABC is evenly divisible by 2

| A | B | C | F |
| ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 0 |

F = A'B'C' + A'BC' + AB'C' + ABC'
F = C'(A'B' + A'B + AB' + AB)
F = C'(A' + A)
F = C'

## More Gates

- AND *
- OR   +
- NOT '
- XOR ⊕ u2295
- XNOR ⊙ (Equivalence Gate) u2299

#### Larger Circuits
##### Half Adder
Adds two bits

A + B = S carry C

| A | B | S | C |
| ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

S = A ⊕ B
C = AB

##### Full Adder
Adds three bits

| A | B | Cin | S | Cout |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

S = B ⊕ C