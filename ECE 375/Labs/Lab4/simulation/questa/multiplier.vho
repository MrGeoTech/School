-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "12/17/2024 19:10:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MULTIPLIER IS
    PORT (
	CLOCKN : IN std_logic;
	RESETN : IN std_logic;
	START : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	PRODUCT : BUFFER std_logic_vector(15 DOWNTO 0);
	DONE : BUFFER std_logic
	);
END MULTIPLIER;

-- Design Ports Information
-- PRODUCT[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRODUCT[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCKN	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MULTIPLIER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCKN : std_logic;
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PRODUCT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DONE : std_logic;
SIGNAL \PRODUCT[0]~output_o\ : std_logic;
SIGNAL \PRODUCT[1]~output_o\ : std_logic;
SIGNAL \PRODUCT[2]~output_o\ : std_logic;
SIGNAL \PRODUCT[3]~output_o\ : std_logic;
SIGNAL \PRODUCT[4]~output_o\ : std_logic;
SIGNAL \PRODUCT[5]~output_o\ : std_logic;
SIGNAL \PRODUCT[6]~output_o\ : std_logic;
SIGNAL \PRODUCT[7]~output_o\ : std_logic;
SIGNAL \PRODUCT[8]~output_o\ : std_logic;
SIGNAL \PRODUCT[9]~output_o\ : std_logic;
SIGNAL \PRODUCT[10]~output_o\ : std_logic;
SIGNAL \PRODUCT[11]~output_o\ : std_logic;
SIGNAL \PRODUCT[12]~output_o\ : std_logic;
SIGNAL \PRODUCT[13]~output_o\ : std_logic;
SIGNAL \PRODUCT[14]~output_o\ : std_logic;
SIGNAL \PRODUCT[15]~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \CLOCKN~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \STATE[0]~2_combout\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \STATE[1]~1_combout\ : std_logic;
SIGNAL \STATE[2]~0_combout\ : std_logic;
SIGNAL \ACTIVE~2_combout\ : std_logic;
SIGNAL \ACTIVE~3_combout\ : std_logic;
SIGNAL \ACTIVE~q\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \AS_SELECTOR~0_combout\ : std_logic;
SIGNAL \AS_SELECTOR~1_combout\ : std_logic;
SIGNAL \AS_SELECTOR~2_combout\ : std_logic;
SIGNAL \AS_SELECTOR~q\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ADDER_OUT~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \MULTIPLICAND[7]~feeder_combout\ : std_logic;
SIGNAL \ADDER_OUT~7_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~6_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ADDER_OUT~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~35_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~20_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~34_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~33_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~32_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~31_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~30_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~29_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~28_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~27_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT[7]~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~26_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~25_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~24_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~23_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~22_combout\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~21_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \PARTIAL_PRODUCT~19_combout\ : std_logic;
SIGNAL STATE : std_logic_vector(2 DOWNTO 0);
SIGNAL PARTIAL_PRODUCT : std_logic_vector(17 DOWNTO 0);
SIGNAL MULTIPLICAND : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ACTIVE~q\ : std_logic;
SIGNAL \ALT_INV_CLOCKN~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCKN <= CLOCKN;
ww_RESETN <= RESETN;
ww_START <= START;
ww_A <= A;
ww_B <= B;
PRODUCT <= ww_PRODUCT;
DONE <= ww_DONE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ACTIVE~q\ <= NOT \ACTIVE~q\;
\ALT_INV_CLOCKN~input_o\ <= NOT \CLOCKN~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\PRODUCT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(0),
	devoe => ww_devoe,
	o => \PRODUCT[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\PRODUCT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(1),
	devoe => ww_devoe,
	o => \PRODUCT[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\PRODUCT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(2),
	devoe => ww_devoe,
	o => \PRODUCT[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\PRODUCT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(3),
	devoe => ww_devoe,
	o => \PRODUCT[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\PRODUCT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(4),
	devoe => ww_devoe,
	o => \PRODUCT[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\PRODUCT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(5),
	devoe => ww_devoe,
	o => \PRODUCT[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\PRODUCT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(6),
	devoe => ww_devoe,
	o => \PRODUCT[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\PRODUCT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(7),
	devoe => ww_devoe,
	o => \PRODUCT[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\PRODUCT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(8),
	devoe => ww_devoe,
	o => \PRODUCT[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\PRODUCT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(9),
	devoe => ww_devoe,
	o => \PRODUCT[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\PRODUCT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(10),
	devoe => ww_devoe,
	o => \PRODUCT[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\PRODUCT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(11),
	devoe => ww_devoe,
	o => \PRODUCT[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\PRODUCT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(12),
	devoe => ww_devoe,
	o => \PRODUCT[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\PRODUCT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(13),
	devoe => ww_devoe,
	o => \PRODUCT[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\PRODUCT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(14),
	devoe => ww_devoe,
	o => \PRODUCT[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\PRODUCT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PARTIAL_PRODUCT(15),
	devoe => ww_devoe,
	o => \PRODUCT[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\DONE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ACTIVE~q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\CLOCKN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCKN,
	o => \CLOCKN~input_o\);

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

-- Location: LCCOMB_X114_Y23_N16
\STATE[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE[0]~2_combout\ = STATE(0) $ (\ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(0),
	datad => \ACTIVE~q\,
	combout => \STATE[0]~2_combout\);

-- Location: IOIBUF_X115_Y53_N15
\RESETN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETN,
	o => \RESETN~input_o\);

-- Location: FF_X114_Y23_N17
\STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \STATE[0]~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(0));

-- Location: LCCOMB_X114_Y23_N14
\STATE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE[1]~1_combout\ = STATE(1) $ (((STATE(0) & \ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(0),
	datac => STATE(1),
	datad => \ACTIVE~q\,
	combout => \STATE[1]~1_combout\);

-- Location: FF_X114_Y23_N15
\STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \STATE[1]~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(1));

-- Location: LCCOMB_X114_Y23_N8
\STATE[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE[2]~0_combout\ = STATE(2) $ (((\ACTIVE~q\ & (STATE(1) & STATE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE~q\,
	datab => STATE(1),
	datac => STATE(2),
	datad => STATE(0),
	combout => \STATE[2]~0_combout\);

-- Location: FF_X114_Y23_N9
\STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \STATE[2]~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(2));

-- Location: LCCOMB_X114_Y23_N30
\ACTIVE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACTIVE~2_combout\ = (\ACTIVE~q\ & (((!STATE(1)) # (!STATE(0))) # (!STATE(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => STATE(0),
	datac => STATE(1),
	datad => \ACTIVE~q\,
	combout => \ACTIVE~2_combout\);

-- Location: LCCOMB_X114_Y23_N20
\ACTIVE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACTIVE~3_combout\ = (\ACTIVE~2_combout\) # ((!\ACTIVE~q\ & \START~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE~2_combout\,
	datac => \ACTIVE~q\,
	datad => \START~input_o\,
	combout => \ACTIVE~3_combout\);

-- Location: FF_X114_Y23_N21
ACTIVE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \ACTIVE~3_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACTIVE~q\);

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

-- Location: IOIBUF_X115_Y10_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y23_N4
\AS_SELECTOR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AS_SELECTOR~0_combout\ = (STATE(1) & (STATE(2) & !STATE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(1),
	datac => STATE(2),
	datad => STATE(0),
	combout => \AS_SELECTOR~0_combout\);

-- Location: LCCOMB_X114_Y23_N2
\AS_SELECTOR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AS_SELECTOR~1_combout\ = (\ACTIVE~q\ & ((\AS_SELECTOR~0_combout\ & ((PARTIAL_PRODUCT(1)))) # (!\AS_SELECTOR~0_combout\ & (\AS_SELECTOR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AS_SELECTOR~q\,
	datab => PARTIAL_PRODUCT(1),
	datac => \AS_SELECTOR~0_combout\,
	datad => \ACTIVE~q\,
	combout => \AS_SELECTOR~1_combout\);

-- Location: LCCOMB_X114_Y23_N12
\AS_SELECTOR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AS_SELECTOR~2_combout\ = (\AS_SELECTOR~1_combout\) # ((!\START~input_o\ & (!\ACTIVE~q\ & \AS_SELECTOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \AS_SELECTOR~q\,
	datad => \AS_SELECTOR~1_combout\,
	combout => \AS_SELECTOR~2_combout\);

-- Location: FF_X114_Y23_N13
AS_SELECTOR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \AS_SELECTOR~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AS_SELECTOR~q\);

-- Location: IOIBUF_X115_Y5_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y23_N18
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\START~input_o\ & !\ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datad => \ACTIVE~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X113_Y23_N27
\MULTIPLICAND[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[3]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(3));

-- Location: LCCOMB_X113_Y23_N26
\ADDER_OUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~3_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(3) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \AS_SELECTOR~q\,
	datac => MULTIPLICAND(3),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~3_combout\);

-- Location: IOIBUF_X115_Y7_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: FF_X114_Y23_N7
\MULTIPLICAND[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[4]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(4));

-- Location: LCCOMB_X114_Y23_N6
\ADDER_OUT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~4_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(4) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AS_SELECTOR~q\,
	datab => \RESETN~input_o\,
	datac => MULTIPLICAND(4),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~4_combout\);

-- Location: IOIBUF_X115_Y6_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X114_Y23_N22
\MULTIPLICAND[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MULTIPLICAND[7]~feeder_combout\ = \B[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[7]~input_o\,
	combout => \MULTIPLICAND[7]~feeder_combout\);

-- Location: FF_X114_Y23_N23
\MULTIPLICAND[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \MULTIPLICAND[7]~feeder_combout\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(7));

-- Location: LCCOMB_X113_Y23_N30
\ADDER_OUT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~7_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (PARTIAL_PRODUCT(0) & MULTIPLICAND(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => PARTIAL_PRODUCT(0),
	datac => \AS_SELECTOR~q\,
	datad => MULTIPLICAND(7),
	combout => \ADDER_OUT~7_combout\);

-- Location: IOIBUF_X115_Y10_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: FF_X113_Y23_N29
\MULTIPLICAND[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[6]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(6));

-- Location: LCCOMB_X113_Y23_N28
\ADDER_OUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~6_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(6) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \AS_SELECTOR~q\,
	datac => MULTIPLICAND(6),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~6_combout\);

-- Location: IOIBUF_X115_Y9_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: FF_X114_Y23_N25
\MULTIPLICAND[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[5]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(5));

-- Location: LCCOMB_X114_Y23_N24
\ADDER_OUT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~5_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(5) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AS_SELECTOR~q\,
	datab => \RESETN~input_o\,
	datac => MULTIPLICAND(5),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~5_combout\);

-- Location: IOIBUF_X115_Y4_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: FF_X113_Y23_N25
\MULTIPLICAND[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[2]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(2));

-- Location: LCCOMB_X113_Y23_N24
\ADDER_OUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~2_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(2) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \AS_SELECTOR~q\,
	datac => MULTIPLICAND(2),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~2_combout\);

-- Location: IOIBUF_X115_Y16_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X114_Y23_N29
\MULTIPLICAND[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[1]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(1));

-- Location: LCCOMB_X114_Y23_N28
\ADDER_OUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~1_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(1) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AS_SELECTOR~q\,
	datab => \RESETN~input_o\,
	datac => MULTIPLICAND(1),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~1_combout\);

-- Location: IOIBUF_X115_Y4_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: FF_X113_Y23_N1
\MULTIPLICAND[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	asdata => \B[0]~input_o\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MULTIPLICAND(0));

-- Location: LCCOMB_X113_Y23_N0
\ADDER_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADDER_OUT~0_combout\ = \AS_SELECTOR~q\ $ (((\RESETN~input_o\ & (MULTIPLICAND(0) & PARTIAL_PRODUCT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \AS_SELECTOR~q\,
	datac => MULTIPLICAND(0),
	datad => PARTIAL_PRODUCT(0),
	combout => \ADDER_OUT~0_combout\);

-- Location: LCCOMB_X113_Y23_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\AS_SELECTOR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AS_SELECTOR~q\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X113_Y23_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (PARTIAL_PRODUCT(8) & ((\ADDER_OUT~0_combout\ & (\Add0~1_cout\ & VCC)) # (!\ADDER_OUT~0_combout\ & (!\Add0~1_cout\)))) # (!PARTIAL_PRODUCT(8) & ((\ADDER_OUT~0_combout\ & (!\Add0~1_cout\)) # (!\ADDER_OUT~0_combout\ & ((\Add0~1_cout\) # 
-- (GND)))))
-- \Add0~3\ = CARRY((PARTIAL_PRODUCT(8) & (!\ADDER_OUT~0_combout\ & !\Add0~1_cout\)) # (!PARTIAL_PRODUCT(8) & ((!\Add0~1_cout\) # (!\ADDER_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(8),
	datab => \ADDER_OUT~0_combout\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X113_Y23_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((PARTIAL_PRODUCT(9) $ (\ADDER_OUT~1_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((PARTIAL_PRODUCT(9) & ((\ADDER_OUT~1_combout\) # (!\Add0~3\))) # (!PARTIAL_PRODUCT(9) & (\ADDER_OUT~1_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(9),
	datab => \ADDER_OUT~1_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X113_Y23_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (PARTIAL_PRODUCT(10) & ((\ADDER_OUT~2_combout\ & (\Add0~5\ & VCC)) # (!\ADDER_OUT~2_combout\ & (!\Add0~5\)))) # (!PARTIAL_PRODUCT(10) & ((\ADDER_OUT~2_combout\ & (!\Add0~5\)) # (!\ADDER_OUT~2_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((PARTIAL_PRODUCT(10) & (!\ADDER_OUT~2_combout\ & !\Add0~5\)) # (!PARTIAL_PRODUCT(10) & ((!\Add0~5\) # (!\ADDER_OUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(10),
	datab => \ADDER_OUT~2_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X113_Y23_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\ADDER_OUT~3_combout\ $ (PARTIAL_PRODUCT(11) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\ADDER_OUT~3_combout\ & ((PARTIAL_PRODUCT(11)) # (!\Add0~7\))) # (!\ADDER_OUT~3_combout\ & (PARTIAL_PRODUCT(11) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDER_OUT~3_combout\,
	datab => PARTIAL_PRODUCT(11),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X113_Y23_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\ADDER_OUT~4_combout\ & ((PARTIAL_PRODUCT(12) & (\Add0~9\ & VCC)) # (!PARTIAL_PRODUCT(12) & (!\Add0~9\)))) # (!\ADDER_OUT~4_combout\ & ((PARTIAL_PRODUCT(12) & (!\Add0~9\)) # (!PARTIAL_PRODUCT(12) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\ADDER_OUT~4_combout\ & (!PARTIAL_PRODUCT(12) & !\Add0~9\)) # (!\ADDER_OUT~4_combout\ & ((!\Add0~9\) # (!PARTIAL_PRODUCT(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDER_OUT~4_combout\,
	datab => PARTIAL_PRODUCT(12),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X113_Y23_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((PARTIAL_PRODUCT(13) $ (\ADDER_OUT~5_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((PARTIAL_PRODUCT(13) & ((\ADDER_OUT~5_combout\) # (!\Add0~11\))) # (!PARTIAL_PRODUCT(13) & (\ADDER_OUT~5_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(13),
	datab => \ADDER_OUT~5_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X113_Y23_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (PARTIAL_PRODUCT(14) & ((\ADDER_OUT~6_combout\ & (\Add0~13\ & VCC)) # (!\ADDER_OUT~6_combout\ & (!\Add0~13\)))) # (!PARTIAL_PRODUCT(14) & ((\ADDER_OUT~6_combout\ & (!\Add0~13\)) # (!\ADDER_OUT~6_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((PARTIAL_PRODUCT(14) & (!\ADDER_OUT~6_combout\ & !\Add0~13\)) # (!PARTIAL_PRODUCT(14) & ((!\Add0~13\) # (!\ADDER_OUT~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(14),
	datab => \ADDER_OUT~6_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X113_Y23_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\ADDER_OUT~7_combout\ $ (PARTIAL_PRODUCT(15) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\ADDER_OUT~7_combout\ & ((PARTIAL_PRODUCT(15)) # (!\Add0~15\))) # (!\ADDER_OUT~7_combout\ & (PARTIAL_PRODUCT(15) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDER_OUT~7_combout\,
	datab => PARTIAL_PRODUCT(15),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X113_Y23_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\ADDER_OUT~7_combout\ & ((PARTIAL_PRODUCT(16) & (\Add0~17\ & VCC)) # (!PARTIAL_PRODUCT(16) & (!\Add0~17\)))) # (!\ADDER_OUT~7_combout\ & ((PARTIAL_PRODUCT(16) & (!\Add0~17\)) # (!PARTIAL_PRODUCT(16) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\ADDER_OUT~7_combout\ & (!PARTIAL_PRODUCT(16) & !\Add0~17\)) # (!\ADDER_OUT~7_combout\ & ((!\Add0~17\) # (!PARTIAL_PRODUCT(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDER_OUT~7_combout\,
	datab => PARTIAL_PRODUCT(16),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X113_Y23_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \ADDER_OUT~7_combout\ $ (PARTIAL_PRODUCT(16) $ (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDER_OUT~7_combout\,
	datab => PARTIAL_PRODUCT(16),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X112_Y23_N6
\PARTIAL_PRODUCT~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~35_combout\ = (\RESETN~input_o\ & (\Add0~20_combout\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \Add0~20_combout\,
	combout => \PARTIAL_PRODUCT~35_combout\);

-- Location: LCCOMB_X114_Y23_N26
\PARTIAL_PRODUCT~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~20_combout\ = (\START~input_o\) # (\ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datad => \ACTIVE~q\,
	combout => \PARTIAL_PRODUCT~20_combout\);

-- Location: FF_X112_Y23_N7
\PARTIAL_PRODUCT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~35_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(16));

-- Location: LCCOMB_X112_Y23_N28
\PARTIAL_PRODUCT~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~34_combout\ = (\Add0~18_combout\ & (\RESETN~input_o\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \Add0~18_combout\,
	datad => \RESETN~input_o\,
	combout => \PARTIAL_PRODUCT~34_combout\);

-- Location: FF_X112_Y23_N29
\PARTIAL_PRODUCT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~34_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(15));

-- Location: LCCOMB_X112_Y23_N14
\PARTIAL_PRODUCT~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~33_combout\ = (\RESETN~input_o\ & (\Add0~16_combout\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \Add0~16_combout\,
	combout => \PARTIAL_PRODUCT~33_combout\);

-- Location: FF_X112_Y23_N15
\PARTIAL_PRODUCT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~33_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(14));

-- Location: LCCOMB_X112_Y23_N8
\PARTIAL_PRODUCT~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~32_combout\ = (\RESETN~input_o\ & (\Add0~14_combout\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \Add0~14_combout\,
	combout => \PARTIAL_PRODUCT~32_combout\);

-- Location: FF_X112_Y23_N9
\PARTIAL_PRODUCT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~32_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(13));

-- Location: LCCOMB_X112_Y23_N18
\PARTIAL_PRODUCT~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~31_combout\ = (\Add0~12_combout\ & (\RESETN~input_o\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \Add0~12_combout\,
	datad => \RESETN~input_o\,
	combout => \PARTIAL_PRODUCT~31_combout\);

-- Location: FF_X112_Y23_N19
\PARTIAL_PRODUCT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~31_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(12));

-- Location: LCCOMB_X112_Y23_N20
\PARTIAL_PRODUCT~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~30_combout\ = (\Add0~10_combout\ & (\RESETN~input_o\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \Add0~10_combout\,
	datad => \RESETN~input_o\,
	combout => \PARTIAL_PRODUCT~30_combout\);

-- Location: FF_X112_Y23_N21
\PARTIAL_PRODUCT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~30_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(11));

-- Location: LCCOMB_X112_Y23_N2
\PARTIAL_PRODUCT~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~29_combout\ = (\Add0~8_combout\ & (\RESETN~input_o\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \Add0~8_combout\,
	datad => \RESETN~input_o\,
	combout => \PARTIAL_PRODUCT~29_combout\);

-- Location: FF_X112_Y23_N3
\PARTIAL_PRODUCT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~29_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(10));

-- Location: LCCOMB_X112_Y23_N16
\PARTIAL_PRODUCT~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~28_combout\ = (\Add0~6_combout\ & (\RESETN~input_o\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => \Add0~6_combout\,
	datad => \RESETN~input_o\,
	combout => \PARTIAL_PRODUCT~28_combout\);

-- Location: FF_X112_Y23_N17
\PARTIAL_PRODUCT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~28_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(9));

-- Location: LCCOMB_X112_Y23_N26
\PARTIAL_PRODUCT~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~27_combout\ = (\RESETN~input_o\ & (\Add0~4_combout\ & ((\ACTIVE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESETN~input_o\,
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \Add0~4_combout\,
	combout => \PARTIAL_PRODUCT~27_combout\);

-- Location: FF_X112_Y23_N27
\PARTIAL_PRODUCT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~27_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(8));

-- Location: LCCOMB_X114_Y24_N16
\PARTIAL_PRODUCT[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT[7]~0_combout\ = (\ACTIVE~q\ & ((\Add0~2_combout\))) # (!\ACTIVE~q\ & (PARTIAL_PRODUCT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACTIVE~q\,
	datac => PARTIAL_PRODUCT(7),
	datad => \Add0~2_combout\,
	combout => \PARTIAL_PRODUCT[7]~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X114_Y24_N17
\PARTIAL_PRODUCT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT[7]~0_combout\,
	asdata => \A[7]~input_o\,
	clrn => \RESETN~input_o\,
	sload => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(7));

-- Location: LCCOMB_X112_Y23_N4
\PARTIAL_PRODUCT~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~26_combout\ = (\ACTIVE~q\ & (((PARTIAL_PRODUCT(7))))) # (!\ACTIVE~q\ & ((\START~input_o\ & (\A[6]~input_o\)) # (!\START~input_o\ & ((PARTIAL_PRODUCT(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => PARTIAL_PRODUCT(7),
	combout => \PARTIAL_PRODUCT~26_combout\);

-- Location: FF_X112_Y23_N5
\PARTIAL_PRODUCT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~26_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(6));

-- Location: LCCOMB_X112_Y23_N22
\PARTIAL_PRODUCT~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~25_combout\ = (\START~input_o\ & ((\ACTIVE~q\ & ((PARTIAL_PRODUCT(6)))) # (!\ACTIVE~q\ & (\A[5]~input_o\)))) # (!\START~input_o\ & (((PARTIAL_PRODUCT(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => PARTIAL_PRODUCT(6),
	datac => \START~input_o\,
	datad => \ACTIVE~q\,
	combout => \PARTIAL_PRODUCT~25_combout\);

-- Location: FF_X112_Y23_N23
\PARTIAL_PRODUCT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~25_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(5));

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

-- Location: LCCOMB_X112_Y23_N12
\PARTIAL_PRODUCT~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~24_combout\ = (\START~input_o\ & ((\ACTIVE~q\ & (PARTIAL_PRODUCT(5))) # (!\ACTIVE~q\ & ((\A[4]~input_o\))))) # (!\START~input_o\ & (((PARTIAL_PRODUCT(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => PARTIAL_PRODUCT(5),
	datad => \A[4]~input_o\,
	combout => \PARTIAL_PRODUCT~24_combout\);

-- Location: FF_X112_Y23_N13
\PARTIAL_PRODUCT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~24_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(4));

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

-- Location: LCCOMB_X112_Y23_N30
\PARTIAL_PRODUCT~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~23_combout\ = (\ACTIVE~q\ & (PARTIAL_PRODUCT(4))) # (!\ACTIVE~q\ & ((\START~input_o\ & ((\A[3]~input_o\))) # (!\START~input_o\ & (PARTIAL_PRODUCT(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(4),
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \A[3]~input_o\,
	combout => \PARTIAL_PRODUCT~23_combout\);

-- Location: FF_X112_Y23_N31
\PARTIAL_PRODUCT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~23_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(3));

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

-- Location: LCCOMB_X112_Y23_N0
\PARTIAL_PRODUCT~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~22_combout\ = (\START~input_o\ & ((\ACTIVE~q\ & (PARTIAL_PRODUCT(3))) # (!\ACTIVE~q\ & ((\A[2]~input_o\))))) # (!\START~input_o\ & (((PARTIAL_PRODUCT(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \ACTIVE~q\,
	datac => PARTIAL_PRODUCT(3),
	datad => \A[2]~input_o\,
	combout => \PARTIAL_PRODUCT~22_combout\);

-- Location: FF_X112_Y23_N1
\PARTIAL_PRODUCT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~22_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(2));

-- Location: LCCOMB_X112_Y23_N10
\PARTIAL_PRODUCT~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~21_combout\ = (\START~input_o\ & ((\ACTIVE~q\ & ((PARTIAL_PRODUCT(2)))) # (!\ACTIVE~q\ & (\A[1]~input_o\)))) # (!\START~input_o\ & (((PARTIAL_PRODUCT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => PARTIAL_PRODUCT(2),
	datac => \START~input_o\,
	datad => \ACTIVE~q\,
	combout => \PARTIAL_PRODUCT~21_combout\);

-- Location: FF_X112_Y23_N11
\PARTIAL_PRODUCT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~21_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(1));

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

-- Location: LCCOMB_X112_Y23_N24
\PARTIAL_PRODUCT~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PARTIAL_PRODUCT~19_combout\ = (\ACTIVE~q\ & (PARTIAL_PRODUCT(1))) # (!\ACTIVE~q\ & ((\START~input_o\ & ((\A[0]~input_o\))) # (!\START~input_o\ & (PARTIAL_PRODUCT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PARTIAL_PRODUCT(1),
	datab => \ACTIVE~q\,
	datac => \START~input_o\,
	datad => \A[0]~input_o\,
	combout => \PARTIAL_PRODUCT~19_combout\);

-- Location: FF_X112_Y23_N25
\PARTIAL_PRODUCT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCKN~input_o\,
	d => \PARTIAL_PRODUCT~19_combout\,
	clrn => \RESETN~input_o\,
	ena => \PARTIAL_PRODUCT~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PARTIAL_PRODUCT(0));

ww_PRODUCT(0) <= \PRODUCT[0]~output_o\;

ww_PRODUCT(1) <= \PRODUCT[1]~output_o\;

ww_PRODUCT(2) <= \PRODUCT[2]~output_o\;

ww_PRODUCT(3) <= \PRODUCT[3]~output_o\;

ww_PRODUCT(4) <= \PRODUCT[4]~output_o\;

ww_PRODUCT(5) <= \PRODUCT[5]~output_o\;

ww_PRODUCT(6) <= \PRODUCT[6]~output_o\;

ww_PRODUCT(7) <= \PRODUCT[7]~output_o\;

ww_PRODUCT(8) <= \PRODUCT[8]~output_o\;

ww_PRODUCT(9) <= \PRODUCT[9]~output_o\;

ww_PRODUCT(10) <= \PRODUCT[10]~output_o\;

ww_PRODUCT(11) <= \PRODUCT[11]~output_o\;

ww_PRODUCT(12) <= \PRODUCT[12]~output_o\;

ww_PRODUCT(13) <= \PRODUCT[13]~output_o\;

ww_PRODUCT(14) <= \PRODUCT[14]~output_o\;

ww_PRODUCT(15) <= \PRODUCT[15]~output_o\;

ww_DONE <= \DONE~output_o\;
END structure;


