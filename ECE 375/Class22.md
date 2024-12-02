# Class 22

## Left Shift Multiplication

P(0) = 0

P(j+1) = 2P(j) + X(k-j-1) * A

###### Example 1:
```erl
A = 1010 => 10
X = 1011 => 11

K = 4

p0 = 0000_0000
p1 = 0000_0000 << 1 => 0000_0000 + 0000_1010 = 0000_1010
p2 = 0000_1010 << 1 => 0001_0100 + 0000_0000 = 0001_0100
p3 = 0001_0100 << 1 => 0010_1000 + 0000_1010 = 0011_0010
p4 = 0011_0010 << 1 => 0110_0100 + 0000_1010 = 0110_1110
p4 <=> 2^7 + 2^6 + 2^4 + 2^3 + 2^2 = 64 + 32 + 8 + 4 + 2 = 110
```

#### Hardware

Is pretty much the same but less efficient hardware. This is because the adder has to be `2k` bits wide and you can't store the multiplicand in the partial product.

## Signed multiplication

We can use 2's Complement and the Right Shift algorithm as a base to do signed multiplication.

```
P(j+1) = [P(j) + X(j) * A * 2^k) 2^-1
```

```js
A = 10110 => -10
X = 01011 => 11

K = 5

// We have to reserve 2 extra, one for the sign and one for the carry
// You have to sign extend A to match the `2k+2` bit width
  p0   => 00_00000_00000
+ x0*a => 11_10110_00000
------------------------
 2*p1  => 11_10110_00000
 
 p1    => 11_11011_00000 // Arethmetic right shift
+ x1*a => 11_10110_00000
------------------------
 2*p2  => 11_10001_00000
 
 p2    => 11_11000_10000
+ x2*a => 00_00000_00000
------------------------
 2*p3  => 11_11000_10000

 p3    => 11_11100_01000
+ x3*a => 11_10110_00000
------------------------
 2*p4  => 11_10010_01000

 p4    => 11_11001_00100
+ x4*a => 00_00000_00000
------------------------
 2*p5  => 11_11001_00100
 p5    => 11_11100_10010 <=> -110
```
