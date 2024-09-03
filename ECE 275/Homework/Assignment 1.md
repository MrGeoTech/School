1. F = XY’ + XZ + X’Z’ + XYZ’ + X’Y’Z
	F = X((YZ') + Y') + XZ + X’Z’  + X’Y’Z -- Commutative
	F = X(Y' + Z') + XZ + X’Z’  + X’Y’Z -- Elimination
	F = X(Z + Z' + Y') + X’Z’  + X’Y’Z -- Commutative
	F = X(1 + Y') + X’Z’  + X’Y’Z -- Complementarity
	F = X + X’Z’  + X’Y’Z -- First Law
	F = X + Z' + X'Y'Z -- Elimination
	F = X + X'(Y'Z) + Z' -- Rewrite
	F = X + Y'Z + Z' -- Elimination
	**F = X + Y' + Z'** -- Elimination

---

2. F = ((V’ + U + W) * (W + X + Y + UZ)) + W + X + Y + UZ’
	A = (V’ + U + W)
	F = AW + AX + AY + AUZ + W + X + Y +UZ' -- Distribution
	F = W + X + Y + AUZ + UZ' -- Absorption
	F = W + X + Y + AUZ + UZ' + AUU -- Consensus
	F = W + X + Y + AUZ + UZ' + AU -- Idempotent
	F = W + X + Y + AU + UZ' -- Absorption
	F = W + X + Y + UV' + UU + UW + UZ' -- Distribution
	F = W + X + Y + UV' + U + UW + UZ' -- Idempotent
	**F = W + X + Y + U** -- Absorption

---

3. F = XYZ + X'YZ + XY'Z + XYZ'
	F = YZ(X + X') + XZ(Y + Y') + XY(Z + Z') -- Distribution
	F = YZ + XZ + XY -- Complementarity
	**F = X(Z + Y) + YZ** -- Distribution
	
	![[Assignment1-0.png]]

---

4. F = (V + W + Y + Z) * (U + W + Y + Z) * (W + X + Y + Z)
	A = W + Y + Z
	F = (V + A) * (U + A) * (X + A)
	F = A + VUX -- Distribution
	**F = W + Y + Z + VUX**
	
	![[Assignment1-1.png]]


---

5. W’XY + WZ = (W’ + Z)(W + XY)

| W | X | Y | Z | W’XY + WZ | (W’ + Z)(W + XY) |
| ---- | ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 1 | 1 | 1 |
| 1 | 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 | 1 |

---

6. F = \[A + (BCD)’] * \[(AD)’ + B(C’ + A)]
	F = \[A + B' + C' + D'] * \[(AD)’ + B(C’ + A)] -- DeMorgans
	F = \[A + B' + C' + D'] * \[A' + D' + B(C’ + A)] -- DeMorgans
	F = (A + B' + C' + D') * (A' + D' + BC’ + BA) -- Distribution
	F = ((A + B' + C' + D')' + (A' + D' + BC’ + BA)')' -- DeMorgans
	F = (A'BCD + (A' + D' + BC’ + BA)')' -- DeMorgans
	F = (A'BCD + (A' + D' + BC’ + B)')' -- Elimination
	F = (A'BCD + (A' + D' + B)')' -- Absorption
	F = (A'BCD + ADB')' -- DeMorgans
	F = ((A'BCD + A)(A'BCD + D)(A'BCD + B'))' -- Distribution
	F = ((A'BCD + A)(D + D)(A'BCD + B'))' -- Absorption
	F = ((BCD + A)(D + D)(A'CD + B'))' -- Elimination
	F = ((BCD + A)(D)(A'CD + B'))' -- Idempotent
	F = (BCD + A)' + D' + (A'CD + B')' -- DeMorgans
	F = ((A + B)(A + C)(A + D))' + D' + ((B' + A')(B' + C)(B' + D))' -- Distribution
	F = (A + B)' + (A + C)' + (A + D)' + D' + (B' + A')' + (B' + C)' + (B' + D)' -- DeMorgans
	F = A'B' + A'C' + A'D' + D' + BA + BC' + BD' -- DeMorgans
	F = A'B' + BA + A'C' + BC' + D' -- Absorption & Impotent
	F = AB + A'B' + BC' + D' -- Consensus
	F = (AB + A'B' + BC' + D')' -- Make Complementary
	F = (AB)'(A'B')'(BC')'(D) -- DeMorgans
	F = (A' + B')(A + B)(B' + C)(D) -- DeMorgans
	F = (A + B)(B' + C)DA' + (A + B)(B' + C)DB' -- Distribution
	F = (B' + C)DA'A + (B' + C)DA'B + (B' + C)DB'A + (B' + C)DB'B -- Distribution
	F = (B' + C)DA'B + (B' + C)DB'A -- Complement
	F = B'DA'B + CDA'B + B'DB'A + CDB'A -- Distribution
	F = CDA'B + B'DB'A + CDB'A -- Complement
	F = CDA'B + DB'A + CDB'A -- Idempotent
	F = CDA'B + DB'A + DB'A -- Elimination
	**F = CDA'B + DB'A** -- Idempotent

---

7.  F = AB’C + (A’ + B + D)(ABD’ + B’)
	F = AB’C + (A’ + B + D)(AD’ + B’) -- Elimination
	F = AB’C + ((A’ + B + D)' + (AD’ + B’)')' -- DeMorgans
	F = AB’C + ((AB'D') + (AD’ + B’)')' -- DeMorgans
	F = AB’C + ((AB'D') + ((A' + D)’ + B’)')' -- DeMorgans
	F = AB’C + ((AB'D') + ((A' + D) * B))' -- DeMorgans
	F = AB’C + ((AB'D') + (A'B + BD))' -- Distribution
	F = AB’C + ((AB'D' + A'B) + (AB'D' + BD))' -- Distribution
	F = AB’C + (((AB'D')'(A'B)') + ((AB'D')'(BD)'))' -- DeMorgans
	F = AB’C + (((A' + B + D)(A + B'))' + ((A' + B + D)(B' + D'))')' -- DeMorgans
	F = AB’C + (A' + B + D)(A + B')(A' + B + D)(B' + D') -- DeMorgans
	F = AB’C + (A' + B + D)(A + B')(B' + D') -- Idempotent
	F = AB’C + (A' + B + D)(AB' + B'B' + AD' + B'D') -- Distribution
	F = AB’C + (A' + B + D)(AB' + B' + AD' + B'D') -- Idempotent
	F = AB’C + (A' + B + D)(AB' + B' + AD' + B') -- Elimination
	F = AB’C + (A' + B + D)(AB' + B' + AD') -- Idempotent
	F = AB’C + (A' + B + D)(B' + B' + AD') -- Elimination
	F = AB’C + (A' + B + D)(B' + AD') -- Idempotent
	F = AB’C + (A'B' + BB' + B'D + AA'D' + ABD' + ADD') -- Distribution
	F = AB’C + A'B' + B'D + ABD' -- Complementarity
	F = B’(AC + A') + B'D + ABD' -- Distribution
	F = B’(C + A') + B'D + ABD' -- Elimination
	F = B’(C + A' + D) + ABD' -- Distribution
	F = (B’(C + A' + D) + ABD')' -- Make Complementary
	F = (B’(C + A' + D))'(ABD')' -- DeMorgans
	F = (B + (C + A' + D)')(A' + B' + D) -- DeMorgans
	F = (B + C'AD')(A' + B' + D) -- DeMorgans
	F = (A' + B' + D)B + (A' + B' + D)C'AD' -- Distribution
	F = A'B + B'B + DB + A'C'AD' + B'C'AD' + DC'AD' -- Distribution
	**F = A'B + BD + AB'C'D'** -- Complement