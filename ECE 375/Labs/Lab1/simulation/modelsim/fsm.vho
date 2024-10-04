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

-- DATE "10/04/2024 18:00:15"

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
	O : BUFFER std_logic
	);
END FSM;

-- Design Ports Information
-- O	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \O~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \STATE~14_combout\ : std_logic;
SIGNAL \STATE.B~q\ : std_logic;
SIGNAL \STATE~16_combout\ : std_logic;
SIGNAL \STATE.C~q\ : std_logic;
SIGNAL \STATE~10_combout\ : std_logic;
SIGNAL \STATE~12_combout\ : std_logic;
SIGNAL \STATE~13_combout\ : std_logic;
SIGNAL \STATE.A~q\ : std_logic;
SIGNAL \STATE~11_combout\ : std_logic;
SIGNAL \STATE~15_combout\ : std_logic;
SIGNAL \STATE.D~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\O~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~0_combout\,
	devoe => ww_devoe,
	o => \O~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X114_Y14_N26
\STATE~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~14_combout\ = (!\RESET~input_o\ & (\X~input_o\ & ((\STATE.B~q\) # (!\STATE.A~q\))))

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
	combout => \STATE~14_combout\);

-- Location: FF_X114_Y14_N27
\STATE.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.B~q\);

-- Location: LCCOMB_X114_Y14_N24
\STATE~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~16_combout\ = (!\RESET~input_o\ & ((\X~input_o\ & (\STATE.C~q\ & \STATE.A~q\)) # (!\X~input_o\ & ((!\STATE.A~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \X~input_o\,
	datac => \STATE.C~q\,
	datad => \STATE.A~q\,
	combout => \STATE~16_combout\);

-- Location: FF_X114_Y14_N25
\STATE.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.C~q\);

-- Location: LCCOMB_X114_Y14_N18
\STATE~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~10_combout\ = (\X~input_o\) # ((!\STATE.B~q\ & !\STATE.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \STATE.B~q\,
	datad => \STATE.C~q\,
	combout => \STATE~10_combout\);

-- Location: LCCOMB_X114_Y14_N30
\STATE~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~12_combout\ = (\X~input_o\) # (!\STATE.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X~input_o\,
	datad => \STATE.D~q\,
	combout => \STATE~12_combout\);

-- Location: LCCOMB_X114_Y14_N4
\STATE~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~13_combout\ = (!\RESET~input_o\ & ((\STATE~12_combout\) # (\STATE~10_combout\ $ (\STATE~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \STATE~10_combout\,
	datac => \STATE~12_combout\,
	datad => \STATE~11_combout\,
	combout => \STATE~13_combout\);

-- Location: FF_X114_Y14_N5
\STATE.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.A~q\);

-- Location: LCCOMB_X114_Y14_N20
\STATE~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~11_combout\ = \STATE.A~q\ $ (((\X~input_o\) # (!\STATE.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \STATE.A~q\,
	datad => \STATE.D~q\,
	combout => \STATE~11_combout\);

-- Location: LCCOMB_X114_Y14_N28
\STATE~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~15_combout\ = (!\RESET~input_o\ & ((\STATE~11_combout\ & (\STATE.D~q\ & !\STATE~10_combout\)) # (!\STATE~11_combout\ & ((\STATE.D~q\) # (!\STATE~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \STATE~11_combout\,
	datac => \STATE.D~q\,
	datad => \STATE~10_combout\,
	combout => \STATE~15_combout\);

-- Location: FF_X114_Y14_N29
\STATE.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.D~q\);

-- Location: LCCOMB_X114_Y14_N22
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\X~input_o\ & (!\STATE.D~q\ & ((\STATE.A~q\)))) # (!\X~input_o\ & (((!\STATE.B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.D~q\,
	datab => \STATE.B~q\,
	datac => \X~input_o\,
	datad => \STATE.A~q\,
	combout => \Selector4~0_combout\);

ww_O <= \O~output_o\;
END structure;


