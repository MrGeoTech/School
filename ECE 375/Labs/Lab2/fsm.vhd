library ieee;
use ieee.std_logic_1164.all;

entity FSM is
port(
    CLOCK, RESET                : in  std_logic;
    RED, YELLOW, GREEN, ENABLED : out std_logic);
end entity;

architecture ARCH of FSM is
signal STATE, NEXT_STATE : integer range 0 to 5 := 0;
begin
    process (STATE)
    begin
        case (STATE) is
        when 0 =>
            ENABLED <= '0';
            NEXT_STATE <= 1;
            RED <= '1';
            YELLOW <= '0';
            GREEN <= '0';
        when 1 =>
            ENABLED <= '1';
            NEXT_STATE <= 2;
            RED <= '0';
            YELLOW <= '1';
            GREEN <= '0';
        when 2 =>
            ENABLED <= '1';
            NEXT_STATE <= 3;
            RED <= '0';
            YELLOW <= '1';
            GREEN <= '0';
        when 3 =>
            ENABLED <= '1';
            NEXT_STATE <= 4;
            RED <= '0';
            YELLOW <= '0';
            GREEN <= '1';
        when 4 =>
            ENABLED <= '1';
            NEXT_STATE <= 5;
            RED <= '0';
            YELLOW <= '0';
            GREEN <= '1';
        when 5 =>
            ENABLED <= '1';
            NEXT_STATE <= 0;
            RED <= '0';
            YELLOW <= '0';
            GREEN <= '1';
        end case;
    end process;

    process (RESET, CLOCK)
    begin
        if RESET = '1' then
            STATE <= 0;
        elsif rising_edge(CLOCK) then
            STATE <= NEXT_STATE;
        end if;
    end process;
end architecture;
