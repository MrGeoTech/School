library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BoothEncoder is
    generic (
        WIDTH : integer := 8
    );
    port (
        Y           : in  STD_LOGIC_VECTOR(2 downto 0);
        Control_A   : out STD_LOGIC;
        Control_2A  : out STD_LOGIC;
        Control_neg : out STD_LOGIC
    );
end entity BoothEncoder;

architecture Arch of BoothEncoder is
begin
    process(Y)
    begin
        Control_A   <= '0';
        Control_2A  <= '0';
        Control_neg <= '0';
        
        case Y is
            when "000" | "111" =>
                Control_A   <= '0';
                Control_2A  <= '0';
                Control_neg <= '0';
            
            when "001" | "010" =>
                Control_A   <= '1';
                Control_2A  <= '0';
                Control_neg <= '0';
            
            when "011" =>
                Control_A   <= '0';
                Control_2A  <= '1';
                Control_neg <= '0';
            
            when "100" =>
                Control_A   <= '0';
                Control_2A  <= '1';
                Control_neg <= '1';
                
            when "101" | "110" =>
                Control_A   <= '1';
                Control_2A  <= '0';
                Control_neg <= '1';
                
            when others =>
                Control_A   <= '0';
                Control_2A  <= '0';
                Control_neg <= '0';
        end case;
    end process;
end architecture Arch;
