# Class 20

## Flip-Flops

Latches -> Asynchronous
**Level Triggered**

Latches can fire at any time. Aka, as soon as their inputs change, they fire.

This is why we use clocks to synchronize.

**Latch + Clock = Flip-Flop (FF)**

Clock signal looks like a series of pulses spaced out evenly.

When turning on, it is known as the rising edge of the clock.
When turning off, it is known as the falling edge of the clock.

For a 2.4GHz clock, how many times does it change per second?
*2.4 * 10^9*

The trade off of faster clock is more energy is needed and the heat will go up. However performance goes up.

Flip-Flop has a clock, therefor, it is known as a **Edge-Triggered** device.

You have to determine if the flip-flop is rising edge or falling edge.

Rising Edge DFF
```
     +-----+
D -> |    Q| ->
     |     |
     |   Q'| ->
     +-----+
        |
       clk
```

---
## Example Problems (on sheet)
---
### JK FF (Jack Kilby)
Made the first IC in 1958
Got Nobel 2002/3
Died in 2005

| J   | K   | Q   | Q+  | Action |
| --- | --- | --- | --- | ------ |
| 0   | 0   | 0   | 0   | Hold   |
| 0   | 0   | 1   | 1   | Hold   |
| 0   | 1   | 0   | 0   | Reset  |
| 0   | 1   | 1   | 0   | Reset  |
| 1   | 0   | 0   | 1   | Set    |
| 1   | 0   | 1   | 1   | Set    |
| 1   | 1   | 0   | 1   | Toggle |
| 1   | 1   | 1   | 0   | Toggle |

---
### T-FF (Toggle)

| T   | Q   | Q+  | Action |
| --- | --- | --- | ------ |
| 0   | 0   | 0   | Hold   |
| 0   | 1   | 1   | Hold   |
| 1   | 0   | 1   | Toggle |
| 1   | 1   | 0   | Toggle |
