# Class 1

## Terms

i/p = Input
o/p = Output

## Signals

3 types of signal
1. Continuous (Analog)
2. Discrete
3. Digital - (Discrete in time and amplitude)

## Sensors

- Proximity
- Motion
- Photosensor (Light)
- Microphone
- Temperature
- Gyroscopic
- Gas
- Pressure
...

### Pressure Sensor

Analog -> ADC (to Digital) -> Process -> DAC (to Analog) -> Sound,Light,...

## Transistors

Most basic component of digital circuits

## Why are analog circuits not precise?

In Analog systems, noise is hard to filter 

1.5V -> { +- 0.02V } -> 1.52V or 1.48V

In Digital systems, noise is hidden by reducing the amount of data stored by a signal

5V  On  On  lv4
    Off On  lv3
    On  Off lv2
0v  Off Off lv1
    Sw1 Sw2

1.5 = Level 1
1.5 +- 0.02 is still Level 1

## Basic Types of Circuits

- Combinational (current output depends on only current input)
- Sequential (current output depends on current input and past output)

Combinational circuits are typically the processing elements:
- Adders
- Multipliers
- Encoders
- Decoders

Sequential Circuits involve memory components:
- Latches
- Flip-Flops
- Registers
- Counters
- State Machines

## Gates (Logic Gates)

Three main logic gates
- AND
F = A * B -- Typically use this (like multiplication)
F = A & B
- OR
F = A + B -- Typically use this (like addition)
F = A | B
- NOT
F = ~A -- Typically use this in programming
F =  Ā } -- (A bar)
F = A' } -- Typically use this in design

## Circuit Examples

1. F = (A + B) * C

2. F = (A * B * C) + D' or F = ABC + D'
