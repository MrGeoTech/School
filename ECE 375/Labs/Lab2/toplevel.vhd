library ieee;
use ieee.std_logic_1164.all;

entity TOPLEVEL is
port (
    EXTERN_CLOCK, RESET, START : in  std_logic;
    RED, YELLOW, GREEN : out std_logic);
end entity;

architecture ARCH of TOPLEVEL is
signal INTERN_CLOCK, FSM_CLOCK, DONE, ENABLED : std_logic;

component COUNTER is
port (
     CLOCK, RESET : in  std_logic;
     DONE         : out std_logic);
end component;

component FSM is
port(
    CLOCK, RESET                : in  std_logic;
    RED, YELLOW, GREEN, ENABLED : out std_logic);
end component;

begin
    INTERN_CLOCK <= EXTERN_CLOCK and ENABLED;
	 
    process (RESET, START, DONE)
    begin
        if RESET = '1' then
            FSM_CLOCK <= '0';
        elsif START = '0' then -- Pushbuttons are active-low
            FSM_CLOCK <= '1';
        else
            FSM_CLOCK <= DONE;
        end if;
    end process;

    COUNTER_1 : COUNTER port map(
        CLOCK => INTERN_CLOCK,
        RESET => RESET,
        DONE => DONE
    );

    FSM_1: FSM port map(
        CLOCK => FSM_CLOCK,
        RESET => RESET,
        RED => RED,
        YELLOW => YELLOW,
        GREEN => GREEN,
        ENABLED => ENABLED
    );
end architecture;
