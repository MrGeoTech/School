# Class 25

## Radix-4 Multiplication (Unsigned)

Previously, we had $P^{j+1}=[p^j+x_j*a*2^k]2^{-1}$ as the formula for multiplication.

Now, we use $P^{j+1}=[p^j+x_j*a*R^k]R^{-1}$ where $R$ is your radix. ($R$ should be a power of 2)

For example, if $R=4$, the equation will be $P^{j+1}=[p^j+x_j*a*4^k]4^{-1}$

##### Multiplication example:

$X=(1110)_2=(3,2)_4=6_{10}\\$
$K=2\\$

$A=(1011)_2=14_{10}\\$
$2A=1100\\$
$3A=10010\\$

|   Value   |$P_9$|$P_8$|$P_7$|$P_6$|$P_5$|$P_4$|$P_3$|$P_2$|$P_1$|$P_0$|
|-----------|-|-|-|-|-|-|-|-|-|-|
|$P^0$      |0|0|0|0|0|0|0|0|0|0|
|$0+2*A*4^2$| | |1|1|0|0|0|0|0|0|
|$4P^1$     | | |1|1|0|0|0|0|0|0|
|$P^1$      | | | | |1|1|0|0|0|0|
|$0+3*A*4^2$| |1|0|0|1|0|0|0|0|0|
|$4P^2$     | |1|0|1|0|1|0|0|0|0|
|$P^2$      | | | |1|0|1|0|1|0|0|

$P^2=1010100_2=84_{10}$

Now we are going to add booth encoding to this

## Radix-4 Multiplication (Signed) with Booth Encodings

You can convert a Booth encoded number into a Radix-4 encoded number. You do like normal but you have to account for negative one.

For example: $[-1,0] → (-1)2^1+(0)2^0 = -2$
```
X =  10011 101 10 1011 10
Y = -10100-110-11-1100-10
```
So...

|$Y_4$|-2| 2|-1| 2|-1|-1| 0|-2|
|-----|--|--|--|--|--|--|--|--|

Will continue with example in next class
