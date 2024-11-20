library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RIGHT_SHIFT_REGISTER is
    generic (
        SIZE : integer := 8
    );
    port (
        CLOCK    : in  STD_LOGIC;
        RESET    : in  STD_LOGIC;
        LOAD     : in  STD_LOGIC;
        DATA_IN  : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
        SHIFT_IN : in  STD_LOGIC;
        Q        : out STD_LOGIC_VECTOR(SIZE-1 downto 0)
    );
end entity;

architecture ARCH of RIGHT_SHIFT_REGISTER is
    signal SHIFT_REG : STD_LOGIC_VECTOR(SIZE-1 downto 0);
begin

    process(CLOCK, RESET)
    begin
        if RESET = '1' then
            SHIFT_REG <= (others => '0');
        elsif rising_edge(CLOCK) then
            if LOAD = '1' then
                SHIFT_REG <= DATA_IN;
            else
                SHIFT_REG <= SHIFT_IN & SHIFT_REG(SIZE-1 downto 1);
            end if;
        end if;
    end process;

    Q <= SHIFT_REG;

end architecture;
