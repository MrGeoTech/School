In the last class, we looked at signed multiplication. However, that design only works if for one negative numbers, not two.

### Multiplication of Two Negative Numbers
```vhdl
A = 10110 => -10
X = 10101 => -11

K = 5

  p0    => 00_00000_00000
+ x0*a  => 11_10110_00000
------------------------
 2*p1   => 11_10110_00000
 
  p1    => 11_11011_00000
+ x1*a  => 00_00000_00000
------------------------
 2*p2   => 11_11011_00000
 
  p2    => 11_11101_10000
+ x2*a  => 11_10110_00000
------------------------
 2*p3   => 11_10011_10000

  p3    => 11_11001_11000
+ x3*a  => 00_00000_00000
------------------------
 2*p4   => 11_11001_11000

  p4    => 11_11100_11100
-- In the very last step, if the MSB of the multiplier is negative, you take the two's complement
  x4*a  => 10110
(x4*a)' => 01001
 -x4*a  => 00_01010_00000
------------------------
 2*p5   => 00_00110_11100
  p5    => 00_00011_01110 <=> 110
```

#### Hardware

![Multiplier Hardware Diagram](Images/Class23_1.svg)
