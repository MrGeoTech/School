library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
    Port (
        clk    : in  STD_LOGIC;
        rst    : in  STD_LOGIC;
        A      : in  STD_LOGIC_VECTOR(5 downto 0); -- Multiplicand
        B      : in  STD_LOGIC_VECTOR(7 downto 0); -- Multiplier
        Result : out STD_LOGIC_VECTOR(11 downto 0) -- Product
    );
end multiplier;

architecture Arch of multiplier is
    signal P       : STD_LOGIC_VECTOR(11 downto 0) := (others => '0'); -- Accumulator for the product
    signal M       : STD_LOGIC_VECTOR(11 downto 0); -- Extended multiplicand
    signal Q       : STD_LOGIC_VECTOR(6 downto 0); -- Extended multiplier with extra bit
    signal count   : integer range 0 to 4 := 0;    -- Counter for iterations
begin

    process(clk, rst)
    begin
        if rst = '1' then
            P <= (others => '0');
            M <= (others => '0');
            Q <= (others => '0');
            count <= 0;
        elsif rising_edge(clk) then
            if count = 0 then
                -- Initialize values
                M <= std_logic_vector(resize(signed(A), 12)); -- Extend A to 16 bits
                Q <= B & '0'; -- Extend B to 9 bits with an additional LSB '0'
                P <= (others => '0');
                count <= count + 1;
            elsif count <= 4 then
                -- Booth encoding and partial product accumulation
                case Q(1 downto 0) is
                    when "01" => P <= std_logic_vector(signed(P) + signed(M));
                    when "10" => P <= std_logic_vector(signed(P) - signed(M));
                    when others => P <= P; -- No operation for "00" or "11"
                end case;

                -- Arithmetic right shift (ARS)
                P <= P(11) & P(11 downto 1);
                Q <= P(0) & Q(6 downto 1);

                count <= count + 1;
            else
                -- Final result assignment
                Result <= P;
                count <= 0; -- Reset for next operation
            end if;
        end if;
    end process;

end Arch;
