library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Multiplier is
    Port (
        CLOCK    : in  STD_LOGIC;
        RESET    : in  STD_LOGIC;
        START    : in  STD_LOGIC;
        A        : in  SIGNED(5 downto 0);
        B        : in  SIGNED(5 downto 0);
        P        : out SIGNED(11 downto 0);
        DONE     : out STD_LOGIC
    );
end entity Multiplier;

architecture Arch of Multiplier is
    type state_type is (Init, Round1, Round2, Finished);
    signal current_state, next_state : state_type;

    signal multiplicand    : SIGNED(5 downto 0);
    signal multiplier      : SIGNED(6 downto 0);
    signal partial_product : SIGNED(11 downto 0) := (others => '0');
    signal add_sub_in      : SIGNED(11 downto 0);
    signal add_result      : SIGNED(12 downto 0);
    signal control_A       : STD_LOGIC;
    signal control_2A      : STD_LOGIC;
    signal control_neg     : STD_LOGIC;

    component AddSub is
        generic (WIDTH : integer := 6);
        port (
            A            : in  SIGNED(WIDTH-1 downto 0);
            B            : in  SIGNED(WIDTH-1 downto 0);
            add_sub_ctrl : in  STD_LOGIC;
            Result       : out SIGNED(WIDTH downto 0)
        );
    end component;

    component BoothEncoder is
        generic (WIDTH : integer := 6);
        port (
            Y           : in  STD_LOGIC_VECTOR(2 downto 0);
            Control_A   : out STD_LOGIC;
            Control_2A  : out STD_LOGIC;
            Control_neg : out STD_LOGIC
        );
    end component;

begin
    process(CLOCK, RESET)
    begin
        if RESET = '1' then
            current_state <= Init;
        else
            current_state <= next_state;
        end if;
    end process;

    process(RESET, current_state)
    begin
        if RESET = '1' then
            next_state <= Init;
        elsif rising_edge(CLOCK) then
            case current_state is
                when Init =>
                    next_state <= Round1;
                    multiplicand <= A;
                    multiplier <= B & '0';

                    if control_2A = '1' then
                        add_sub_in <= resize((multiplicand(4 downto 0) & '0'), 12);
                    elsif control_A = '1' then
                        add_sub_in <= resize(multiplicand, 12);
                    else
                        add_sub_in <= (others => '0');
                    end if;

                    partial_product <= add_result(12) & add_result(12 downto 2);
                    multiplier <= "00" & multiplier(6 downto 2);
                when Round1 =>
                    next_state <= Round2;
                when Round2 =>
                    next_state <= Finished;
                when others =>
                    next_state <= Init;
            end case;
        end if;
    end process;

    ADD_SUB : AddSub
        generic map(WIDTH => 12)
        port map(
            A            => add_sub_in,
            B            => partial_product,
            add_sub_ctrl => control_neg,
            Result       => add_result
        );
    
    BOOTH_ENCODER : BoothEncoder
        generic map(WIDTH => 6)
        port map(
            Y => std_logic_vector(multiplier(2 downto 0)),
            Control_A => control_A,
            Control_2A => control_2A,
            Control_neg => control_neg
        );

end architecture;
