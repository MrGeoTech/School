library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AddSub is
    generic (
        WIDTH : integer := 8
    );
    port (
        A           : in  SIGNED(WIDTH-1 downto 0);
        B           : in  SIGNED(WIDTH-1 downto 0);
        add_sub_ctrl: in  STD_LOGIC;
        Result      : out SIGNED(WIDTH downto 0)
    );
end entity AddSub;

architecture Arch of AddSub is
    signal B_mod : SIGNED(WIDTH-1 downto 0);
    signal sum   : SIGNED(WIDTH downto 0);
begin
    B_mod <= B when add_sub_ctrl = '0' else not B + 1;

    sum <= ('0' & A) + ('0' & B_mod);

    Result <= sum;
end architecture Arch;
