# Practice Lab (Lab 0)

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
    port (
        A, B, C, D, E : in  std_logic;
        Y             : out std_logic
    );
end toplevel;

architecture toplevel_arch of toplevel is begin
    process (A, B, C, D, E) begin
        Y <= (A AND B) OR (C AND D) OR (E);
    end process;
end toplevel_arch;
```

![](PracticeLab/ModelSim.png)

`Demonstrated on FPGA in person in lab`
