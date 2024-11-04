### More Shannon's Expansion

###### Example 1:
F = AB + C
Fa->0 = C
Fa->1 = B + C

###### Example 2:
Implement with 3-input LUTs
F = X1X2X4 + X2X3X4' + X1'X2'X3'
=> Try to find the variable that appears the most to be most effective
F = X2'Fx2->0 + X2Fx2->1

Fx2->0 = X1'X3' = G
Fx2->1 = X1X4 + X3X4' = H
F = X2'G + X2H

Now we have 3, 3-input functions that can be combined

G:
= X1'X3'
= (X1 + X3)'
= (X1 + X3 + X3)'
Using this function, you can implement it using one 3-input LUT by connecting two of the inputs to X3

| G LUT |
| ----- |
| 1     |
| 1     |
| 0     |
| 0     |
| 0     |
| 0     |
| 0     |
| 0     |

H:
= X1X4 + X3X4'
This function already has three inputs so can just be translated directly to a 3-input LUT

| H LUT |
| ----- |
| 0     |
| 0     |
| 1     |
| 0     |
| 0     |
| 1     |
| 1     |
| 1     |

F:
= X2'G + X2H
= HX2 + GX2'
Notice how this looks familiar...
What if we just rename a couple of the variable?
= X1X4 + X3X4'
It's just H again. We don't have to recalculate the LUT, instead we can just copy the configuration of H and make sure the inputs are connected the correct way around

This function also already have three inputs so can just be translated directly, though two of the inputs are from other LUTs

---

Another way to compute the LUT of a function is to expand the function like so:
F = X2'G + X2H
F = X2'G(H + H') + X2H(G + G')
F = X2'GH + X2'GH' + X2GH + X2G'H
F = 011 + 010 + 111 + 101
F = m3 + m2 + m7 + m5

---

| F LUT |
| ----- |
| 0     |
| 0     |
| 1     |
| 0     |
| 0     |
| 1     |
| 1     |
| 1     |
