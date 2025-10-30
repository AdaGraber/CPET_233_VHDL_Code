-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "10/30/2025 14:47:18"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	count_direction : IN std_logic;
	clk : IN std_logic;
	reset_n : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_direction	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count_direction : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count_direction~input_o\ : std_logic;
SIGNAL \int_count~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \int_count~3_combout\ : std_logic;
SIGNAL \int_count~2_combout\ : std_logic;
SIGNAL \int_count~0_combout\ : std_logic;
SIGNAL int_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_count_direction~input_o\ : std_logic;
SIGNAL ALT_INV_int_count : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_count_direction <= count_direction;
ww_clk <= clk;
ww_reset_n <= reset_n;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count_direction~input_o\ <= NOT \count_direction~input_o\;
ALT_INV_int_count(3) <= NOT int_count(3);
ALT_INV_int_count(2) <= NOT int_count(2);
ALT_INV_int_count(1) <= NOT int_count(1);
ALT_INV_int_count(0) <= NOT int_count(0);

-- Location: IOOBUF_X54_Y18_N79
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => int_count(0),
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X54_Y19_N22
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => int_count(1),
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X54_Y20_N5
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => int_count(2),
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X54_Y19_N56
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => int_count(3),
	devoe => ww_devoe,
	o => ww_count(3));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y19_N4
\count_direction~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count_direction,
	o => \count_direction~input_o\);

-- Location: LABCELL_X53_Y19_N33
\int_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_count~1_combout\ = ( int_count(1) & ( int_count(2) & ( (!\count_direction~input_o\ & (int_count(0))) # (\count_direction~input_o\ & ((!int_count(0)) # (int_count(3)))) ) ) ) # ( !int_count(1) & ( int_count(2) & ( !\count_direction~input_o\ $ 
-- (int_count(0)) ) ) ) # ( int_count(1) & ( !int_count(2) & ( !\count_direction~input_o\ $ (!int_count(0)) ) ) ) # ( !int_count(1) & ( !int_count(2) & ( (!\count_direction~input_o\ & (!int_count(0) & int_count(3))) # (\count_direction~input_o\ & 
-- (int_count(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011001111000011110011000011110000110011110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_direction~input_o\,
	datac => ALT_INV_int_count(0),
	datad => ALT_INV_int_count(3),
	datae => ALT_INV_int_count(1),
	dataf => ALT_INV_int_count(2),
	combout => \int_count~1_combout\);

-- Location: IOIBUF_X54_Y19_N38
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X53_Y19_N35
\int_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \int_count~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => int_count(1));

-- Location: LABCELL_X53_Y19_N51
\int_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_count~3_combout\ = ( int_count(3) & ( int_count(1) ) ) # ( !int_count(3) & ( int_count(1) & ( (\count_direction~input_o\ & (int_count(0) & int_count(2))) ) ) ) # ( int_count(3) & ( !int_count(1) & ( ((int_count(2)) # (int_count(0))) # 
-- (\count_direction~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111100000000000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_direction~input_o\,
	datac => ALT_INV_int_count(0),
	datad => ALT_INV_int_count(2),
	datae => ALT_INV_int_count(3),
	dataf => ALT_INV_int_count(1),
	combout => \int_count~3_combout\);

-- Location: FF_X53_Y19_N53
\int_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \int_count~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => int_count(3));

-- Location: LABCELL_X53_Y19_N24
\int_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_count~2_combout\ = ( int_count(2) & ( int_count(1) & ( (!\count_direction~input_o\) # ((!int_count(0)) # (int_count(3))) ) ) ) # ( !int_count(2) & ( int_count(1) & ( (\count_direction~input_o\ & int_count(0)) ) ) ) # ( int_count(2) & ( !int_count(1) 
-- & ( (int_count(0)) # (\count_direction~input_o\) ) ) ) # ( !int_count(2) & ( !int_count(1) & ( (!\count_direction~input_o\ & (int_count(3) & !int_count(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001100111111111100000000001100111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_direction~input_o\,
	datac => ALT_INV_int_count(3),
	datad => ALT_INV_int_count(0),
	datae => ALT_INV_int_count(2),
	dataf => ALT_INV_int_count(1),
	combout => \int_count~2_combout\);

-- Location: FF_X53_Y19_N26
\int_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \int_count~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => int_count(2));

-- Location: LABCELL_X53_Y19_N12
\int_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_count~0_combout\ = ( int_count(0) & ( int_count(1) & ( (int_count(2) & (\count_direction~input_o\ & int_count(3))) ) ) ) # ( !int_count(0) & ( int_count(1) ) ) # ( !int_count(0) & ( !int_count(1) & ( ((int_count(3)) # (\count_direction~input_o\)) # 
-- (int_count(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111000000000000000011111111111111110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_int_count(2),
	datab => \ALT_INV_count_direction~input_o\,
	datac => ALT_INV_int_count(3),
	datae => ALT_INV_int_count(0),
	dataf => ALT_INV_int_count(1),
	combout => \int_count~0_combout\);

-- Location: FF_X53_Y19_N14
\int_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \int_count~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => int_count(0));

-- Location: MLABCELL_X37_Y14_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


