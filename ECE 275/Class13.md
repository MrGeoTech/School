# Class 13

### K-Maps (Karnough Maps)

Allows you to simplify expressions without using the theorems

F(A, B)

Truth table

| A   | B   | F   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 1   |
| 1   | 0   | 0   |
| 1   | 0   | 0   |
F = A'B' + A'B
If you simplify using theorems, then you would find F= A'

K-map for F

| A\B   | 0   | 1   |
| ----- | --- | --- |
| **0** | 1   | 1   |
| **1** | 0   | 0   |
You can pair up the ones so you get A'

---

| A\B   | 0   | 1   |
| ----- | --- | --- |
| **0** | 1   | 1   |
| **1** | 1   | 0   |
F = A' + B'
or
F = (AB)'

---
#### 3 Variable K-Maps
(A, B, C)
**Only have one bit change**

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** |     |     |     |     |
| **1** |     |     |     |     |
Could also do this

| AB\C   | 0   | 1   |
| ------ | --- | --- |
| **00** |     |     |
| **01** |     |     |
| **11** |     |     |
| **10** |     |     |

---

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | m0  | m1  | m3  | m2  |
| **1** | m4  | m5  | m7  | m6  |

---
### Solve a problem
Truth table:

| A   | B   | C   | F   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 1   |
| 0   | 1   | 1   | 1   |
| 1   | 0   | 0   | 1   |
| 1   | 0   | 1   | 0   |
| 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 0   |

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | 0   | 0   | 1   | 1   |
| **1** | 1   | 0   | 0   | 1   |

F = AC' + A'B

---

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | 1   | 0   | 0   | 1   |
| **1** | 1   | 0   | 0   | 1   |

F = C'

---

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | 0   | 1   | 1   | 0   |
| **1** | 0   | 1   | 1   | 0   |

F = C

---

| A\BC  | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | 1   | 1   | 1   | 0   |
| **1** | 1   | 1   | 1   | 0   |
(You can have pair cross into each other)
F = B' + C

---

#### 4 Variable K-Maps

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     |     |     |     |
| **01** |     |     |     |     |
| **11** |     |     |     |     |
| **10** |     |     |     |     |

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** | m0  | m1  | m3  | m2  |
| **01** | m4  | m5  | m7  | m6  |
| **11** | m12 | m13 | m15 | m14 |
| **10** | m8  | m9  | m11 | m10 |

---

F = ∑m(1, 3, 4, 5, 10, 12, 13)

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     | 1   | 1   |     |
| **01** | 1   | 1   |     |     |
| **11** | 1   | 1   |     |     |
| **10** |     |     |     | 1   |

F = BC' + A'B'D + AB'CD'

---

F = ∑m(0, 2, 3, 5, 6, 7, 8, 10, 11, 14, 15)

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** | 1   |     | 1   | 1   |
| **01** |     | 1   | 1   | 1   |
| **11** |     |     | 1   | 1   |
| **10** | 1   |     | 1   | 1   |

F = C + A'BD + B'D'

---

F= ∑m(0, 1, 2, 3, 5, 8, 9, 10, 11, 13, 14, 15)

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** | 1   | 1   | 1   | 1   |
| **01** |     | 1   |     |     |
| **11** |     | 1   | 1   | 1   |
| **10** | 1   | 1   | 1   | 1   |

F = B' + C'D + AC

---

F= ∑m(1, 3, 5, 7, 9) + ∑d(6, 12, 13);

| AB\CD  | 00  | 01  | 11  | 10  |
| ------ | --- | --- | --- | --- |
| **00** |     | 1   | 1   |     |
| **01** |     | 1   | 1   | X   |
| **11** | X   | X   |     |     |
| **10** |     | 1   |     |     |

F = A'D + C'D
