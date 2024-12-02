# Class 17

### Making 3 I/P LUT with 2, 2 I/P LUTs

##### Example 3:
- F = **X1X2** + X3
- F1 = X1X2
- F2 = F1 + X3

| F1 LUT |
| ------ |
| 0      |
| 0      |
| 0      |
| 1      |

| F2 LUT |
| ------ |
| 0      |
| 1      |
| 1      |
| 1      |

Note: Using 2 LUTs as a 3 I/P LUT could be a good idea if the X3 signal is slower or more timing sensitive.

##### Example 4:
- F = (X1 + X2)X3 + X1'X2'X3' (Using 2 I/P LUTS)
- F = X1X3 + X2X3 + X1'X2'X3'
- F1 = X1X3
- F2 = X2X3
- F3 = X1'X2'
- F4 = F3X3'
- F5 = F1 + F2
- F6 = F5 + F4

This is one way of creating the logic but requires a lot of resources

F = (X1 + X2)X3 + X1'X2'X3'
F1 = X1 + X2
F2 = F1X3 + F1'X3' = F1 ⊙ X3

But how many LUTs are needed? 2, one for F1, one for F2

| F1 LUT (X1,X2) |
| -------------- |
| 0              |
| 1              |
| 1              |
| 1              |

| F2 LUT (F1,X3) |
| -------------- |
| 1              |
| 0              |
| 0              |
| 1              |

---

### Shannon's Expansion
Help decrease the number of LUTs you use when you have to use reduced input LUTs. Mainly for 3-4 input functions

F(a,b,c,d) = a' * F(0, b, c, d) + a F(1, b, c, d)

Known as co-factor with respect to a. So how do we do this?

#### Co-factor:
F(a0, a1, a2 ... an) = a0' * F(0, a1, a2 ... an) + a0 * F(1, a1, a2 ... an)
