# More Theorems
---
## 1
X + 0 = X
X + 1 = 1

X * 0 = 0
X * 1 = X

## 2 (Idempotent Law)
X + X = X
X * X = X

## 3 (Involution Law)
(X')' = X

## 4 (Law of Complementarity)
X + X' = 1
X * X' = 0

## 5 (Commutative Law)
X + Y = Y + X
X * Y = Y * X

## 6 (Associative Law)
(X + Y) + Z = X + (Y + Z)
(X * Y) * Z = X * (Y * Z)

## 7 (Distributive Law)
X * (Y + Z) = XY + XZ
X + YZ = (X+Y) * (X+Z)

## 8 (DeMorgans Law)
(X + Y)' = X' * Y'
(X * Y)' = X' + Y'

## 9 (Consensus Theorem)
XY + X'Z + **YZ** = XY + X'Z
(X + Y) * (X' + Z) * **(Y + Z)** = (X + Y) * (X' + Z)

** Known as Consensus Terms

## 10 (Uniting Theorem)
XY + XY' = X
(X + Y) * (X + Y') = X

## 11 (Absorption Law)
X + XY = X
X * (X + Y) = X

## 12 (Elimination)
X + X'Y = X + Y
X(X' + Y) = XY

---

### Problem 1

F = (A + B)' * (A' + B')'
F = (A' * B') * (A * B)
F = A' * B' * A * B
F = 0

### Problem 2

F = A'BC + ABC' + ABC + A'BC'
F = B(A'C + AC' + AC + A'C')
F = B(C(A + A') + C'(A + A'))
F = B(C(1) + C'(1))
F = B(C + C')
F = B(1)
F = B

### Problem 3

F = (W' + X) * (Y + Z') + (W' + X)' * (Y + Z')
F = AB + A'B
F = B(A + A')
F = B
F = Y + Z'

### Problem 4

F = ((A' * A) + B') + (B' + B')
F = (0 + B') + (B' + B')
F = B' + (B' + B')
F = B' + B'
F = B'

### Problem 5

X = (A * B) + C
F = X' * D * (X + D)
F = X'DX + X'DD
F = 0 + X'D
F = (AB+C)' * D

### Problem 6

1 OR Gate (Any # of inputs)
3 AND Gate (Only 2 inputs)

F = ABC + A'BC + AB'C + ABC'
F = BC(A + A') + AC(B + B') + AB(C + C')
F = BC(1) + AC(1) + AB(1)
F = BC + AB + AC

![[Class3-0.png]]

### Problem 7

2 OR Gates (Only 2 inputs)
2 AND Gates (Only 2 inputs)

F = (A + B + C) * (A + C + D) * (A + E)
X = A + C
F = (T + B) * (T + D) * (A + E)
F = (T + BD) * (A + E)
F = (A + C + BD) * (A + E)
F = A + E(C + BD)