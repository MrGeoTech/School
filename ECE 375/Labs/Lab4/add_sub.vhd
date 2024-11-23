library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADD_SUB is
    generic (SIZE : integer := 8);
    port (
        SELECTOR : in  STD_LOGIC; -- Add = 0 Sub = 1
        A        : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
        B        : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
        SUM      : out STD_LOGIC_VECTOR(SIZE downto 0)
    );
end entity;

architecture ARCH of ADD_SUB is 
signal B2 : STD_LOGIC_VECTOR(SIZE-1 downto 0);
begin
    B2 <= B ^ SELECTOR;

    process(A, B2)
    begin
        SUM <= std_logic_vector(signed(A) + signed(B2) + unsigned(SELECTOR));
    end process;
end architecture;
