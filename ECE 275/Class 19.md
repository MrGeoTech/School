## RH Latch
What are the restrictions on R & H such that Q = P'

![[Class19-0.png]]

| R   | H   | Q   | Q+  | P+  | Operation       |
| --- | --- | --- | --- | --- | --------------- |
| 0   | 0   | 0   | 0   | 1   | Reset           |
| 0   | 0   | 1   | 0   | 1   | Reset           |
| 0   | 1   | 0   | 0   | 1   | Hold            |
| 0   | 1   | 1   | 1   | 0   | Hold            |
| 1   | 0   | 0   | 1   | 1   |  **Invalid**    |
| 1   | 0   | 1   | 1   | 1   | **Invalid**     |
| 1   | 1   | 0   | 1   | 0   | Set             |
| 1   | 1   | 1   | 1   | 0   | Set             |

Restriction is **RH'** is not allowed

### Timing Problem

| Time | Initial       | 1   | 2   | 3   | 4   | Forever |
| ---- | ------------- | --- | --- | --- | --- | ------- |
| R    | **1**         | 1   | 0   | 0   | 0   | **0**       |
| H    |  **1**        | 1   | 1   | 0   | 1   | **1**       |
| Q    |  **0**        | 1   | 1   | 0   | 0   | **0**       |
## Construct an SR Latch using a 4:1 MUX and 1 Not gate

![[Class19-1.png]]

## Construct SR Latch using NAND gates

First, replace NORs with NAND gates, the invert inputs
![[Class19-2.png]]

This is your typical representation.
This is the exact same circuit that is used in caches

## Gated SR Latch
Has an enable bit

Just an SR Latch with NAND gates on each input with one input being the enable bit

| G     | 0    | 0    | 0    | 0    | 1    | 1    | 1    | 1    |
| ----- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Q\\SR | 00   | 01   | 11   | 10   | 00   | 01   | 11   | 10   |
| 0     | 0    | 0    | 0    | 0    | 0    | 0    | X    | 1    |
| 1     | 1    | 1    | 1    | 1    | 1    | 0    | X    | 1    |
|       | HOLD | HOLD | HOLD | HOLD | NORM | NORM | NORM | NORM |

## Gated D Latch
Constructed using SR Latch

D is attached to gated S
D' is attached to gated R

| G   | D   | Q   | Q+  |       |
| --- | --- | --- | --- | ----- |
| 0   | 0   | 0   | 0   | Holds |
| 0   | 0   | 1   | 1   | Holds |
| 0   | 1   | 0   | 0   | Holds |
| 0   | 1   | 1   | 1   | Holds |
| 1   | 0   | 0   | 0   | Set   |
| 1   | 0   | 1   | 0   | Set   |
| 1   | 1   | 0   | 1   | Set   |
| 1   | 1   | 1   | 1   | Set   |

#### Timing Diagram

| Time | Initial | 1   | 2   | 3   | 4   | 5   | 6   | 7   | Final |
| ---- | ------- | --- | --- | --- | --- | --- | --- | --- | ----- |
| G    | 0       | 0   | 0   | 1   | 1   | 1   | 1   | 1   | 0     |
| D    | 0       | 1   | 0   | 0   | 1   | 0   | 1   | 0   | 0     |
| Q    | 0       | 0   | 0   | 0   | 1   | 0   | 1   | 0   | 0     |
