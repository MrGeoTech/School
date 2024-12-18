-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/18/2024 13:07:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Multiplier IS
    PORT (
	CLOCK : IN std_logic;
	RESET : IN std_logic;
	START : IN std_logic;
	A : IN IEEE.NUMERIC_STD.signed(5 DOWNTO 0);
	B : IN IEEE.NUMERIC_STD.signed(5 DOWNTO 0);
	P : OUT IEEE.NUMERIC_STD.signed(11 DOWNTO 0);
	DONE : OUT std_logic
	);
END Multiplier;

-- Design Ports Information
-- P[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_A : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_DONE : std_logic;
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \P[8]~output_o\ : std_logic;
SIGNAL \P[9]~output_o\ : std_logic;
SIGNAL \P[10]~output_o\ : std_logic;
SIGNAL \P[11]~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \next_state.Round4~q\ : std_logic;
SIGNAL \current_state.Round4~0_combout\ : std_logic;
SIGNAL \next_state.Finished~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_state.Init~q\ : std_logic;
SIGNAL \multiplicand[5]~0_combout\ : std_logic;
SIGNAL \next_state.Round1~q\ : std_logic;
SIGNAL \current_state.Round1~0_combout\ : std_logic;
SIGNAL \next_state.Round2~q\ : std_logic;
SIGNAL \current_state.Round2~0_combout\ : std_logic;
SIGNAL \next_state.Round3~q\ : std_logic;
SIGNAL \current_state.Round3~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \multiplicand[2]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[5]~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \partial_product[0]~7_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \BOOTH_ENCODER|Mux1~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \multiplicand[1]~feeder_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \partial_product[0]~22_combout\ : std_logic;
SIGNAL \add_sub_in[11]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \multiplicand[4]~feeder_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \multiplicand[3]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \BOOTH_ENCODER|Mux2~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \multiplicand[0]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \partial_product[4]~9\ : std_logic;
SIGNAL \partial_product[5]~10_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~11_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~7_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~0_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~2_cout\ : std_logic;
SIGNAL \ADD_SUB|Add0~4_cout\ : std_logic;
SIGNAL \ADD_SUB|Add0~6\ : std_logic;
SIGNAL \ADD_SUB|Add0~8\ : std_logic;
SIGNAL \ADD_SUB|Add0~10\ : std_logic;
SIGNAL \ADD_SUB|Add0~12\ : std_logic;
SIGNAL \ADD_SUB|Add0~14\ : std_logic;
SIGNAL \ADD_SUB|Add0~15_combout\ : std_logic;
SIGNAL \partial_product[5]~11\ : std_logic;
SIGNAL \partial_product[6]~13\ : std_logic;
SIGNAL \partial_product[7]~14_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~16\ : std_logic;
SIGNAL \ADD_SUB|Add0~18\ : std_logic;
SIGNAL \ADD_SUB|Add0~19_combout\ : std_logic;
SIGNAL \partial_product[7]~15\ : std_logic;
SIGNAL \partial_product[8]~17\ : std_logic;
SIGNAL \partial_product[9]~18_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~20\ : std_logic;
SIGNAL \ADD_SUB|Add0~22\ : std_logic;
SIGNAL \ADD_SUB|Add0~23_combout\ : std_logic;
SIGNAL \partial_product[9]~19\ : std_logic;
SIGNAL \partial_product[10]~20_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~21_combout\ : std_logic;
SIGNAL \partial_product[8]~16_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~17_combout\ : std_logic;
SIGNAL \partial_product[6]~12_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~13_combout\ : std_logic;
SIGNAL \partial_product[4]~8_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~9_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \ADD_SUB|Add0~5_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \current_state.Finished~0_combout\ : std_logic;
SIGNAL multiplicand : std_logic_vector(5 DOWNTO 0);
SIGNAL add_sub_in : std_logic_vector(11 DOWNTO 0);
SIGNAL multiplier : std_logic_vector(6 DOWNTO 0);
SIGNAL partial_product : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK <= CLOCK;
ww_RESET <= RESET;
ww_START <= START;
ww_A <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(A);
ww_B <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(B);
P <= IEEE.NUMERIC_STD.SIGNED(ww_P);
DONE <= ww_DONE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(0),
	devoe => ww_devoe,
	o => \P[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(1),
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(2),
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(3),
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(4),
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(5),
	devoe => ww_devoe,
	o => \P[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(6),
	devoe => ww_devoe,
	o => \P[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(7),
	devoe => ww_devoe,
	o => \P[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\P[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(8),
	devoe => ww_devoe,
	o => \P[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\P[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(9),
	devoe => ww_devoe,
	o => \P[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\P[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(10),
	devoe => ww_devoe,
	o => \P[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\P[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => partial_product(10),
	devoe => ww_devoe,
	o => \P[11]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DONE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.Finished~0_combout\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: FF_X114_Y42_N3
\next_state.Round4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \current_state.Round3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Round4~q\);

-- Location: LCCOMB_X114_Y42_N8
\current_state.Round4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.Round4~0_combout\ = (!\RESET~input_o\ & \next_state.Round4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \next_state.Round4~q\,
	combout => \current_state.Round4~0_combout\);

-- Location: FF_X114_Y42_N21
\next_state.Finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \current_state.Round4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Finished~q\);

-- Location: LCCOMB_X114_Y42_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\RESET~input_o\ & (((\START~input_o\)))) # (!\RESET~input_o\ & (!\next_state.Finished~q\ & ((\next_state.Init~q\) # (\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.Init~q\,
	datab => \START~input_o\,
	datac => \next_state.Finished~q\,
	datad => \RESET~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X114_Y42_N1
\next_state.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \Selector1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Init~q\);

-- Location: LCCOMB_X114_Y42_N18
\multiplicand[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[5]~0_combout\ = (\START~input_o\ & ((\RESET~input_o\) # (!\next_state.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.Init~q\,
	datab => \RESET~input_o\,
	datad => \START~input_o\,
	combout => \multiplicand[5]~0_combout\);

-- Location: FF_X114_Y42_N23
\next_state.Round1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \multiplicand[5]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Round1~q\);

-- Location: LCCOMB_X114_Y42_N24
\current_state.Round1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.Round1~0_combout\ = (!\RESET~input_o\ & \next_state.Round1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \next_state.Round1~q\,
	combout => \current_state.Round1~0_combout\);

-- Location: FF_X114_Y42_N11
\next_state.Round2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \current_state.Round1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Round2~q\);

-- Location: LCCOMB_X114_Y42_N28
\current_state.Round2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.Round2~0_combout\ = (!\RESET~input_o\ & \next_state.Round2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \next_state.Round2~q\,
	combout => \current_state.Round2~0_combout\);

-- Location: FF_X114_Y42_N19
\next_state.Round3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \current_state.Round2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.Round3~q\);

-- Location: LCCOMB_X114_Y42_N12
\current_state.Round3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.Round3~0_combout\ = (!\RESET~input_o\ & \next_state.Round3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \next_state.Round3~q\,
	combout => \current_state.Round3~0_combout\);

-- Location: LCCOMB_X114_Y42_N26
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (!\current_state.Round3~0_combout\ & (!\current_state.Round2~0_combout\ & (!\current_state.Round4~0_combout\ & !\current_state.Round1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Round3~0_combout\,
	datab => \current_state.Round2~0_combout\,
	datac => \current_state.Round4~0_combout\,
	datad => \current_state.Round1~0_combout\,
	combout => \WideOr0~combout\);

-- Location: IOIBUF_X115_Y15_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y41_N26
\multiplicand[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[2]~feeder_combout\ = \A[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[2]~input_o\,
	combout => \multiplicand[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y42_N30
\multiplicand[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[5]~1_combout\ = (!\RESET~input_o\ & (!\next_state.Init~q\ & \START~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \next_state.Init~q\,
	datad => \START~input_o\,
	combout => \multiplicand[5]~1_combout\);

-- Location: FF_X114_Y41_N27
\multiplicand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \multiplicand[2]~feeder_combout\,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(2));

-- Location: IOIBUF_X115_Y5_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X114_Y40_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (\multiplicand[5]~0_combout\ & ((\B[5]~input_o\)))) # (!\Selector1~0_combout\ & ((multiplier(6)) # ((\multiplicand[5]~0_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \multiplicand[5]~0_combout\,
	datac => multiplier(6),
	datad => \B[5]~input_o\,
	combout => \Selector1~1_combout\);

-- Location: FF_X114_Y40_N19
\multiplier[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector1~1_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(6));

-- Location: IOIBUF_X115_Y16_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y40_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\WideOr0~combout\ & ((\B[3]~input_o\))) # (!\WideOr0~combout\ & (multiplier(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => multiplier(6),
	datac => \WideOr0~combout\,
	datad => \B[3]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X114_Y42_N6
\partial_product[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[0]~7_combout\ = (!\next_state.Finished~q\ & (!\RESET~input_o\ & ((\START~input_o\) # (\next_state.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \next_state.Finished~q\,
	datac => \next_state.Init~q\,
	datad => \RESET~input_o\,
	combout => \partial_product[0]~7_combout\);

-- Location: FF_X114_Y40_N7
\multiplier[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector3~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(4));

-- Location: IOIBUF_X115_Y15_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X103_Y45_N6
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\WideOr0~combout\ & ((\B[1]~input_o\))) # (!\WideOr0~combout\ & (multiplier(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier(4),
	datac => \B[1]~input_o\,
	datad => \WideOr0~combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X103_Y45_N7
\multiplier[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector5~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(2));

-- Location: LCCOMB_X103_Y45_N8
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (multiplier(2) & !\WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => multiplier(2),
	datad => \WideOr0~combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X103_Y45_N9
\multiplier[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector7~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(0));

-- Location: IOIBUF_X115_Y4_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X114_Y40_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\B[4]~input_o\ & ((\multiplicand[5]~0_combout\) # ((multiplier(5) & !\Selector1~0_combout\)))) # (!\B[4]~input_o\ & (((multiplier(5) & !\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \multiplicand[5]~0_combout\,
	datac => multiplier(5),
	datad => \Selector1~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X114_Y40_N29
\multiplier[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector2~0_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(5));

-- Location: IOIBUF_X115_Y4_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y40_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\WideOr0~combout\ & ((\B[2]~input_o\))) # (!\WideOr0~combout\ & (multiplier(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~combout\,
	datab => multiplier(5),
	datac => \B[2]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: FF_X114_Y40_N1
\multiplier[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector4~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(3));

-- Location: IOIBUF_X115_Y10_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X103_Y45_N30
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\WideOr0~combout\ & ((\B[0]~input_o\))) # (!\WideOr0~combout\ & (multiplier(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier(3),
	datac => \B[0]~input_o\,
	datad => \WideOr0~combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X103_Y45_N31
\multiplier[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector6~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier(1));

-- Location: LCCOMB_X103_Y45_N14
\BOOTH_ENCODER|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BOOTH_ENCODER|Mux1~0_combout\ = (multiplier(2) & ((multiplier(0)) # (multiplier(1)))) # (!multiplier(2) & ((!multiplier(1)) # (!multiplier(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier(2),
	datab => multiplier(0),
	datac => multiplier(1),
	combout => \BOOTH_ENCODER|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X114_Y41_N8
\multiplicand[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[1]~feeder_combout\ = \A[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[1]~input_o\,
	combout => \multiplicand[1]~feeder_combout\);

-- Location: FF_X114_Y41_N9
\multiplicand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \multiplicand[1]~feeder_combout\,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(1));

-- Location: LCCOMB_X103_Y45_N12
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = multiplier(0) $ (multiplier(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => multiplier(0),
	datac => multiplier(1),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X114_Y41_N2
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (multiplicand(2) & ((\Selector20~0_combout\) # ((!\BOOTH_ENCODER|Mux1~0_combout\ & multiplicand(1))))) # (!multiplicand(2) & (!\BOOTH_ENCODER|Mux1~0_combout\ & (multiplicand(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplicand(2),
	datab => \BOOTH_ENCODER|Mux1~0_combout\,
	datac => multiplicand(1),
	datad => \Selector20~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X114_Y42_N14
\partial_product[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[0]~22_combout\ = (!\START~input_o\ & ((\RESET~input_o\) # (!\next_state.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \next_state.Init~q\,
	datad => \START~input_o\,
	combout => \partial_product[0]~22_combout\);

-- Location: LCCOMB_X114_Y42_N4
\add_sub_in[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_sub_in[11]~0_combout\ = (!\RESET~input_o\ & (!\next_state.Round4~q\ & (!\partial_product[0]~22_combout\ & !\next_state.Finished~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \next_state.Round4~q\,
	datac => \partial_product[0]~22_combout\,
	datad => \next_state.Finished~q\,
	combout => \add_sub_in[11]~0_combout\);

-- Location: FF_X114_Y41_N3
\add_sub_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector23~0_combout\,
	ena => \add_sub_in[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(8));

-- Location: IOIBUF_X115_Y18_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y41_N22
\multiplicand[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[4]~feeder_combout\ = \A[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[4]~input_o\,
	combout => \multiplicand[4]~feeder_combout\);

-- Location: FF_X114_Y41_N23
\multiplicand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \multiplicand[4]~feeder_combout\,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(4));

-- Location: IOIBUF_X115_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y41_N4
\multiplicand[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[3]~feeder_combout\ = \A[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[3]~input_o\,
	combout => \multiplicand[3]~feeder_combout\);

-- Location: FF_X114_Y41_N5
\multiplicand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \multiplicand[3]~feeder_combout\,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(3));

-- Location: LCCOMB_X114_Y41_N18
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (multiplicand(4) & ((\Selector20~0_combout\) # ((!\BOOTH_ENCODER|Mux1~0_combout\ & multiplicand(3))))) # (!multiplicand(4) & (!\BOOTH_ENCODER|Mux1~0_combout\ & (multiplicand(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplicand(4),
	datab => \BOOTH_ENCODER|Mux1~0_combout\,
	datac => multiplicand(3),
	datad => \Selector20~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X114_Y41_N19
\add_sub_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector21~0_combout\,
	ena => \add_sub_in[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(10));

-- Location: IOIBUF_X115_Y11_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X114_Y41_N13
\multiplicand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \A[5]~input_o\,
	sload => VCC,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(5));

-- Location: LCCOMB_X114_Y41_N24
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (multiplicand(5) & ((\Selector20~0_combout\) # ((!\BOOTH_ENCODER|Mux1~0_combout\ & multiplicand(4))))) # (!multiplicand(5) & (!\BOOTH_ENCODER|Mux1~0_combout\ & (multiplicand(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplicand(5),
	datab => \BOOTH_ENCODER|Mux1~0_combout\,
	datac => multiplicand(4),
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X114_Y41_N25
\add_sub_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector20~1_combout\,
	ena => \add_sub_in[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(11));

-- Location: LCCOMB_X103_Y45_N0
\BOOTH_ENCODER|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BOOTH_ENCODER|Mux2~0_combout\ = ((multiplier(0) & multiplier(1))) # (!multiplier(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => multiplier(0),
	datac => multiplier(1),
	datad => multiplier(2),
	combout => \BOOTH_ENCODER|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y41_N20
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (multiplicand(2) & (((multiplicand(3) & \Selector20~0_combout\)) # (!\BOOTH_ENCODER|Mux1~0_combout\))) # (!multiplicand(2) & (((multiplicand(3) & \Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplicand(2),
	datab => \BOOTH_ENCODER|Mux1~0_combout\,
	datac => multiplicand(3),
	datad => \Selector20~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X114_Y41_N21
\add_sub_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector22~0_combout\,
	ena => \add_sub_in[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(9));

-- Location: IOIBUF_X115_Y17_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X114_Y41_N10
\multiplicand[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand[0]~feeder_combout\ = \A[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[0]~input_o\,
	combout => \multiplicand[0]~feeder_combout\);

-- Location: FF_X114_Y41_N11
\multiplicand[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \multiplicand[0]~feeder_combout\,
	ena => \multiplicand[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand(0));

-- Location: LCCOMB_X114_Y41_N28
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (multiplicand(0) & (((multiplicand(1) & \Selector20~0_combout\)) # (!\BOOTH_ENCODER|Mux1~0_combout\))) # (!multiplicand(0) & (((multiplicand(1) & \Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplicand(0),
	datab => \BOOTH_ENCODER|Mux1~0_combout\,
	datac => multiplicand(1),
	datad => \Selector20~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X114_Y41_N29
\add_sub_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector24~0_combout\,
	ena => \add_sub_in[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(7));

-- Location: LCCOMB_X114_Y42_N22
\Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\current_state.Round3~0_combout\) # ((\current_state.Round2~0_combout\) # ((\multiplicand[5]~0_combout\) # (\current_state.Round1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.Round3~0_combout\,
	datab => \current_state.Round2~0_combout\,
	datac => \multiplicand[5]~0_combout\,
	datad => \current_state.Round1~0_combout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X114_Y42_N10
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\RESET~input_o\ & ((\next_state.Round4~q\) # (\next_state.Finished~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \next_state.Round4~q\,
	datad => \next_state.Finished~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X114_Y42_N0
\Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (add_sub_in(6) & ((\partial_product[0]~22_combout\) # (\Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_sub_in(6),
	datab => \partial_product[0]~22_combout\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X114_Y42_N16
\Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\Selector25~1_combout\) # ((\Selector25~2_combout\ & (multiplicand(0) & \Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~2_combout\,
	datab => multiplicand(0),
	datac => \Selector20~0_combout\,
	datad => \Selector25~1_combout\,
	combout => \Selector25~3_combout\);

-- Location: FF_X114_Y42_N17
\add_sub_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector25~3_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_sub_in(6));

-- Location: LCCOMB_X103_Y45_N16
\partial_product[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[4]~8_combout\ = (\ADD_SUB|Add0~13_combout\ & (add_sub_in(6) $ (VCC))) # (!\ADD_SUB|Add0~13_combout\ & (add_sub_in(6) & VCC))
-- \partial_product[4]~9\ = CARRY((\ADD_SUB|Add0~13_combout\ & add_sub_in(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB|Add0~13_combout\,
	datab => add_sub_in(6),
	datad => VCC,
	combout => \partial_product[4]~8_combout\,
	cout => \partial_product[4]~9\);

-- Location: LCCOMB_X103_Y45_N18
\partial_product[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[5]~10_combout\ = (\ADD_SUB|Add0~15_combout\ & ((add_sub_in(7) & (\partial_product[4]~9\ & VCC)) # (!add_sub_in(7) & (!\partial_product[4]~9\)))) # (!\ADD_SUB|Add0~15_combout\ & ((add_sub_in(7) & (!\partial_product[4]~9\)) # 
-- (!add_sub_in(7) & ((\partial_product[4]~9\) # (GND)))))
-- \partial_product[5]~11\ = CARRY((\ADD_SUB|Add0~15_combout\ & (!add_sub_in(7) & !\partial_product[4]~9\)) # (!\ADD_SUB|Add0~15_combout\ & ((!\partial_product[4]~9\) # (!add_sub_in(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB|Add0~15_combout\,
	datab => add_sub_in(7),
	datad => VCC,
	cin => \partial_product[4]~9\,
	combout => \partial_product[5]~10_combout\,
	cout => \partial_product[5]~11\);

-- Location: FF_X103_Y45_N19
\partial_product[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[5]~10_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(5));

-- Location: LCCOMB_X102_Y45_N12
\ADD_SUB|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~11_combout\ = (\ADD_SUB|Add0~10\ & (partial_product(5) $ ((\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~10\ & ((partial_product(5) $ (!\BOOTH_ENCODER|Mux2~0_combout\)) # (GND)))
-- \ADD_SUB|Add0~12\ = CARRY((partial_product(5) $ (\BOOTH_ENCODER|Mux2~0_combout\)) # (!\ADD_SUB|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(5),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~10\,
	combout => \ADD_SUB|Add0~11_combout\,
	cout => \ADD_SUB|Add0~12\);

-- Location: LCCOMB_X102_Y45_N28
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\WideOr0~combout\ & \ADD_SUB|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~combout\,
	datad => \ADD_SUB|Add0~11_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X102_Y45_N29
\partial_product[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector16~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(3));

-- Location: LCCOMB_X102_Y45_N8
\ADD_SUB|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~7_combout\ = (\ADD_SUB|Add0~6\ & (partial_product(3) $ ((\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~6\ & ((partial_product(3) $ (!\BOOTH_ENCODER|Mux2~0_combout\)) # (GND)))
-- \ADD_SUB|Add0~8\ = CARRY((partial_product(3) $ (\BOOTH_ENCODER|Mux2~0_combout\)) # (!\ADD_SUB|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(3),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~6\,
	combout => \ADD_SUB|Add0~7_combout\,
	cout => \ADD_SUB|Add0~8\);

-- Location: LCCOMB_X102_Y45_N0
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\WideOr0~combout\ & \ADD_SUB|Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~combout\,
	datac => \ADD_SUB|Add0~7_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X102_Y45_N1
\partial_product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector18~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(1));

-- Location: LCCOMB_X103_Y45_N2
\ADD_SUB|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~0_combout\ = partial_product(0) $ ((((multiplier(1) & multiplier(0))) # (!multiplier(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier(1),
	datab => partial_product(0),
	datac => multiplier(0),
	datad => multiplier(2),
	combout => \ADD_SUB|Add0~0_combout\);

-- Location: LCCOMB_X102_Y45_N2
\ADD_SUB|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~2_cout\ = CARRY((!\ADD_SUB|Add0~0_combout\ & !\BOOTH_ENCODER|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_SUB|Add0~0_combout\,
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cout => \ADD_SUB|Add0~2_cout\);

-- Location: LCCOMB_X102_Y45_N4
\ADD_SUB|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~4_cout\ = CARRY((partial_product(1) $ (\BOOTH_ENCODER|Mux2~0_combout\)) # (!\ADD_SUB|Add0~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(1),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~2_cout\,
	cout => \ADD_SUB|Add0~4_cout\);

-- Location: LCCOMB_X102_Y45_N6
\ADD_SUB|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~5_combout\ = (\ADD_SUB|Add0~4_cout\ & ((partial_product(2) $ (!\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~4_cout\ & (partial_product(2) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (GND))))
-- \ADD_SUB|Add0~6\ = CARRY((!\ADD_SUB|Add0~4_cout\ & (partial_product(2) $ (!\BOOTH_ENCODER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(2),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~4_cout\,
	combout => \ADD_SUB|Add0~5_combout\,
	cout => \ADD_SUB|Add0~6\);

-- Location: LCCOMB_X102_Y45_N10
\ADD_SUB|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~9_combout\ = (\ADD_SUB|Add0~8\ & ((partial_product(4) $ (!\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~8\ & (partial_product(4) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (GND))))
-- \ADD_SUB|Add0~10\ = CARRY((!\ADD_SUB|Add0~8\ & (partial_product(4) $ (!\BOOTH_ENCODER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(4),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~8\,
	combout => \ADD_SUB|Add0~9_combout\,
	cout => \ADD_SUB|Add0~10\);

-- Location: LCCOMB_X102_Y45_N14
\ADD_SUB|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~13_combout\ = (\ADD_SUB|Add0~12\ & ((partial_product(6) $ (!\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~12\ & (partial_product(6) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (GND))))
-- \ADD_SUB|Add0~14\ = CARRY((!\ADD_SUB|Add0~12\ & (partial_product(6) $ (!\BOOTH_ENCODER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(6),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~12\,
	combout => \ADD_SUB|Add0~13_combout\,
	cout => \ADD_SUB|Add0~14\);

-- Location: LCCOMB_X102_Y45_N16
\ADD_SUB|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~15_combout\ = (\ADD_SUB|Add0~14\ & (partial_product(7) $ ((\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~14\ & ((partial_product(7) $ (!\BOOTH_ENCODER|Mux2~0_combout\)) # (GND)))
-- \ADD_SUB|Add0~16\ = CARRY((partial_product(7) $ (\BOOTH_ENCODER|Mux2~0_combout\)) # (!\ADD_SUB|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(7),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~14\,
	combout => \ADD_SUB|Add0~15_combout\,
	cout => \ADD_SUB|Add0~16\);

-- Location: LCCOMB_X103_Y45_N20
\partial_product[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[6]~12_combout\ = ((add_sub_in(8) $ (\ADD_SUB|Add0~17_combout\ $ (!\partial_product[5]~11\)))) # (GND)
-- \partial_product[6]~13\ = CARRY((add_sub_in(8) & ((\ADD_SUB|Add0~17_combout\) # (!\partial_product[5]~11\))) # (!add_sub_in(8) & (\ADD_SUB|Add0~17_combout\ & !\partial_product[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add_sub_in(8),
	datab => \ADD_SUB|Add0~17_combout\,
	datad => VCC,
	cin => \partial_product[5]~11\,
	combout => \partial_product[6]~12_combout\,
	cout => \partial_product[6]~13\);

-- Location: LCCOMB_X103_Y45_N22
\partial_product[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[7]~14_combout\ = (add_sub_in(9) & ((\ADD_SUB|Add0~19_combout\ & (\partial_product[6]~13\ & VCC)) # (!\ADD_SUB|Add0~19_combout\ & (!\partial_product[6]~13\)))) # (!add_sub_in(9) & ((\ADD_SUB|Add0~19_combout\ & (!\partial_product[6]~13\)) # 
-- (!\ADD_SUB|Add0~19_combout\ & ((\partial_product[6]~13\) # (GND)))))
-- \partial_product[7]~15\ = CARRY((add_sub_in(9) & (!\ADD_SUB|Add0~19_combout\ & !\partial_product[6]~13\)) # (!add_sub_in(9) & ((!\partial_product[6]~13\) # (!\ADD_SUB|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add_sub_in(9),
	datab => \ADD_SUB|Add0~19_combout\,
	datad => VCC,
	cin => \partial_product[6]~13\,
	combout => \partial_product[7]~14_combout\,
	cout => \partial_product[7]~15\);

-- Location: FF_X103_Y45_N23
\partial_product[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[7]~14_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(7));

-- Location: LCCOMB_X102_Y45_N18
\ADD_SUB|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~17_combout\ = (\ADD_SUB|Add0~16\ & ((partial_product(8) $ (!\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~16\ & (partial_product(8) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (GND))))
-- \ADD_SUB|Add0~18\ = CARRY((!\ADD_SUB|Add0~16\ & (partial_product(8) $ (!\BOOTH_ENCODER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(8),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~16\,
	combout => \ADD_SUB|Add0~17_combout\,
	cout => \ADD_SUB|Add0~18\);

-- Location: LCCOMB_X102_Y45_N20
\ADD_SUB|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~19_combout\ = (\ADD_SUB|Add0~18\ & (partial_product(9) $ ((\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~18\ & ((partial_product(9) $ (!\BOOTH_ENCODER|Mux2~0_combout\)) # (GND)))
-- \ADD_SUB|Add0~20\ = CARRY((partial_product(9) $ (\BOOTH_ENCODER|Mux2~0_combout\)) # (!\ADD_SUB|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(9),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~18\,
	combout => \ADD_SUB|Add0~19_combout\,
	cout => \ADD_SUB|Add0~20\);

-- Location: LCCOMB_X103_Y45_N24
\partial_product[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[8]~16_combout\ = ((add_sub_in(10) $ (\ADD_SUB|Add0~21_combout\ $ (!\partial_product[7]~15\)))) # (GND)
-- \partial_product[8]~17\ = CARRY((add_sub_in(10) & ((\ADD_SUB|Add0~21_combout\) # (!\partial_product[7]~15\))) # (!add_sub_in(10) & (\ADD_SUB|Add0~21_combout\ & !\partial_product[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add_sub_in(10),
	datab => \ADD_SUB|Add0~21_combout\,
	datad => VCC,
	cin => \partial_product[7]~15\,
	combout => \partial_product[8]~16_combout\,
	cout => \partial_product[8]~17\);

-- Location: LCCOMB_X103_Y45_N26
\partial_product[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[9]~18_combout\ = (add_sub_in(11) & ((\ADD_SUB|Add0~23_combout\ & (\partial_product[8]~17\ & VCC)) # (!\ADD_SUB|Add0~23_combout\ & (!\partial_product[8]~17\)))) # (!add_sub_in(11) & ((\ADD_SUB|Add0~23_combout\ & (!\partial_product[8]~17\)) 
-- # (!\ADD_SUB|Add0~23_combout\ & ((\partial_product[8]~17\) # (GND)))))
-- \partial_product[9]~19\ = CARRY((add_sub_in(11) & (!\ADD_SUB|Add0~23_combout\ & !\partial_product[8]~17\)) # (!add_sub_in(11) & ((!\partial_product[8]~17\) # (!\ADD_SUB|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add_sub_in(11),
	datab => \ADD_SUB|Add0~23_combout\,
	datad => VCC,
	cin => \partial_product[8]~17\,
	combout => \partial_product[9]~18_combout\,
	cout => \partial_product[9]~19\);

-- Location: FF_X103_Y45_N27
\partial_product[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[9]~18_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(9));

-- Location: LCCOMB_X102_Y45_N22
\ADD_SUB|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~21_combout\ = (\ADD_SUB|Add0~20\ & ((partial_product(10) $ (!\BOOTH_ENCODER|Mux2~0_combout\)))) # (!\ADD_SUB|Add0~20\ & (partial_product(10) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (GND))))
-- \ADD_SUB|Add0~22\ = CARRY((!\ADD_SUB|Add0~20\ & (partial_product(10) $ (!\BOOTH_ENCODER|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(10),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	datad => VCC,
	cin => \ADD_SUB|Add0~20\,
	combout => \ADD_SUB|Add0~21_combout\,
	cout => \ADD_SUB|Add0~22\);

-- Location: LCCOMB_X102_Y45_N24
\ADD_SUB|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADD_SUB|Add0~23_combout\ = partial_product(10) $ (\BOOTH_ENCODER|Mux2~0_combout\ $ (!\ADD_SUB|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial_product(10),
	datab => \BOOTH_ENCODER|Mux2~0_combout\,
	cin => \ADD_SUB|Add0~22\,
	combout => \ADD_SUB|Add0~23_combout\);

-- Location: LCCOMB_X103_Y45_N28
\partial_product[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial_product[10]~20_combout\ = !\partial_product[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \partial_product[9]~19\,
	combout => \partial_product[10]~20_combout\);

-- Location: FF_X103_Y45_N29
\partial_product[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[10]~20_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(10));

-- Location: FF_X103_Y45_N25
\partial_product[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[8]~16_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(8));

-- Location: FF_X103_Y45_N21
\partial_product[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[6]~12_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(6));

-- Location: FF_X103_Y45_N17
\partial_product[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \partial_product[4]~8_combout\,
	sclr => \WideOr0~combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(4));

-- Location: LCCOMB_X102_Y45_N26
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\WideOr0~combout\ & \ADD_SUB|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr0~combout\,
	datad => \ADD_SUB|Add0~9_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X102_Y45_N27
\partial_product[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector17~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(2));

-- Location: LCCOMB_X103_Y45_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\ADD_SUB|Add0~5_combout\ & !\WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_SUB|Add0~5_combout\,
	datad => \WideOr0~combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X103_Y45_N5
\partial_product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector19~0_combout\,
	ena => \partial_product[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial_product(0));

-- Location: LCCOMB_X114_Y42_N2
\current_state.Finished~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.Finished~0_combout\ = (!\RESET~input_o\ & \next_state.Finished~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \next_state.Finished~q\,
	combout => \current_state.Finished~0_combout\);

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;

ww_P(8) <= \P[8]~output_o\;

ww_P(9) <= \P[9]~output_o\;

ww_P(10) <= \P[10]~output_o\;

ww_P(11) <= \P[11]~output_o\;

ww_DONE <= \DONE~output_o\;
END structure;


