library ieee;
use ieee.std_logic_1164.all;

entity FSM is
port (
    X, CLOCK, RESET : in  std_logic;
    O               : out std_logic
);
end entity;

architecture ARCH of FSM is
type FSM_STATE is (A, B, C, D);
signal STATE : FSM_STATE;
begin
    process (CLOCK) is 
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                STATE <= A;
            else
                case STATE is
                    when A =>
                        if X = '0' then
                            STATE <= C;
                        else
                            STATE <= B;
                        end if;
                    when B =>
                        if X = '0' then
                            STATE <= D;
                        end if;
                    when C =>
                        if X = '0' then
                            STATE <= D;
                        end if;
                    when D =>
                        if X = '0' then
                            STATE <= A;
                        end if;
                end case;
            end if;
        end if;
    end process;
    process (X) is
    begin
        case STATE is
            when A =>
                O <= not X;
            when B =>
                O <= X;
            when C =>
                O <= '1';
            when D =>
                O <= not X;
        end case;
    end process;
end architecture;
