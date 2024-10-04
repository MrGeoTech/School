### State Assignment Table

| PS  | NS X=0 | NS X=1 |
| --- | ------ | ------ |
| S0  | S1     | S2     |
| S1  | S3     | S2     |
| S2  | S1     | S4     |
| S3  | S5     | S2     |
| S4  | S1     | S6     |
| S5  | S5     | S2     |
| S6  | S1     | S6     |
Now we optimize the state assignments

Start by grouping by the first guideline

\[S0, S2, S4, S6]
\[S0, S1, S3, S5]
\[S4, S6]
\[S3, S5]

Then the second guideline

\[S1, S2]
\[S2, S3]
\[S1, S4]
\[S1, S6]x2
\[S2, S5]x2

Now we draw a K-Map

| A\\BC | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** |     |     |     |     |
| **1** |     |     |     |     |

Now we start adding in adjacent states

| A\\BC | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | S0  | S2  | S4  | S6  |
| **1** |     |     |     |     |

| A\\BC | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | S0  | S2  | S4  | S6  |
| **1** |     | S5  |     | S1  |

| A\\BC | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | S0  | S2  | S4  | S6  |
| **1** | S3  | S5  | X   | S1  |

Therefore, our optimal state assignment is:

| State | Assignment |
| ----- | ---------- |
| S0    | 000        |
| S1    | 110        |
| S2    | 001        |
| S3    | 100        |
| S4    | 011        |
| S5    | 101        |
| S6    | 010        |

---

Now we try with all 3 guidelines:

| PS  | NS X=0 | NS X=1 | O/P X=0 | O/P X=1 |
| --- | ------ | ------ | ------- | ------- |
| A   | A      | C      | 0       | 0       |
| B   | D      | F      | 0       | 1       |
| C   | C      | A      | 0       | 0       |
| D   | D      | B      | 0       | 1       |
| E   | B      | F      | 1       | 0       |
| F   | C      | E      | 1       | 0       |

Guideline 3:

\[A, C]
\[B, D]
\[E, F]

Guideline 1:

\[B, D]
\[C, F]
\[B, E]

Guideline 2:

\[A, C] x2
\[D, F]
\[B, D]
\[B, F]
\[C, E]

Total Groupings:

~~\[A, C] x3~~
~~\[A, F]~~
~~\[B, D] x3~~
~~\[B, E]~~
\[B, F]
~~\[C, F]~~
\[D, F]
~~\[E, F]~~

K-Map:

| A\\BC | 00  | 01  | 11  | 10  |
| ----- | --- | --- | --- | --- |
| **0** | A   |     | B   | E   |
| **1** | C   |     | D   | F   |
