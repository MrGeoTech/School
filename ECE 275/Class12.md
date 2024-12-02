# Class 12

### More Minterms

4 chairs
Occupied = 1
Empty = 0

F(A, B, C, D) = 1 if no adjacent chairs are empty
G(A, B, C, D) = 1 if both ends are empty
H(A, B, C, D) = 1 if at least 3 chairs are occupied
J(A, B, C, D) = 1 if there are more people sitting on the left 2 chairs than the right 2

Represent F in minterms

| A   | B   | C   | D   | F   | Minterms | G   | Minterms | H   | Minterms | J   | Minterms |
| --- | --- | --- | --- | --- | -------- | --- | -------- | --- | -------- | --- | -------- |
| 0   | 0   | 0   | 0   | 0   |          | 1   | m0       | 0   |          | 0   |          |
| 0   | 0   | 0   | 1   | 0   |          | 0   |          | 0   |          | 0   |          |
| 0   | 0   | 1   | 0   | 0   |          | 1   | m2       | 0   |          | 0   |          |
| 0   | 0   | 1   | 1   | 0   |          | 0   |          | 0   |          | 0   |          |
| 0   | 1   | 0   | 0   | 0   |          | 1   | m4       | 0   |          | 1   | m4       |
| 0   | 1   | 0   | 1   | 1   | m5       | 0   |          | 0   |          | 0   |          |
| 0   | 1   | 1   | 0   | 1   | m6       | 1   | m6       | 0   |          | 0   |          |
| 0   | 1   | 1   | 1   | 1   | m7       | 0   |          | 1   | m7       | 0   |          |
| 1   | 0   | 0   | 0   | 0   |          | 0   |          | 0   |          | 1   | m8       |
| 1   | 0   | 0   | 1   | 0   |          | 0   |          | 0   |          | 0   |          |
| 1   | 0   | 1   | 0   | 1   | m10      | 0   |          | 0   |          | 0   |          |
| 1   | 0   | 1   | 1   | 1   | m11      | 0   |          | 1   | m11      | 0   |          |
| 1   | 1   | 0   | 0   | 0   |          | 0   |          | 0   |          | 1   | m12      |
| 1   | 1   | 0   | 1   | 1   | m13      | 0   |          | 1   | m13      | 1   | m13      |
| 1   | 1   | 1   | 0   | 1   | m14      | 0   |          | 1   | m14      | 1   | m14      |
| 1   | 1   | 1   | 1   | 1   | m15      | 0   |          | 1   | m15      | 0   |          |

F(A,B,C,D) = ∑m(5,6,7,10,11,13,14,15)

### Question 2

```
  A
D   B
  C
```

F(A, B, C, D) = 1 if no adjacent chairs are empty
G(A, B, C, D) = 1 if both ends are empty
H(A, B, C, D) = 1 if at least 3 chairs are occupied
J(A, B, C, D) = 1 if there are more people sitting on the left 2 chairs than the right 2

| A | B | C | D | F | Minterms |
| ---- | ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | 0 |  |
| 0 | 0 | 0 | 1 | 0 |  |
| 0 | 0 | 1 | 0 | 0 |  |
| 0 | 0 | 1 | 1 | 0 |  |
| 0 | 1 | 0 | 0 | 0 |  |
| 0 | 1 | 0 | 1 | 1 | m5 |
| 0 | 1 | 1 | 0 | 0 |  |
| 0 | 1 | 1 | 1 | 1 | m7 |
| 1 | 0 | 0 | 0 | 0 |  |
| 1 | 0 | 0 | 1 | 0 |  |
| 1 | 0 | 1 | 0 | 1 | m10 |
| 1 | 0 | 1 | 1 | 1 | m11 |
| 1 | 1 | 0 | 0 | 0 |  |
| 1 | 1 | 0 | 1 | 1 | m13 |
| 1 | 1 | 1 | 0 | 1 | m14 |
| 1 | 1 | 1 | 1 | 1 | m15 |
### Incompletely Specified Fuctions

```
W -> +----+ -> A -> +----+
X -> | N1 | -> B -> | N2 | -> F
Y -> |    | -> C -> |    |
Z -> +----+         +----+
```

ABC cannot == 011 or 101
Called "don't cares"

| A | B | C | F |
| ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | X |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | X |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |
F = ∑m(1, 4) + ∑d(3, 5)

---

Inputs represent a BCD number
Design a circuit where F = 1 if decimal value
represented by ABCD is exactly divisible by 3
aka 0,3,6,9

| A | B | C | D | F |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | 1 |
| 0 | 0 | 0 | 1 | 0 |
| 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 |
| 1 | 0 | 1 | 0 | X |
| 1 | 0 | 1 | 1 | X |
| 1 | 1 | 0 | 0 | X |
| 1 | 1 | 0 | 1 | X |
| 1 | 1 | 1 | 0 | X |
| 1 | 1 | 1 | 1 | X |
