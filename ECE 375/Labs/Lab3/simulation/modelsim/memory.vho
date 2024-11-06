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

-- DATE "11/05/2024 18:58:35"

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

ENTITY 	Memory IS
    PORT (
	clk : IN std_logic;
	Ld : IN std_logic;
	ReadAddr : IN std_logic_vector(1 DOWNTO 0);
	WriteAddr : IN std_logic_vector(1 DOWNTO 0);
	Memin : IN std_logic_vector(5 DOWNTO 0);
	Memout : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END Memory;

-- Design Ports Information
-- Memout[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadAddr[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadAddr[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteAddr[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteAddr[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Memory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Ld : std_logic;
SIGNAL ww_ReadAddr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_WriteAddr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Memin : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Memout : std_logic_vector(5 DOWNTO 0);
SIGNAL \Memout[0]~output_o\ : std_logic;
SIGNAL \Memout[1]~output_o\ : std_logic;
SIGNAL \Memout[2]~output_o\ : std_logic;
SIGNAL \Memout[3]~output_o\ : std_logic;
SIGNAL \Memout[4]~output_o\ : std_logic;
SIGNAL \Memout[5]~output_o\ : std_logic;
SIGNAL \ReadAddr[1]~input_o\ : std_logic;
SIGNAL \ReadAddr[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Memin[0]~input_o\ : std_logic;
SIGNAL \WriteAddr[0]~input_o\ : std_logic;
SIGNAL \WriteAddr[1]~input_o\ : std_logic;
SIGNAL \Ld~input_o\ : std_logic;
SIGNAL \memory[0][0]~0_combout\ : std_logic;
SIGNAL \memory[0][0]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \memory[1][0]~q\ : std_logic;
SIGNAL \Memout~0_combout\ : std_logic;
SIGNAL \memory[3][0]~feeder_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \memory[3][0]~q\ : std_logic;
SIGNAL \memory[2][0]~feeder_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \memory[2][0]~q\ : std_logic;
SIGNAL \Memout~1_combout\ : std_logic;
SIGNAL \Memin[1]~input_o\ : std_logic;
SIGNAL \memory[2][1]~q\ : std_logic;
SIGNAL \memory[0][1]~q\ : std_logic;
SIGNAL \Memout~2_combout\ : std_logic;
SIGNAL \memory[3][1]~q\ : std_logic;
SIGNAL \memory[1][1]~q\ : std_logic;
SIGNAL \Memout~3_combout\ : std_logic;
SIGNAL \Memin[2]~input_o\ : std_logic;
SIGNAL \memory[2][2]~q\ : std_logic;
SIGNAL \memory[3][2]~q\ : std_logic;
SIGNAL \memory[0][2]~q\ : std_logic;
SIGNAL \memory[1][2]~q\ : std_logic;
SIGNAL \Memout~4_combout\ : std_logic;
SIGNAL \Memout~5_combout\ : std_logic;
SIGNAL \Memin[3]~input_o\ : std_logic;
SIGNAL \memory[1][3]~q\ : std_logic;
SIGNAL \memory[3][3]~q\ : std_logic;
SIGNAL \memory[2][3]~q\ : std_logic;
SIGNAL \memory[0][3]~q\ : std_logic;
SIGNAL \Memout~6_combout\ : std_logic;
SIGNAL \Memout~7_combout\ : std_logic;
SIGNAL \Memin[4]~input_o\ : std_logic;
SIGNAL \memory[1][4]~q\ : std_logic;
SIGNAL \memory[0][4]~q\ : std_logic;
SIGNAL \Memout~8_combout\ : std_logic;
SIGNAL \memory[2][4]~feeder_combout\ : std_logic;
SIGNAL \memory[2][4]~q\ : std_logic;
SIGNAL \memory[3][4]~q\ : std_logic;
SIGNAL \Memout~9_combout\ : std_logic;
SIGNAL \Memin[5]~input_o\ : std_logic;
SIGNAL \memory[3][5]~feeder_combout\ : std_logic;
SIGNAL \memory[3][5]~q\ : std_logic;
SIGNAL \memory[2][5]~feeder_combout\ : std_logic;
SIGNAL \memory[2][5]~q\ : std_logic;
SIGNAL \memory[0][5]~q\ : std_logic;
SIGNAL \Memout~10_combout\ : std_logic;
SIGNAL \memory[1][5]~q\ : std_logic;
SIGNAL \Memout~11_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_Ld <= Ld;
ww_ReadAddr <= ReadAddr;
ww_WriteAddr <= WriteAddr;
ww_Memin <= Memin;
Memout <= ww_Memout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\Memout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~1_combout\,
	devoe => ww_devoe,
	o => \Memout[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Memout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~3_combout\,
	devoe => ww_devoe,
	o => \Memout[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Memout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~5_combout\,
	devoe => ww_devoe,
	o => \Memout[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Memout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~7_combout\,
	devoe => ww_devoe,
	o => \Memout[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Memout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~9_combout\,
	devoe => ww_devoe,
	o => \Memout[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Memout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memout~11_combout\,
	devoe => ww_devoe,
	o => \Memout[5]~output_o\);

-- Location: IOIBUF_X115_Y15_N1
\ReadAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadAddr(1),
	o => \ReadAddr[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\ReadAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadAddr(0),
	o => \ReadAddr[0]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Memin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(0),
	o => \Memin[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\WriteAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteAddr(0),
	o => \WriteAddr[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\WriteAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteAddr(1),
	o => \WriteAddr[1]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\Ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld,
	o => \Ld~input_o\);

-- Location: LCCOMB_X112_Y30_N20
\memory[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[0][0]~0_combout\ = (!\WriteAddr[0]~input_o\ & (!\WriteAddr[1]~input_o\ & !\Ld~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteAddr[0]~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \Ld~input_o\,
	combout => \memory[0][0]~0_combout\);

-- Location: FF_X114_Y39_N3
\memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[0]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][0]~q\);

-- Location: LCCOMB_X112_Y30_N18
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\WriteAddr[0]~input_o\ & (!\WriteAddr[1]~input_o\ & !\Ld~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteAddr[0]~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \Ld~input_o\,
	combout => \Mux12~1_combout\);

-- Location: FF_X114_Y39_N17
\memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[0]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][0]~q\);

-- Location: LCCOMB_X114_Y39_N2
\Memout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~0_combout\ = (\ReadAddr[1]~input_o\ & (\ReadAddr[0]~input_o\)) # (!\ReadAddr[1]~input_o\ & ((\ReadAddr[0]~input_o\ & ((\memory[1][0]~q\))) # (!\ReadAddr[0]~input_o\ & (\memory[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadAddr[1]~input_o\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][0]~q\,
	datad => \memory[1][0]~q\,
	combout => \Memout~0_combout\);

-- Location: LCCOMB_X114_Y40_N26
\memory[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[3][0]~feeder_combout\ = \Memin[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[0]~input_o\,
	combout => \memory[3][0]~feeder_combout\);

-- Location: LCCOMB_X112_Y30_N14
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\WriteAddr[0]~input_o\ & (\WriteAddr[1]~input_o\ & !\Ld~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteAddr[0]~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \Ld~input_o\,
	combout => \Mux12~2_combout\);

-- Location: FF_X114_Y40_N27
\memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memory[3][0]~feeder_combout\,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][0]~q\);

-- Location: LCCOMB_X114_Y40_N24
\memory[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][0]~feeder_combout\ = \Memin[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[0]~input_o\,
	combout => \memory[2][0]~feeder_combout\);

-- Location: LCCOMB_X112_Y30_N16
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\WriteAddr[0]~input_o\ & (\WriteAddr[1]~input_o\ & !\Ld~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WriteAddr[0]~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \Ld~input_o\,
	combout => \Mux12~0_combout\);

-- Location: FF_X114_Y40_N25
\memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memory[2][0]~feeder_combout\,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][0]~q\);

-- Location: LCCOMB_X114_Y40_N12
\Memout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~1_combout\ = (\ReadAddr[1]~input_o\ & ((\Memout~0_combout\ & (\memory[3][0]~q\)) # (!\Memout~0_combout\ & ((\memory[2][0]~q\))))) # (!\ReadAddr[1]~input_o\ & (\Memout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadAddr[1]~input_o\,
	datab => \Memout~0_combout\,
	datac => \memory[3][0]~q\,
	datad => \memory[2][0]~q\,
	combout => \Memout~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\Memin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(1),
	o => \Memin[1]~input_o\);

-- Location: FF_X114_Y40_N31
\memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][1]~q\);

-- Location: FF_X114_Y39_N31
\memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][1]~q\);

-- Location: LCCOMB_X114_Y39_N30
\Memout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~2_combout\ = (\ReadAddr[0]~input_o\ & (((\ReadAddr[1]~input_o\)))) # (!\ReadAddr[0]~input_o\ & ((\ReadAddr[1]~input_o\ & (\memory[2][1]~q\)) # (!\ReadAddr[1]~input_o\ & ((\memory[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][1]~q\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][1]~q\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~2_combout\);

-- Location: FF_X114_Y40_N1
\memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][1]~q\);

-- Location: FF_X114_Y39_N13
\memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][1]~q\);

-- Location: LCCOMB_X114_Y39_N8
\Memout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~3_combout\ = (\Memout~2_combout\ & ((\memory[3][1]~q\) # ((!\ReadAddr[0]~input_o\)))) # (!\Memout~2_combout\ & (((\ReadAddr[0]~input_o\ & \memory[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memout~2_combout\,
	datab => \memory[3][1]~q\,
	datac => \ReadAddr[0]~input_o\,
	datad => \memory[1][1]~q\,
	combout => \Memout~3_combout\);

-- Location: IOIBUF_X115_Y15_N8
\Memin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(2),
	o => \Memin[2]~input_o\);

-- Location: FF_X114_Y40_N11
\memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][2]~q\);

-- Location: FF_X114_Y40_N21
\memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][2]~q\);

-- Location: FF_X114_Y39_N5
\memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][2]~q\);

-- Location: FF_X114_Y39_N19
\memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][2]~q\);

-- Location: LCCOMB_X114_Y39_N4
\Memout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~4_combout\ = (\ReadAddr[1]~input_o\ & (\ReadAddr[0]~input_o\)) # (!\ReadAddr[1]~input_o\ & ((\ReadAddr[0]~input_o\ & ((\memory[1][2]~q\))) # (!\ReadAddr[0]~input_o\ & (\memory[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadAddr[1]~input_o\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][2]~q\,
	datad => \memory[1][2]~q\,
	combout => \Memout~4_combout\);

-- Location: LCCOMB_X114_Y40_N22
\Memout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~5_combout\ = (\Memout~4_combout\ & (((\memory[3][2]~q\) # (!\ReadAddr[1]~input_o\)))) # (!\Memout~4_combout\ & (\memory[2][2]~q\ & ((\ReadAddr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][2]~q\,
	datab => \memory[3][2]~q\,
	datac => \Memout~4_combout\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~5_combout\);

-- Location: IOIBUF_X115_Y13_N8
\Memin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(3),
	o => \Memin[3]~input_o\);

-- Location: FF_X114_Y39_N23
\memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][3]~q\);

-- Location: FF_X114_Y40_N19
\memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][3]~q\);

-- Location: FF_X114_Y40_N17
\memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][3]~q\);

-- Location: FF_X114_Y39_N1
\memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][3]~q\);

-- Location: LCCOMB_X114_Y39_N0
\Memout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~6_combout\ = (\ReadAddr[0]~input_o\ & (((\ReadAddr[1]~input_o\)))) # (!\ReadAddr[0]~input_o\ & ((\ReadAddr[1]~input_o\ & (\memory[2][3]~q\)) # (!\ReadAddr[1]~input_o\ & ((\memory[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][3]~q\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][3]~q\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~6_combout\);

-- Location: LCCOMB_X114_Y40_N18
\Memout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~7_combout\ = (\ReadAddr[0]~input_o\ & ((\Memout~6_combout\ & ((\memory[3][3]~q\))) # (!\Memout~6_combout\ & (\memory[1][3]~q\)))) # (!\ReadAddr[0]~input_o\ & (((\Memout~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadAddr[0]~input_o\,
	datab => \memory[1][3]~q\,
	datac => \memory[3][3]~q\,
	datad => \Memout~6_combout\,
	combout => \Memout~7_combout\);

-- Location: IOIBUF_X115_Y18_N8
\Memin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(4),
	o => \Memin[4]~input_o\);

-- Location: FF_X114_Y39_N27
\memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][4]~q\);

-- Location: FF_X114_Y39_N29
\memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][4]~q\);

-- Location: LCCOMB_X114_Y39_N28
\Memout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~8_combout\ = (\ReadAddr[0]~input_o\ & ((\memory[1][4]~q\) # ((\ReadAddr[1]~input_o\)))) # (!\ReadAddr[0]~input_o\ & (((\memory[0][4]~q\ & !\ReadAddr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[1][4]~q\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][4]~q\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~8_combout\);

-- Location: LCCOMB_X114_Y40_N28
\memory[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][4]~feeder_combout\ = \Memin[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[4]~input_o\,
	combout => \memory[2][4]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memory[2][4]~feeder_combout\,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][4]~q\);

-- Location: FF_X114_Y40_N7
\memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][4]~q\);

-- Location: LCCOMB_X114_Y40_N6
\Memout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~9_combout\ = (\Memout~8_combout\ & (((\memory[3][4]~q\) # (!\ReadAddr[1]~input_o\)))) # (!\Memout~8_combout\ & (\memory[2][4]~q\ & ((\ReadAddr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memout~8_combout\,
	datab => \memory[2][4]~q\,
	datac => \memory[3][4]~q\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~9_combout\);

-- Location: IOIBUF_X115_Y11_N8
\Memin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(5),
	o => \Memin[5]~input_o\);

-- Location: LCCOMB_X114_Y40_N2
\memory[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[3][5]~feeder_combout\ = \Memin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[5]~input_o\,
	combout => \memory[3][5]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memory[3][5]~feeder_combout\,
	ena => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[3][5]~q\);

-- Location: LCCOMB_X114_Y40_N8
\memory[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory[2][5]~feeder_combout\ = \Memin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[5]~input_o\,
	combout => \memory[2][5]~feeder_combout\);

-- Location: FF_X114_Y40_N9
\memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memory[2][5]~feeder_combout\,
	ena => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[2][5]~q\);

-- Location: FF_X114_Y39_N25
\memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[5]~input_o\,
	sload => VCC,
	ena => \memory[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[0][5]~q\);

-- Location: LCCOMB_X114_Y39_N24
\Memout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~10_combout\ = (\ReadAddr[0]~input_o\ & (((\ReadAddr[1]~input_o\)))) # (!\ReadAddr[0]~input_o\ & ((\ReadAddr[1]~input_o\ & (\memory[2][5]~q\)) # (!\ReadAddr[1]~input_o\ & ((\memory[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[2][5]~q\,
	datab => \ReadAddr[0]~input_o\,
	datac => \memory[0][5]~q\,
	datad => \ReadAddr[1]~input_o\,
	combout => \Memout~10_combout\);

-- Location: FF_X114_Y39_N7
\memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \Memin[5]~input_o\,
	sload => VCC,
	ena => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory[1][5]~q\);

-- Location: LCCOMB_X114_Y39_N10
\Memout~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memout~11_combout\ = (\Memout~10_combout\ & ((\memory[3][5]~q\) # ((!\ReadAddr[0]~input_o\)))) # (!\Memout~10_combout\ & (((\ReadAddr[0]~input_o\ & \memory[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory[3][5]~q\,
	datab => \Memout~10_combout\,
	datac => \ReadAddr[0]~input_o\,
	datad => \memory[1][5]~q\,
	combout => \Memout~11_combout\);

ww_Memout(0) <= \Memout[0]~output_o\;

ww_Memout(1) <= \Memout[1]~output_o\;

ww_Memout(2) <= \Memout[2]~output_o\;

ww_Memout(3) <= \Memout[3]~output_o\;

ww_Memout(4) <= \Memout[4]~output_o\;

ww_Memout(5) <= \Memout[5]~output_o\;
END structure;


