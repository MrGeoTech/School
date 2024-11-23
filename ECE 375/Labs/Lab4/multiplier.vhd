library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MULTIPLIER is
    generic (SIZE : INTEGER := 8);
    port (
        CLOCKN  : in  STD_LOGIC;
        RESETN  : in  STD_LOGIC;
        START   : in  STD_LOGIC;
        A       : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
        B       : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
        PRODUCT : out STD_LOGIC_VECTOR((2*SIZE)-1 downto 0);
        DONE    : out STD_LOGIC
    );
end entity;

architecture ARCH of MULTIPLIER is
    signal STATE                : STD_LOGIC_VECTOR(2 downto 0);
    signal MULTIPLICAND         : STD_LOGIC_VECTOR(SIZE-1 downto 0);
    signal PARTIAL_PRODUCT      : STD_LOGIC_VECTOR((2*SIZE)+1 downto 0);
    signal NEW_PARTIAL_PRODUCT  : STD_LOGIC_VECTOR((2*SIZE)+1 downto 0);
    signal ADDER_IN             : STD_LOGIC_VECTOR(SIZE+1 downto 0);
    signal ADDER_INTERMEDIATE   : STD_LOGIC_VECTOR(SIZE+1 downto 0);
    signal ADDER_OUT            : STD_LOGIC_VECTOR(SIZE+1 downto 0);
    signal ACTIVE               : STD_LOGIC := '0';
    signal AS_SELECTOR          : STD_LOGIC := '0';
begin
    process(CLOCKN, RESETN)
    begin
        -- Reset
        if RESETN = '0' then
            STATE           <= (others => '0');
            MULTIPLICAND    <= (others => '0');
            PARTIAL_PRODUCT <= (others => '0');
            ACTIVE          <= '0';
            AS_SELECTOR     <= '0';
        -- Main Logic
        elsif falling_edge(CLOCKN) then
            -- Initialization
            if START = '1' and ACTIVE = '0' then
                MULTIPLICAND    <= B;
                PARTIAL_PRODUCT <= (others => '0');
                PARTIAL_PRODUCT(SIZE-1 downto 0) <= A;
                ACTIVE          <= '1';
                AS_SELECTOR     <= '0';
            -- Active
            elsif ACTIVE = '1' then
                -- Control Logic
                case STATE is
                    when "000" => STATE <= "001";
                    when "001" => STATE <= "010";
                    when "010" => STATE <= "011";
                    when "011" => STATE <= "100";
                    when "100" => STATE <= "101";
                    when "101" => STATE <= "110";
                    when "110" => STATE <= "111";
                    when others => 
                        STATE <= "000";
                        ACTIVE <= '0';
                        AS_SELECTOR <= PARTIAL_PRODUCT(0);
                end case;
                -- Right Shift Logic
                PARTIAL_PRODUCT <= NEW_PARTIAL_PRODUCT;
            end if;
        end if;
    end process;

    -- MUX Logic
    process(RESETN, PARTIAL_PRODUCT)
    begin
        if PARTIAL_PRODUCT(0) = '1' and RESETN = '1' then
            ADDER_IN <= std_logic_vector(resize(signed(MULTIPLICAND), SIZE+2));
        else
            ADDER_IN <= (others => '0');
        end if;
    end process;

    -- Add/Sub Logic
    process(RESETN, AS_SELECTOR, ADDER_INTERMEDIATE, PARTIAL_PRODUCT)
    begin
        if RESETN = '0' then
            ADDER_OUT <= (others => '0');
        else
            ADDER_OUT <= std_logic_vector(
                signed(PARTIAL_PRODUCT(2*SIZE+1 downto SIZE)) + 
                signed(ADDER_INTERMEDIATE) + 
                signed'('0' & AS_SELECTOR)
            );
        end if;
    end process;

    ADDER_INTERMEDIATE <= ADDER_IN xor std_logic_vector(signed'(AS_SELECTOR&AS_SELECTOR));
    NEW_PARTIAL_PRODUCT <= ADDER_OUT(SIZE+1) & ADDER_OUT & PARTIAL_PRODUCT(SIZE-1 downto 1);
    PRODUCT <= PARTIAL_PRODUCT((2*SIZE)-1 downto 0);
    DONE    <= not ACTIVE;
end architecture;
