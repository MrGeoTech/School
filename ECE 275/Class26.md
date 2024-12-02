# Class 26

### Mealy State Machine Example

Detect `10101` with overlaps

S0: RESET, 0
S1: 1
S2: 10
S3: 101
S4: 1010

10 -> S2
~~1~~1 -> S1

~~10~~0 -> S0
101 -> S3

1010 -> S4
~~101~~1 -> S1

10100 -> S0
~~10~~101 -> S3

| CS  | X=0 | X=1 | X=0 | X=1 |
| --- | --- | --- | --- | --- |
| S0  | S0  | S1  | 0   | 0   |
| S1  | S2  | S1  | 0   | 0   |
| S2  | S0  | S3  | 0   | 0   |
| S3  | S4  | S1  | 0   | 0   |
| S4  | S0  | S3  | 0   | 1   |
^ State Table

| CS  | X=0 | X=1 | X=0 | X=1 |
| --- | --- | --- | --- | --- |
| 000 | 000 | 001 | 0   | 0   |
| 001 | 010 | 001 | 0   | 0   |
| 010 | 000 | 011 | 0   | 0   |
| 011 | 100 | 001 | 0   | 0   |
| 100 | 000 | 011 | 0   | 1   |
^ State Assigned Table

Da =
Db =
Z = X * Qc * Qb' * Qa'

| XQc\\QbQa | 00  | 01  | 11  | 10  |
| --------- | --- | --- | --- | --- |
| 00        |     | 1   |     |     |
| 01        |     |     |     |     |
| 11        | 1   |     |     |     |
| 10        |     |     |     | 1   |
Db = X'Qc'Qb'Qa + XQcQb'Qa' + XQc'QbQa'

### Armstrong Humphrey Rules
(for minimal state assignment rules) - **ECE 375**

**ECE 375** - Will be asked to do a Mealy or Moore that matches X sequence

---

