# Class 6

## VHDL

Circuit we want to model:
F = AB + C

Inputs: A, B, C
Outputs: F

Flow of writing VHDL code
Functional Description -> Write Code -> Compile -> If errors, Edit again else -> Simulate -> 
If errors, Edit again else -> Synthesize -> Simulate -> If errors, Edit again else -> Send to Physical Design Team for fabrication

#### Entity & Architecture
1. Data Flow -> Logic Equations
2. Behavioral -> If-else, case,...
3. Structural -> Connect Modules

**Entity** -> Module Name, Inputs, Outputs
**Architecture** -> How the inputs and outputs interact

### Basic file format
```vhdl
-- Import standart libraries
library ieee;
use ieee.std_logic_1164.all;

-- 0 -> Logic 0
-- 1 -> Logic 1
-- X -> Unknown
-- U -> Uninitialized
-- - -> Don't care
-- Z -> High impedance

entity my_circuit is
	port (A, B, C, : in std_logic;
		  F : out std_logic);
end;

-- One way to write architecture
architecture arch of my_circuit is
begin
	F <= (A and B) or C;
end;

-- Another way (for longer operations) (with temp "variables")
architecture arch2 of my_circuit is 
signal temp : std_logic;
begin
	F <= temp or C;
	temp <= A and B;
end;
```
