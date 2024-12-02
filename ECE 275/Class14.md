# Class 14

#### Maxterm K-Maps

F(A, B, C) = πM(0,3,6,7)

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | 0   |     | 0   |     |
| **1** |     |     | 0   | 0   |

F = (A + B + C) * (B' + C') * (A' + B')

---

F(A, B, C, D) = πM(3, 5, 7, 8, 10, 11, 12, 13)

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     |     | 0   |     |
| **01** |     | 0   | 0   |     |
| **11** | 0   | 0   |     |     |
| **10** | 0   |     | 0   | 0   |

F = (A' + C + D) * (B' + C + D') * (A + C' + D') * (A' + B + C')

Same table but different maps

F = (A' + B' + C) * (A + B' + D') * (A' + B + D) * (B + C' + D')

Solution is the same

---
## 5 Variable K-map

F(A, B, C, D, E)

Imagine 2 planes in 3D space on top of each other
Pair in the 3rd dimension as well

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     |     | 0   |     |
| **01** |     | 0   | 0   |     |
| **11** | 0   | 0   |     |     |
| **10** | 0   |     | 0   | 0   |
E == 0 ^

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     |     | 0   |     |
| **01** |     | 0   | 0   |     |
| **11** | 0   | 0   |     |     |
| **10** | 0   |     | 0   | 0   |
E == 1 ^

---
### 5 point question on exam:

Use:
- **Implicants** (I) - Maxterms/Minterms on K-Map
- **Prime Implicants** (PI) - All possible largest group of 1's
- **Essential Prime Implicants** (EPI) - Subgroups that cover at least one Minterm that can't be covered by any other Minterm

| A\BC  | 00    | 01      | 11    | 10  |
| ----- | ----- | ------- | ----- | --- |
| **0** | ~~1~~ | *~~1~~* |       |     |
| **1** |       | ***1*** | **1** |     |
Stryke = Group 1
Italic = Group 2
Bold = Group 3

I = 4 (How many)
PI = 1, 2, 3 (Which groups are PIs)
EPI = 1, 3 (Which groups contain EPIs) - Always a part of the final equation

---
F= ∑m(1, 5, 6, 7, 11, 12, 13, 15)

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     | 1   |     |     |
| **01** |     | 1   | 1   | 1   |
| **11** | 1   | 1   | 1   |     |
| **10** |     |     | 1   |     |
Groups:
1. ∑m(5,7,13,15)
2. ∑m(1,5)
3. ∑m(12,13)
4. ∑m(11,15)
5. ∑m(6,7)

\# of I = 8
PIs = 1, 2, 3, 4, 5
EPIs = 2, 3, 4, 5

## Quine-McClusky Method
#### Will be in exam for 15 points

F =  ∑m(0, 1, 2, 5, 6, 7, 8, 10, 14)

Step 1

Group 0:  0 0 0 0 
Group 1: 1 2 8
Group 2:

|         | Column 1 |     |     |     |     |     |
| ------- | -------- | --- | --- | --- | --- | --- |
| Group 0 | 0        | 0   | 0   | 0   | 0   | ✓   |
| Group 1 | 1        | 0   | 0   | 0   | 1   | ✓   |
|         | 2        | 0   | 0   | 1   | 0   | ✓   |
|         | 8        | 1   | 0   | 0   | 0   | ✓   |
| Group 2 | 5        | 0   | 1   | 0   | 1   | ✓   |
|         | 6        | 0   | 1   | 1   | 0   | ✓   |
|         | 10       | 1   | 0   | 1   | 0   | ✓   |
| Group 3 | 7        | 0   | 1   | 1   | 1   | ✓   |
|         | 14       | 1   | 1   | 1   | 0   | ✓   |

Can only have one bit flip between adjacent groups for all combinations

|           | Column 2 |     |     |     |     |     |
| --------- | -------- | --- | --- | --- | --- | --- |
| Group 0&1 | **0, 1**     | **0**   | **0**   | **0**   | **_**   |     |
|           | 0, 2     | 0   | 0   | _   | 0   | ✓   |
|           | 0, 8     | _   | 0   | 0   | 0   | ✓   |
| Group 1&2 | **1, 5**     | **0**   | **_**   | **0**   | **1**   |     |
|           | 2, 6     | 0   | _   | 1   | 0   | ✓   |
|           | 2, 10    | _   | 0   | 1   | 0   | ✓   |
|           | 8, 10    | 1   | 0   | _   | 0   | ✓   |
| Group 2&3 | **5, 7**     | **0**   | **1**   | **_**   | **1**   |     |
|           | **6, 7**     | **0**   | **1**   | **1**   | **_**   |     |
|           | 6, 14    | _   | 1   | 1   | 0   | ✓   |
|           | 10, 14   | 1   | _   | 1   | 0   | ✓   |

Do the process again and make sure the dashes align

| Column 3        |       |       |       |       |                        |
| --------------- | ----- | ----- | ----- | ----- | ---------------------- |
| **0, 2, 8, 10**     | **_**     | **0**     | **_**     | **0**     |                        |
| ~~0, 8, 2, 10~~ | ~~_~~ | ~~0~~ | ~~_~~ | ~~0~~ | Same as prev so ignore |
| **2, 6, 10, 14**    | **_**     | **_**     | **1**     | **0**     |                        |
Bold = Prime Implicants

###### Prime Implicant Chart

|                              0                   | 2       5   | 6   | 7   | 8     | 10  | 14    |
| -------------- | ----- | ----- | --- | --- | --- | ----- | ----- | --- | ----- |
| 0,1: A ~~X~~        ~~X~~      |             |     |     |       |     |       |
| 1,5: A'C'D            ~~X *X*  |         X   |     |     |       |     |       |
| 5,7: A'BD                 *X* X  ~~X~~   X   |     | X   |       |     |       |
| 6,7: A'BC                      |     | ~~X~~    ~X~~   | X   |       |     |       |
| 0,2,8,10: B'D' |  ~~           | ~~X~~           |     |     | **X** | ~~X~~   |       |
| 2,6,10,14: C                   | ~~X~~   |       | ~~X~~   |     |       | ~~X~~   | **X** |

Essential Prime Implicants have only one X in the column
Bold = EPIs

Cross out all columns that have X's in the same row as EPIs
Cross out all X's till you have all columns and rows covered

F = B'D' + CD' + A'C'D + A'BD

---
