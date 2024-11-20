library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADDER is
    generic (
        SIZE : integer := 8  -- Bit width of the input operands
    );
    port (
        A    : in  STD_LOGIC_VECTOR(SIZE-1 downto 0); -- First operand
        B    : in  STD_LOGIC_VECTOR(SIZE-1 downto 0); -- Second operand
        SUM  : out STD_LOGIC_VECTOR(SIZE downto 0)    -- Sum (1 extra bit for overflow)
    );
end entity;

architecture ARCH of ADDER is
begin

    process(A, B)
    begin
        -- Perform unsigned addition and assign the result
        SUM <= std_logic_vector(unsigned(A) + unsigned(B));
    end process;

end architecture;
