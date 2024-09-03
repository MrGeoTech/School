To make an OR gate with transistors, you need two in parallel.
To make an AND gate with transistors, you need two in series.

Finite State Machines:
- memory controllers
- embedded systems

#### State Machine:
Input: X, Clk
Output: Z when X sequence is `101`

```
X: 001011001010100
Z: 000010000010100
```

1. State Diagram:
As Mealy State Machine
![[Class2_1.png]]

2. State Table

| PS  | NS->0 | NS->1 | O/P->0 | O/P->1 |
| --- | ----- | ----- | ------ | ------ |
| S0  | S0    | S1    | 0      | 0      |
| S1  | S2    | S1    | 0      | 0      |
| S2  | S0    | S1    | 0      | 1      |
S0 = 00
S1 = 01
S2 = 10

| PS (AB) | NS->0 (A+B+) | NS->1 (A+B+) | O/P->0 (Z) | O/P->1 (Z) |
| ------- | ------------ | ------------ | ---------- | ---------- |
| 00      | 00           | 01           | 0          | 0          |
| 01      | 10           | 01           | 0          | 0          |
| 10      | 00           | 01           | 0          | 1          |
| 11      | XX           | XX           | X          | X          |
3. Realize with K-Maps
Next Class
