### Arithmetic Hardware

Now we are going to use what we know to make some more "useful" hardware.

#### Multiplication

What is multiplication? Just a bunch of repeated additions. But how will we implement in hardware? We can just recursively add until we get the number we want.

p = a * x

a -> multiplicand
x -> multiplier
p -> product

```
a = a3 a2 a1 a0
x = x3 x2 x1 x0
---------------
p = p7 p6 p5 p4 p3 p2 p1 p0
```

Example:
```
  a = 1 0 1 0 == 10
* x = 1 1 0 0 == 12
------------------
      0 0 0 0
    0 0 0 0
  1 0 1 0
1 0 1 0
-------------------
1 1 1 1 0 0 0 == 120
```

### Right Shift Algorithm

Now we have to implement this in hardware. Notice how the operations are just shift the multiplicand and add it to the result depending on the nth value of the multiplier.

K = Bits
P(k) = Final Product
P(0) = 0
P(J+1) = (P(J) + Xj * A * 2^K) 2^-1

J = 0
P(1) = (P(0) + X0 * A * 2^4) 2^-1 = X0 * A * 2^3

J = 1
P(2) = (P(1) + X1 * A * 2^4) 2^-1 = X0 * A * 2^2 + X1 * A * 2^3

J = 2
P(3) = (P(2) + X2 * A * 2^4) 2^-1 = X0 * A * 2^1 + X1 * A * 2^2 + X2 * A * 2^3

J = 3
P(4) = (P(3) + X3 * A * 2^4) 2^-1 = **X0 * A + X1 * A * 2^1 + X2 * A * 2^2 + X3 * A * 2^3**

Example:
```
a = 1010
x = 1011

k = 4
So we need to go to p4

p0 =  0000 0000
p1 = (1010 0000) >> 1 = 0101 0000
p2 = Will continue next class as well as go over the hardware
```