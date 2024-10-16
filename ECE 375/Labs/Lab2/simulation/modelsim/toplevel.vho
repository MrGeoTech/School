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

-- DATE "10/15/2024 17:55:04"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOPLEVEL IS
    PORT (
	EXTERN_CLOCK : IN std_logic;
	RESET : IN std_logic;
	START : IN std_logic;
	RED : OUT std_logic;
	YELLOW : OUT std_logic;
	GREEN : OUT std_logic
	);
END TOPLEVEL;

-- Design Ports Information
-- RED	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YELLOW	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTERN_CLOCK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOPLEVEL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EXTERN_CLOCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_RED : std_logic;
SIGNAL ww_YELLOW : std_logic;
SIGNAL ww_GREEN : std_logic;
SIGNAL \INTERN_CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RED~output_o\ : std_logic;
SIGNAL \YELLOW~output_o\ : std_logic;
SIGNAL \GREEN~output_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \EXTERN_CLOCK~input_o\ : std_logic;
SIGNAL \FSM_1|Mux1~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \FSM_1|Mux4~0_combout\ : std_logic;
SIGNAL \FSM_1|Mux3~1_combout\ : std_logic;
SIGNAL \FSM_1|Mux0~combout\ : std_logic;
SIGNAL \INTERN_CLOCK~combout\ : std_logic;
SIGNAL \INTERN_CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER_1|Add0~0_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~12_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~1\ : std_logic;
SIGNAL \COUNTER_1|Add0~2_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~3\ : std_logic;
SIGNAL \COUNTER_1|Add0~4_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[2]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~5\ : std_logic;
SIGNAL \COUNTER_1|Add0~6_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[3]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~7\ : std_logic;
SIGNAL \COUNTER_1|Add0~8_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[4]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~6_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~9\ : std_logic;
SIGNAL \COUNTER_1|Add0~10_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~11\ : std_logic;
SIGNAL \COUNTER_1|Add0~12_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~11_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~13\ : std_logic;
SIGNAL \COUNTER_1|Add0~14_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[7]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~15\ : std_logic;
SIGNAL \COUNTER_1|Add0~16_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[8]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~5_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~17\ : std_logic;
SIGNAL \COUNTER_1|Add0~18_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[9]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~19\ : std_logic;
SIGNAL \COUNTER_1|Add0~20_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~21\ : std_logic;
SIGNAL \COUNTER_1|Add0~22_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~10_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[11]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~23\ : std_logic;
SIGNAL \COUNTER_1|Add0~24_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~9_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT[12]~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~3_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~25\ : std_logic;
SIGNAL \COUNTER_1|Add0~26_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~8_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~27\ : std_logic;
SIGNAL \COUNTER_1|Add0~28_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~7_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~29\ : std_logic;
SIGNAL \COUNTER_1|Add0~30_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~31\ : std_logic;
SIGNAL \COUNTER_1|Add0~32_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~6_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~33\ : std_logic;
SIGNAL \COUNTER_1|Add0~34_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~35\ : std_logic;
SIGNAL \COUNTER_1|Add0~36_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~5_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~37\ : std_logic;
SIGNAL \COUNTER_1|Add0~38_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~4_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~39\ : std_logic;
SIGNAL \COUNTER_1|Add0~40_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~3_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~1_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~41\ : std_logic;
SIGNAL \COUNTER_1|Add0~42_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~2_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~43\ : std_logic;
SIGNAL \COUNTER_1|Add0~44_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~1_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~45\ : std_logic;
SIGNAL \COUNTER_1|Add0~46_combout\ : std_logic;
SIGNAL \COUNTER_1|Add0~47\ : std_logic;
SIGNAL \COUNTER_1|Add0~48_combout\ : std_logic;
SIGNAL \COUNTER_1|NEXT_COUNT~0_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~0_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~2_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~4_combout\ : std_logic;
SIGNAL \COUNTER_1|Equal0~7_combout\ : std_logic;
SIGNAL \COUNTER_1|DONE~feeder_combout\ : std_logic;
SIGNAL \COUNTER_1|DONE~q\ : std_logic;
SIGNAL \FSM_CLOCK~combout\ : std_logic;
SIGNAL \FSM_1|STATE[0]~1_combout\ : std_logic;
SIGNAL \FSM_1|Mux3~0_combout\ : std_logic;
SIGNAL \FSM_1|Mux5~0_combout\ : std_logic;
SIGNAL \COUNTER_1|COUNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \COUNTER_1|NEXT_COUNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \FSM_1|STATE\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_EXTERN_CLOCK <= EXTERN_CLOCK;
ww_RESET <= RESET;
ww_START <= START;
RED <= ww_RED;
YELLOW <= ww_YELLOW;
GREEN <= ww_GREEN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INTERN_CLOCK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INTERN_CLOCK~combout\);
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X94_Y73_N9
\RED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \RED~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\YELLOW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \YELLOW~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\GREEN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \GREEN~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\EXTERN_CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXTERN_CLOCK,
	o => \EXTERN_CLOCK~input_o\);

-- Location: LCCOMB_X112_Y14_N26
\FSM_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux1~0_combout\ = (\FSM_1|STATE\(1) & (!\FSM_1|STATE\(2) & \FSM_1|STATE\(0))) # (!\FSM_1|STATE\(1) & (\FSM_1|STATE\(2) & !\FSM_1|STATE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_1|STATE\(1),
	datac => \FSM_1|STATE\(2),
	datad => \FSM_1|STATE\(0),
	combout => \FSM_1|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X112_Y14_N27
\FSM_1|STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM_CLOCK~combout\,
	d => \FSM_1|Mux1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_1|STATE\(2));

-- Location: LCCOMB_X112_Y14_N14
\FSM_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux4~0_combout\ = (!\FSM_1|STATE\(2) & (\FSM_1|STATE\(1) $ (\FSM_1|STATE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_1|STATE\(2),
	datac => \FSM_1|STATE\(1),
	datad => \FSM_1|STATE\(0),
	combout => \FSM_1|Mux4~0_combout\);

-- Location: FF_X112_Y14_N31
\FSM_1|STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM_CLOCK~combout\,
	asdata => \FSM_1|Mux4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_1|STATE\(1));

-- Location: LCCOMB_X112_Y14_N8
\FSM_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux3~1_combout\ = (!\FSM_1|STATE\(1) & !\FSM_1|STATE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_1|STATE\(1),
	datad => \FSM_1|STATE\(0),
	combout => \FSM_1|Mux3~1_combout\);

-- Location: LCCOMB_X112_Y14_N18
\FSM_1|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux0~combout\ = (\FSM_1|STATE\(2) & ((!\FSM_1|STATE\(1)))) # (!\FSM_1|STATE\(2) & (!\FSM_1|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_1|Mux3~1_combout\,
	datac => \FSM_1|STATE\(1),
	datad => \FSM_1|STATE\(2),
	combout => \FSM_1|Mux0~combout\);

-- Location: LCCOMB_X111_Y14_N18
INTERN_CLOCK : cycloneive_lcell_comb
-- Equation(s):
-- \INTERN_CLOCK~combout\ = LCELL((\EXTERN_CLOCK~input_o\ & \FSM_1|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXTERN_CLOCK~input_o\,
	datad => \FSM_1|Mux0~combout\,
	combout => \INTERN_CLOCK~combout\);

-- Location: CLKCTRL_G8
\INTERN_CLOCK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INTERN_CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INTERN_CLOCK~clkctrl_outclk\);

-- Location: LCCOMB_X110_Y15_N8
\COUNTER_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~0_combout\ = \COUNTER_1|COUNT\(0) $ (VCC)
-- \COUNTER_1|Add0~1\ = CARRY(\COUNTER_1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(0),
	datad => VCC,
	combout => \COUNTER_1|Add0~0_combout\,
	cout => \COUNTER_1|Add0~1\);

-- Location: LCCOMB_X111_Y15_N24
\COUNTER_1|NEXT_COUNT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~12_combout\ = (\COUNTER_1|Add0~0_combout\ & !\COUNTER_1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Add0~0_combout\,
	datac => \COUNTER_1|Equal0~7_combout\,
	combout => \COUNTER_1|NEXT_COUNT~12_combout\);

-- Location: FF_X111_Y15_N25
\COUNTER_1|NEXT_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~12_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(0));

-- Location: LCCOMB_X110_Y15_N4
\COUNTER_1|COUNT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[0]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(0),
	combout => \COUNTER_1|COUNT[0]~feeder_combout\);

-- Location: FF_X110_Y15_N5
\COUNTER_1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[0]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(0));

-- Location: LCCOMB_X110_Y15_N10
\COUNTER_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~2_combout\ = (\COUNTER_1|COUNT\(1) & (!\COUNTER_1|Add0~1\)) # (!\COUNTER_1|COUNT\(1) & ((\COUNTER_1|Add0~1\) # (GND)))
-- \COUNTER_1|Add0~3\ = CARRY((!\COUNTER_1|Add0~1\) # (!\COUNTER_1|COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(1),
	datad => VCC,
	cin => \COUNTER_1|Add0~1\,
	combout => \COUNTER_1|Add0~2_combout\,
	cout => \COUNTER_1|Add0~3\);

-- Location: FF_X110_Y15_N11
\COUNTER_1|NEXT_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(1));

-- Location: LCCOMB_X111_Y14_N8
\COUNTER_1|COUNT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[1]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(1),
	combout => \COUNTER_1|COUNT[1]~feeder_combout\);

-- Location: FF_X111_Y14_N9
\COUNTER_1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[1]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(1));

-- Location: LCCOMB_X110_Y15_N12
\COUNTER_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~4_combout\ = (\COUNTER_1|COUNT\(2) & (\COUNTER_1|Add0~3\ $ (GND))) # (!\COUNTER_1|COUNT\(2) & (!\COUNTER_1|Add0~3\ & VCC))
-- \COUNTER_1|Add0~5\ = CARRY((\COUNTER_1|COUNT\(2) & !\COUNTER_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(2),
	datad => VCC,
	cin => \COUNTER_1|Add0~3\,
	combout => \COUNTER_1|Add0~4_combout\,
	cout => \COUNTER_1|Add0~5\);

-- Location: FF_X110_Y15_N13
\COUNTER_1|NEXT_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(2));

-- Location: LCCOMB_X111_Y14_N30
\COUNTER_1|COUNT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[2]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(2),
	combout => \COUNTER_1|COUNT[2]~feeder_combout\);

-- Location: FF_X111_Y14_N31
\COUNTER_1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[2]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(2));

-- Location: LCCOMB_X110_Y15_N14
\COUNTER_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~6_combout\ = (\COUNTER_1|COUNT\(3) & (!\COUNTER_1|Add0~5\)) # (!\COUNTER_1|COUNT\(3) & ((\COUNTER_1|Add0~5\) # (GND)))
-- \COUNTER_1|Add0~7\ = CARRY((!\COUNTER_1|Add0~5\) # (!\COUNTER_1|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(3),
	datad => VCC,
	cin => \COUNTER_1|Add0~5\,
	combout => \COUNTER_1|Add0~6_combout\,
	cout => \COUNTER_1|Add0~7\);

-- Location: FF_X110_Y15_N15
\COUNTER_1|NEXT_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(3));

-- Location: LCCOMB_X111_Y14_N2
\COUNTER_1|COUNT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[3]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|NEXT_COUNT\(3),
	combout => \COUNTER_1|COUNT[3]~feeder_combout\);

-- Location: FF_X111_Y14_N3
\COUNTER_1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[3]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(3));

-- Location: LCCOMB_X110_Y15_N16
\COUNTER_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~8_combout\ = (\COUNTER_1|COUNT\(4) & (\COUNTER_1|Add0~7\ $ (GND))) # (!\COUNTER_1|COUNT\(4) & (!\COUNTER_1|Add0~7\ & VCC))
-- \COUNTER_1|Add0~9\ = CARRY((\COUNTER_1|COUNT\(4) & !\COUNTER_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(4),
	datad => VCC,
	cin => \COUNTER_1|Add0~7\,
	combout => \COUNTER_1|Add0~8_combout\,
	cout => \COUNTER_1|Add0~9\);

-- Location: FF_X110_Y15_N17
\COUNTER_1|NEXT_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(4));

-- Location: LCCOMB_X111_Y14_N28
\COUNTER_1|COUNT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[4]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(4),
	combout => \COUNTER_1|COUNT[4]~feeder_combout\);

-- Location: FF_X111_Y14_N29
\COUNTER_1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[4]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(4));

-- Location: LCCOMB_X111_Y14_N16
\COUNTER_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~6_combout\ = (!\COUNTER_1|COUNT\(1) & (!\COUNTER_1|COUNT\(3) & (!\COUNTER_1|COUNT\(2) & !\COUNTER_1|COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(1),
	datab => \COUNTER_1|COUNT\(3),
	datac => \COUNTER_1|COUNT\(2),
	datad => \COUNTER_1|COUNT\(4),
	combout => \COUNTER_1|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y15_N18
\COUNTER_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~10_combout\ = (\COUNTER_1|COUNT\(5) & (!\COUNTER_1|Add0~9\)) # (!\COUNTER_1|COUNT\(5) & ((\COUNTER_1|Add0~9\) # (GND)))
-- \COUNTER_1|Add0~11\ = CARRY((!\COUNTER_1|Add0~9\) # (!\COUNTER_1|COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(5),
	datad => VCC,
	cin => \COUNTER_1|Add0~9\,
	combout => \COUNTER_1|Add0~10_combout\,
	cout => \COUNTER_1|Add0~11\);

-- Location: FF_X110_Y15_N19
\COUNTER_1|NEXT_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(5));

-- Location: FF_X110_Y14_N1
\COUNTER_1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(5),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(5));

-- Location: LCCOMB_X110_Y15_N20
\COUNTER_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~12_combout\ = (\COUNTER_1|COUNT\(6) & (\COUNTER_1|Add0~11\ $ (GND))) # (!\COUNTER_1|COUNT\(6) & (!\COUNTER_1|Add0~11\ & VCC))
-- \COUNTER_1|Add0~13\ = CARRY((\COUNTER_1|COUNT\(6) & !\COUNTER_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(6),
	datad => VCC,
	cin => \COUNTER_1|Add0~11\,
	combout => \COUNTER_1|Add0~12_combout\,
	cout => \COUNTER_1|Add0~13\);

-- Location: LCCOMB_X111_Y15_N30
\COUNTER_1|NEXT_COUNT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~11_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~12_combout\,
	combout => \COUNTER_1|NEXT_COUNT~11_combout\);

-- Location: FF_X111_Y15_N31
\COUNTER_1|NEXT_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(6));

-- Location: FF_X111_Y14_N19
\COUNTER_1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(6),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(6));

-- Location: LCCOMB_X110_Y15_N22
\COUNTER_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~14_combout\ = (\COUNTER_1|COUNT\(7) & (!\COUNTER_1|Add0~13\)) # (!\COUNTER_1|COUNT\(7) & ((\COUNTER_1|Add0~13\) # (GND)))
-- \COUNTER_1|Add0~15\ = CARRY((!\COUNTER_1|Add0~13\) # (!\COUNTER_1|COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(7),
	datad => VCC,
	cin => \COUNTER_1|Add0~13\,
	combout => \COUNTER_1|Add0~14_combout\,
	cout => \COUNTER_1|Add0~15\);

-- Location: FF_X110_Y15_N23
\COUNTER_1|NEXT_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~14_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(7));

-- Location: LCCOMB_X111_Y14_N22
\COUNTER_1|COUNT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[7]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|NEXT_COUNT\(7),
	combout => \COUNTER_1|COUNT[7]~feeder_combout\);

-- Location: FF_X111_Y14_N23
\COUNTER_1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[7]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(7));

-- Location: LCCOMB_X110_Y15_N24
\COUNTER_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~16_combout\ = (\COUNTER_1|COUNT\(8) & (\COUNTER_1|Add0~15\ $ (GND))) # (!\COUNTER_1|COUNT\(8) & (!\COUNTER_1|Add0~15\ & VCC))
-- \COUNTER_1|Add0~17\ = CARRY((\COUNTER_1|COUNT\(8) & !\COUNTER_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(8),
	datad => VCC,
	cin => \COUNTER_1|Add0~15\,
	combout => \COUNTER_1|Add0~16_combout\,
	cout => \COUNTER_1|Add0~17\);

-- Location: FF_X110_Y15_N25
\COUNTER_1|NEXT_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~16_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(8));

-- Location: LCCOMB_X111_Y14_N10
\COUNTER_1|COUNT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[8]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(8),
	combout => \COUNTER_1|COUNT[8]~feeder_combout\);

-- Location: FF_X111_Y14_N11
\COUNTER_1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[8]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(8));

-- Location: LCCOMB_X111_Y14_N14
\COUNTER_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~5_combout\ = (!\COUNTER_1|COUNT\(7) & (\COUNTER_1|COUNT\(6) & (!\COUNTER_1|COUNT\(5) & !\COUNTER_1|COUNT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(7),
	datab => \COUNTER_1|COUNT\(6),
	datac => \COUNTER_1|COUNT\(5),
	datad => \COUNTER_1|COUNT\(8),
	combout => \COUNTER_1|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y15_N26
\COUNTER_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~18_combout\ = (\COUNTER_1|COUNT\(9) & (!\COUNTER_1|Add0~17\)) # (!\COUNTER_1|COUNT\(9) & ((\COUNTER_1|Add0~17\) # (GND)))
-- \COUNTER_1|Add0~19\ = CARRY((!\COUNTER_1|Add0~17\) # (!\COUNTER_1|COUNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(9),
	datad => VCC,
	cin => \COUNTER_1|Add0~17\,
	combout => \COUNTER_1|Add0~18_combout\,
	cout => \COUNTER_1|Add0~19\);

-- Location: FF_X110_Y15_N27
\COUNTER_1|NEXT_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(9));

-- Location: LCCOMB_X111_Y14_N12
\COUNTER_1|COUNT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[9]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(9),
	combout => \COUNTER_1|COUNT[9]~feeder_combout\);

-- Location: FF_X111_Y14_N13
\COUNTER_1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[9]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(9));

-- Location: LCCOMB_X110_Y15_N28
\COUNTER_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~20_combout\ = (\COUNTER_1|COUNT\(10) & (\COUNTER_1|Add0~19\ $ (GND))) # (!\COUNTER_1|COUNT\(10) & (!\COUNTER_1|Add0~19\ & VCC))
-- \COUNTER_1|Add0~21\ = CARRY((\COUNTER_1|COUNT\(10) & !\COUNTER_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(10),
	datad => VCC,
	cin => \COUNTER_1|Add0~19\,
	combout => \COUNTER_1|Add0~20_combout\,
	cout => \COUNTER_1|Add0~21\);

-- Location: FF_X110_Y15_N29
\COUNTER_1|NEXT_COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(10));

-- Location: FF_X111_Y14_N27
\COUNTER_1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(10),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(10));

-- Location: LCCOMB_X110_Y15_N30
\COUNTER_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~22_combout\ = (\COUNTER_1|COUNT\(11) & (!\COUNTER_1|Add0~21\)) # (!\COUNTER_1|COUNT\(11) & ((\COUNTER_1|Add0~21\) # (GND)))
-- \COUNTER_1|Add0~23\ = CARRY((!\COUNTER_1|Add0~21\) # (!\COUNTER_1|COUNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(11),
	datad => VCC,
	cin => \COUNTER_1|Add0~21\,
	combout => \COUNTER_1|Add0~22_combout\,
	cout => \COUNTER_1|Add0~23\);

-- Location: LCCOMB_X111_Y15_N8
\COUNTER_1|NEXT_COUNT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~10_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~22_combout\,
	combout => \COUNTER_1|NEXT_COUNT~10_combout\);

-- Location: FF_X111_Y15_N9
\COUNTER_1|NEXT_COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(11));

-- Location: LCCOMB_X111_Y14_N4
\COUNTER_1|COUNT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[11]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(11),
	combout => \COUNTER_1|COUNT[11]~feeder_combout\);

-- Location: FF_X111_Y14_N5
\COUNTER_1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[11]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(11));

-- Location: LCCOMB_X110_Y14_N0
\COUNTER_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~24_combout\ = (\COUNTER_1|COUNT\(12) & (\COUNTER_1|Add0~23\ $ (GND))) # (!\COUNTER_1|COUNT\(12) & (!\COUNTER_1|Add0~23\ & VCC))
-- \COUNTER_1|Add0~25\ = CARRY((\COUNTER_1|COUNT\(12) & !\COUNTER_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(12),
	datad => VCC,
	cin => \COUNTER_1|Add0~23\,
	combout => \COUNTER_1|Add0~24_combout\,
	cout => \COUNTER_1|Add0~25\);

-- Location: LCCOMB_X109_Y14_N6
\COUNTER_1|NEXT_COUNT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~9_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~7_combout\,
	datac => \COUNTER_1|Add0~24_combout\,
	combout => \COUNTER_1|NEXT_COUNT~9_combout\);

-- Location: FF_X109_Y14_N7
\COUNTER_1|NEXT_COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~9_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(12));

-- Location: LCCOMB_X111_Y14_N20
\COUNTER_1|COUNT[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|COUNT[12]~feeder_combout\ = \COUNTER_1|NEXT_COUNT\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|NEXT_COUNT\(12),
	combout => \COUNTER_1|COUNT[12]~feeder_combout\);

-- Location: FF_X111_Y14_N21
\COUNTER_1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|COUNT[12]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(12));

-- Location: LCCOMB_X111_Y14_N26
\COUNTER_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~3_combout\ = (!\COUNTER_1|COUNT\(9) & (\COUNTER_1|COUNT\(11) & (!\COUNTER_1|COUNT\(10) & \COUNTER_1|COUNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(9),
	datab => \COUNTER_1|COUNT\(11),
	datac => \COUNTER_1|COUNT\(10),
	datad => \COUNTER_1|COUNT\(12),
	combout => \COUNTER_1|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y14_N2
\COUNTER_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~26_combout\ = (\COUNTER_1|COUNT\(13) & (!\COUNTER_1|Add0~25\)) # (!\COUNTER_1|COUNT\(13) & ((\COUNTER_1|Add0~25\) # (GND)))
-- \COUNTER_1|Add0~27\ = CARRY((!\COUNTER_1|Add0~25\) # (!\COUNTER_1|COUNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(13),
	datad => VCC,
	cin => \COUNTER_1|Add0~25\,
	combout => \COUNTER_1|Add0~26_combout\,
	cout => \COUNTER_1|Add0~27\);

-- Location: LCCOMB_X109_Y14_N4
\COUNTER_1|NEXT_COUNT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~8_combout\ = (\COUNTER_1|Add0~26_combout\ & !\COUNTER_1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|Add0~26_combout\,
	datac => \COUNTER_1|Equal0~7_combout\,
	combout => \COUNTER_1|NEXT_COUNT~8_combout\);

-- Location: FF_X109_Y14_N5
\COUNTER_1|NEXT_COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(13));

-- Location: FF_X110_Y14_N31
\COUNTER_1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(13),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(13));

-- Location: LCCOMB_X110_Y14_N4
\COUNTER_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~28_combout\ = (\COUNTER_1|COUNT\(14) & (\COUNTER_1|Add0~27\ $ (GND))) # (!\COUNTER_1|COUNT\(14) & (!\COUNTER_1|Add0~27\ & VCC))
-- \COUNTER_1|Add0~29\ = CARRY((\COUNTER_1|COUNT\(14) & !\COUNTER_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(14),
	datad => VCC,
	cin => \COUNTER_1|Add0~27\,
	combout => \COUNTER_1|Add0~28_combout\,
	cout => \COUNTER_1|Add0~29\);

-- Location: LCCOMB_X109_Y14_N22
\COUNTER_1|NEXT_COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~7_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~28_combout\,
	combout => \COUNTER_1|NEXT_COUNT~7_combout\);

-- Location: FF_X109_Y14_N23
\COUNTER_1|NEXT_COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(14));

-- Location: FF_X110_Y14_N5
\COUNTER_1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(14),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(14));

-- Location: LCCOMB_X110_Y14_N6
\COUNTER_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~30_combout\ = (\COUNTER_1|COUNT\(15) & (!\COUNTER_1|Add0~29\)) # (!\COUNTER_1|COUNT\(15) & ((\COUNTER_1|Add0~29\) # (GND)))
-- \COUNTER_1|Add0~31\ = CARRY((!\COUNTER_1|Add0~29\) # (!\COUNTER_1|COUNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(15),
	datad => VCC,
	cin => \COUNTER_1|Add0~29\,
	combout => \COUNTER_1|Add0~30_combout\,
	cout => \COUNTER_1|Add0~31\);

-- Location: FF_X110_Y14_N7
\COUNTER_1|NEXT_COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~30_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(15));

-- Location: FF_X110_Y14_N13
\COUNTER_1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(15),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(15));

-- Location: LCCOMB_X110_Y14_N8
\COUNTER_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~32_combout\ = (\COUNTER_1|COUNT\(16) & (\COUNTER_1|Add0~31\ $ (GND))) # (!\COUNTER_1|COUNT\(16) & (!\COUNTER_1|Add0~31\ & VCC))
-- \COUNTER_1|Add0~33\ = CARRY((\COUNTER_1|COUNT\(16) & !\COUNTER_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(16),
	datad => VCC,
	cin => \COUNTER_1|Add0~31\,
	combout => \COUNTER_1|Add0~32_combout\,
	cout => \COUNTER_1|Add0~33\);

-- Location: LCCOMB_X109_Y14_N16
\COUNTER_1|NEXT_COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~6_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~7_combout\,
	datac => \COUNTER_1|Add0~32_combout\,
	combout => \COUNTER_1|NEXT_COUNT~6_combout\);

-- Location: FF_X109_Y14_N17
\COUNTER_1|NEXT_COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(16));

-- Location: FF_X110_Y14_N9
\COUNTER_1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(16),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(16));

-- Location: LCCOMB_X110_Y14_N10
\COUNTER_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~34_combout\ = (\COUNTER_1|COUNT\(17) & (!\COUNTER_1|Add0~33\)) # (!\COUNTER_1|COUNT\(17) & ((\COUNTER_1|Add0~33\) # (GND)))
-- \COUNTER_1|Add0~35\ = CARRY((!\COUNTER_1|Add0~33\) # (!\COUNTER_1|COUNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(17),
	datad => VCC,
	cin => \COUNTER_1|Add0~33\,
	combout => \COUNTER_1|Add0~34_combout\,
	cout => \COUNTER_1|Add0~35\);

-- Location: FF_X110_Y14_N11
\COUNTER_1|NEXT_COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~34_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(17));

-- Location: FF_X110_Y14_N19
\COUNTER_1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(17),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(17));

-- Location: LCCOMB_X110_Y14_N12
\COUNTER_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~36_combout\ = (\COUNTER_1|COUNT\(18) & (\COUNTER_1|Add0~35\ $ (GND))) # (!\COUNTER_1|COUNT\(18) & (!\COUNTER_1|Add0~35\ & VCC))
-- \COUNTER_1|Add0~37\ = CARRY((\COUNTER_1|COUNT\(18) & !\COUNTER_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(18),
	datad => VCC,
	cin => \COUNTER_1|Add0~35\,
	combout => \COUNTER_1|Add0~36_combout\,
	cout => \COUNTER_1|Add0~37\);

-- Location: LCCOMB_X109_Y14_N26
\COUNTER_1|NEXT_COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~5_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~7_combout\,
	datac => \COUNTER_1|Add0~36_combout\,
	combout => \COUNTER_1|NEXT_COUNT~5_combout\);

-- Location: FF_X109_Y14_N27
\COUNTER_1|NEXT_COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(18));

-- Location: FF_X110_Y14_N29
\COUNTER_1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(18),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(18));

-- Location: LCCOMB_X110_Y14_N14
\COUNTER_1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~38_combout\ = (\COUNTER_1|COUNT\(19) & (!\COUNTER_1|Add0~37\)) # (!\COUNTER_1|COUNT\(19) & ((\COUNTER_1|Add0~37\) # (GND)))
-- \COUNTER_1|Add0~39\ = CARRY((!\COUNTER_1|Add0~37\) # (!\COUNTER_1|COUNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(19),
	datad => VCC,
	cin => \COUNTER_1|Add0~37\,
	combout => \COUNTER_1|Add0~38_combout\,
	cout => \COUNTER_1|Add0~39\);

-- Location: LCCOMB_X109_Y14_N0
\COUNTER_1|NEXT_COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~4_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~7_combout\,
	datac => \COUNTER_1|Add0~38_combout\,
	combout => \COUNTER_1|NEXT_COUNT~4_combout\);

-- Location: FF_X109_Y14_N1
\COUNTER_1|NEXT_COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(19));

-- Location: FF_X110_Y14_N15
\COUNTER_1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(19),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(19));

-- Location: LCCOMB_X110_Y14_N16
\COUNTER_1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~40_combout\ = (\COUNTER_1|COUNT\(20) & (\COUNTER_1|Add0~39\ $ (GND))) # (!\COUNTER_1|COUNT\(20) & (!\COUNTER_1|Add0~39\ & VCC))
-- \COUNTER_1|Add0~41\ = CARRY((\COUNTER_1|COUNT\(20) & !\COUNTER_1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(20),
	datad => VCC,
	cin => \COUNTER_1|Add0~39\,
	combout => \COUNTER_1|Add0~40_combout\,
	cout => \COUNTER_1|Add0~41\);

-- Location: LCCOMB_X109_Y14_N14
\COUNTER_1|NEXT_COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~3_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~40_combout\,
	combout => \COUNTER_1|NEXT_COUNT~3_combout\);

-- Location: FF_X109_Y14_N15
\COUNTER_1|NEXT_COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(20));

-- Location: FF_X110_Y14_N17
\COUNTER_1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(20),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(20));

-- Location: LCCOMB_X110_Y14_N28
\COUNTER_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~1_combout\ = (\COUNTER_1|COUNT\(20) & (\COUNTER_1|COUNT\(19) & (\COUNTER_1|COUNT\(18) & !\COUNTER_1|COUNT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(20),
	datab => \COUNTER_1|COUNT\(19),
	datac => \COUNTER_1|COUNT\(18),
	datad => \COUNTER_1|COUNT\(17),
	combout => \COUNTER_1|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y14_N18
\COUNTER_1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~42_combout\ = (\COUNTER_1|COUNT\(21) & (!\COUNTER_1|Add0~41\)) # (!\COUNTER_1|COUNT\(21) & ((\COUNTER_1|Add0~41\) # (GND)))
-- \COUNTER_1|Add0~43\ = CARRY((!\COUNTER_1|Add0~41\) # (!\COUNTER_1|COUNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(21),
	datad => VCC,
	cin => \COUNTER_1|Add0~41\,
	combout => \COUNTER_1|Add0~42_combout\,
	cout => \COUNTER_1|Add0~43\);

-- Location: LCCOMB_X109_Y14_N20
\COUNTER_1|NEXT_COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~2_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~42_combout\,
	combout => \COUNTER_1|NEXT_COUNT~2_combout\);

-- Location: FF_X109_Y14_N21
\COUNTER_1|NEXT_COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(21));

-- Location: FF_X110_Y14_N27
\COUNTER_1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(21),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(21));

-- Location: LCCOMB_X110_Y14_N20
\COUNTER_1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~44_combout\ = (\COUNTER_1|COUNT\(22) & (\COUNTER_1|Add0~43\ $ (GND))) # (!\COUNTER_1|COUNT\(22) & (!\COUNTER_1|Add0~43\ & VCC))
-- \COUNTER_1|Add0~45\ = CARRY((\COUNTER_1|COUNT\(22) & !\COUNTER_1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(22),
	datad => VCC,
	cin => \COUNTER_1|Add0~43\,
	combout => \COUNTER_1|Add0~44_combout\,
	cout => \COUNTER_1|Add0~45\);

-- Location: LCCOMB_X109_Y14_N18
\COUNTER_1|NEXT_COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~1_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~7_combout\,
	datac => \COUNTER_1|Add0~44_combout\,
	combout => \COUNTER_1|NEXT_COUNT~1_combout\);

-- Location: FF_X109_Y14_N19
\COUNTER_1|NEXT_COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(22));

-- Location: FF_X110_Y14_N21
\COUNTER_1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(22),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(22));

-- Location: LCCOMB_X110_Y14_N22
\COUNTER_1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~46_combout\ = (\COUNTER_1|COUNT\(23) & (!\COUNTER_1|Add0~45\)) # (!\COUNTER_1|COUNT\(23) & ((\COUNTER_1|Add0~45\) # (GND)))
-- \COUNTER_1|Add0~47\ = CARRY((!\COUNTER_1|Add0~45\) # (!\COUNTER_1|COUNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER_1|COUNT\(23),
	datad => VCC,
	cin => \COUNTER_1|Add0~45\,
	combout => \COUNTER_1|Add0~46_combout\,
	cout => \COUNTER_1|Add0~47\);

-- Location: FF_X110_Y14_N23
\COUNTER_1|NEXT_COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|Add0~46_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(23));

-- Location: FF_X110_Y14_N3
\COUNTER_1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(23),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(23));

-- Location: LCCOMB_X110_Y14_N24
\COUNTER_1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Add0~48_combout\ = \COUNTER_1|Add0~47\ $ (!\COUNTER_1|COUNT\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|COUNT\(24),
	cin => \COUNTER_1|Add0~47\,
	combout => \COUNTER_1|Add0~48_combout\);

-- Location: LCCOMB_X109_Y14_N28
\COUNTER_1|NEXT_COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|NEXT_COUNT~0_combout\ = (!\COUNTER_1|Equal0~7_combout\ & \COUNTER_1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNTER_1|Equal0~7_combout\,
	datad => \COUNTER_1|Add0~48_combout\,
	combout => \COUNTER_1|NEXT_COUNT~0_combout\);

-- Location: FF_X109_Y14_N29
\COUNTER_1|NEXT_COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	d => \COUNTER_1|NEXT_COUNT~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|NEXT_COUNT\(24));

-- Location: FF_X110_Y14_N25
\COUNTER_1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~clkctrl_outclk\,
	asdata => \COUNTER_1|NEXT_COUNT\(24),
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|COUNT\(24));

-- Location: LCCOMB_X110_Y14_N26
\COUNTER_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~0_combout\ = (\COUNTER_1|COUNT\(24) & (\COUNTER_1|COUNT\(22) & (\COUNTER_1|COUNT\(21) & !\COUNTER_1|COUNT\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(24),
	datab => \COUNTER_1|COUNT\(22),
	datac => \COUNTER_1|COUNT\(21),
	datad => \COUNTER_1|COUNT\(23),
	combout => \COUNTER_1|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y14_N30
\COUNTER_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~2_combout\ = (!\COUNTER_1|COUNT\(15) & (\COUNTER_1|COUNT\(14) & (\COUNTER_1|COUNT\(13) & \COUNTER_1|COUNT\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(15),
	datab => \COUNTER_1|COUNT\(14),
	datac => \COUNTER_1|COUNT\(13),
	datad => \COUNTER_1|COUNT\(16),
	combout => \COUNTER_1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y14_N0
\COUNTER_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~4_combout\ = (\COUNTER_1|Equal0~3_combout\ & (\COUNTER_1|Equal0~1_combout\ & (\COUNTER_1|Equal0~0_combout\ & \COUNTER_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|Equal0~3_combout\,
	datab => \COUNTER_1|Equal0~1_combout\,
	datac => \COUNTER_1|Equal0~0_combout\,
	datad => \COUNTER_1|Equal0~2_combout\,
	combout => \COUNTER_1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y14_N24
\COUNTER_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|Equal0~7_combout\ = (!\COUNTER_1|COUNT\(0) & (\COUNTER_1|Equal0~6_combout\ & (\COUNTER_1|Equal0~5_combout\ & \COUNTER_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER_1|COUNT\(0),
	datab => \COUNTER_1|Equal0~6_combout\,
	datac => \COUNTER_1|Equal0~5_combout\,
	datad => \COUNTER_1|Equal0~4_combout\,
	combout => \COUNTER_1|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y14_N6
\COUNTER_1|DONE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_1|DONE~feeder_combout\ = \COUNTER_1|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER_1|Equal0~7_combout\,
	combout => \COUNTER_1|DONE~feeder_combout\);

-- Location: FF_X111_Y14_N7
\COUNTER_1|DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INTERN_CLOCK~combout\,
	d => \COUNTER_1|DONE~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER_1|DONE~q\);

-- Location: LCCOMB_X112_Y14_N12
FSM_CLOCK : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_CLOCK~combout\ = LCELL((!\RESET~input_o\ & ((\COUNTER_1|DONE~q\) # (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datac => \COUNTER_1|DONE~q\,
	datad => \RESET~input_o\,
	combout => \FSM_CLOCK~combout\);

-- Location: LCCOMB_X112_Y14_N24
\FSM_1|STATE[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|STATE[0]~1_combout\ = !\FSM_1|STATE\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_1|STATE\(0),
	combout => \FSM_1|STATE[0]~1_combout\);

-- Location: FF_X112_Y14_N25
\FSM_1|STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM_CLOCK~combout\,
	d => \FSM_1|STATE[0]~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_1|STATE\(0));

-- Location: LCCOMB_X112_Y14_N30
\FSM_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux3~0_combout\ = (!\FSM_1|STATE\(0) & (!\FSM_1|STATE\(1) & !\FSM_1|STATE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_1|STATE\(0),
	datac => \FSM_1|STATE\(1),
	datad => \FSM_1|STATE\(2),
	combout => \FSM_1|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y14_N28
\FSM_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_1|Mux5~0_combout\ = (\FSM_1|STATE\(2)) # ((\FSM_1|STATE\(0) & \FSM_1|STATE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_1|STATE\(0),
	datac => \FSM_1|STATE\(1),
	datad => \FSM_1|STATE\(2),
	combout => \FSM_1|Mux5~0_combout\);

ww_RED <= \RED~output_o\;

ww_YELLOW <= \YELLOW~output_o\;

ww_GREEN <= \GREEN~output_o\;
END structure;


