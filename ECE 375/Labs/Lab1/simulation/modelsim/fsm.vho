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

-- DATE "09/26/2024 21:27:15"

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

ENTITY 	FSM IS
    PORT (
	X : IN std_logic;
	CLOCK : IN std_logic;
	RESET : IN std_logic;
	O : OUT std_logic
	);
END FSM;

-- Design Ports Information
-- O	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_O : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \STATE~7_combout\ : std_logic;
SIGNAL \STATE.B~q\ : std_logic;
SIGNAL \STATE~10_combout\ : std_logic;
SIGNAL \STATE~9_combout\ : std_logic;
SIGNAL \STATE.C~q\ : std_logic;
SIGNAL \STATE~8_combout\ : std_logic;
SIGNAL \STATE.D~q\ : std_logic;
SIGNAL \STATE~6_combout\ : std_logic;
SIGNAL \STATE.A~q\ : std_logic;
SIGNAL \O~0_combout\ : std_logic;
SIGNAL \O~1_combout\ : std_logic;
SIGNAL \O~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_CLOCK <= CLOCK;
ww_RESET <= RESET;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N23
\O~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O~reg0_q\,
	devoe => ww_devoe,
	o => \O~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G2
\CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y33_N22
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X1_Y33_N4
\STATE~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~7_combout\ = (!\RESET~input_o\ & (\X~input_o\ & ((\STATE.B~q\) # (!\STATE.A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \X~input_o\,
	datac => \STATE.B~q\,
	datad => \STATE.A~q\,
	combout => \STATE~7_combout\);

-- Location: FF_X1_Y33_N5
\STATE.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \STATE~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.B~q\);

-- Location: LCCOMB_X1_Y33_N18
\STATE~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~10_combout\ = (!\RESET~input_o\ & !\STATE.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \STATE.A~q\,
	combout => \STATE~10_combout\);

-- Location: LCCOMB_X1_Y33_N12
\STATE~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~9_combout\ = (\RESET~input_o\) # (!\X~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \X~input_o\,
	combout => \STATE~9_combout\);

-- Location: FF_X1_Y33_N19
\STATE.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \STATE~10_combout\,
	ena => \STATE~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.C~q\);

-- Location: LCCOMB_X1_Y33_N2
\STATE~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~8_combout\ = (!\RESET~input_o\ & ((\STATE.B~q\) # (\STATE.C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \STATE.B~q\,
	datad => \STATE.C~q\,
	combout => \STATE~8_combout\);

-- Location: FF_X1_Y33_N3
\STATE.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \STATE~8_combout\,
	ena => \STATE~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.D~q\);

-- Location: LCCOMB_X1_Y33_N6
\STATE~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~6_combout\ = (!\RESET~input_o\ & ((\X~input_o\) # (!\STATE.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \X~input_o\,
	datad => \STATE.D~q\,
	combout => \STATE~6_combout\);

-- Location: FF_X1_Y33_N7
\STATE.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \STATE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.A~q\);

-- Location: LCCOMB_X1_Y33_N20
\O~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \O~0_combout\ = (!\RESET~input_o\ & ((!\STATE.D~q\) # (!\X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \X~input_o\,
	datad => \STATE.D~q\,
	combout => \O~0_combout\);

-- Location: LCCOMB_X1_Y33_N16
\O~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \O~1_combout\ = (\O~0_combout\ & ((\X~input_o\ & (\STATE.A~q\)) # (!\X~input_o\ & ((!\STATE.B~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.A~q\,
	datab => \X~input_o\,
	datac => \STATE.B~q\,
	datad => \O~0_combout\,
	combout => \O~1_combout\);

-- Location: FF_X1_Y33_N17
\O~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \O~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \O~reg0_q\);

ww_O <= \O~output_o\;
END structure;


