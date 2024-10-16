library ieee;
use ieee.std_logic_1164.all;

-- Counts every second
entity COUNTER is
port (
     CLOCK, RESET : in  std_logic;
     DONE         : out std_logic);
end entity;

architecture ARCH of COUNTER is
constant MAX_COUNT : integer := 25000000;
signal COUNT, NEXT_COUNT : integer range 0 to MAX_COUNT := 0;
begin
    process (RESET, CLOCK)
    begin
        if RESET = '1' then
            NEXT_COUNT <= 0;
        elsif rising_edge(CLOCK) then
		      COUNT <= NEXT_COUNT;
            if COUNT = MAX_COUNT then
                DONE <= '1';
                NEXT_COUNT <= 0;
            else
                DONE <= '0';
                NEXT_COUNT <= COUNT + 1;
            end if;
        end if;
    end process;
end architecture;
