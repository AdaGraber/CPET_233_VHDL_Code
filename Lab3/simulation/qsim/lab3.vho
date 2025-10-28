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

-- DATE "09/09/2025 08:48:42"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	w : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	a_sel : OUT std_logic;
	b_sel : OUT std_logic;
	c_sel : OUT std_logic;
	d_sel : OUT std_logic;
	e_sel : OUT std_logic;
	f_sel : OUT std_logic;
	g_sel : OUT std_logic;
	a_cond : OUT std_logic;
	b_cond : OUT std_logic;
	c_cond : OUT std_logic;
	d_cond : OUT std_logic;
	e_cond : OUT std_logic;
	f_cond : OUT std_logic;
	g_cond : OUT std_logic
	);
END lab3;

-- Design Ports Information
-- a	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_sel	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_sel	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sel	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_sel	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_sel	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_sel	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_sel	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_cond	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_cond	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_cond	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_cond	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_cond	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_cond	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_cond	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_a_sel : std_logic;
SIGNAL ww_b_sel : std_logic;
SIGNAL ww_c_sel : std_logic;
SIGNAL ww_d_sel : std_logic;
SIGNAL ww_e_sel : std_logic;
SIGNAL ww_f_sel : std_logic;
SIGNAL ww_g_sel : std_logic;
SIGNAL ww_a_cond : std_logic;
SIGNAL ww_b_cond : std_logic;
SIGNAL ww_c_cond : std_logic;
SIGNAL ww_d_cond : std_logic;
SIGNAL ww_e_cond : std_logic;
SIGNAL ww_f_cond : std_logic;
SIGNAL ww_g_cond : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \d_cond~0_combout\ : std_logic;
SIGNAL \f_cond~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_y~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_z~input_o\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;

BEGIN

ww_w <= w;
ww_x <= x;
ww_y <= y;
ww_z <= z;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
a_sel <= ww_a_sel;
b_sel <= ww_b_sel;
c_sel <= ww_c_sel;
d_sel <= ww_d_sel;
e_sel <= ww_e_sel;
f_sel <= ww_f_sel;
g_sel <= ww_g_sel;
a_cond <= ww_a_cond;
b_cond <= ww_b_cond;
c_cond <= ww_c_cond;
d_cond <= ww_d_cond;
e_cond <= ww_e_cond;
f_cond <= ww_f_cond;
g_cond <= ww_g_cond;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_y~input_o\ <= NOT \y~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_z~input_o\ <= NOT \z~input_o\;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;

-- Location: IOOBUF_X54_Y17_N5
\a~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => ww_a);

-- Location: IOOBUF_X54_Y17_N56
\b~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => ww_b);

-- Location: IOOBUF_X54_Y20_N39
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOOBUF_X54_Y14_N62
\d~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => ww_d);

-- Location: IOOBUF_X54_Y14_N96
\e~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => ww_e);

-- Location: IOOBUF_X54_Y21_N39
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOOBUF_X54_Y16_N22
\g~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g~0_combout\,
	devoe => ww_devoe,
	o => ww_g);

-- Location: IOOBUF_X54_Y19_N5
\a_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_a_sel);

-- Location: IOOBUF_X54_Y19_N22
\b_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_b_sel);

-- Location: IOOBUF_X54_Y17_N39
\c_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_sel);

-- Location: IOOBUF_X54_Y15_N39
\d_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_d_sel);

-- Location: IOOBUF_X54_Y16_N39
\e_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_e_sel);

-- Location: IOOBUF_X54_Y14_N45
\f_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_f_sel);

-- Location: IOOBUF_X54_Y18_N45
\g_sel~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_g_sel);

-- Location: IOOBUF_X54_Y21_N56
\a_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_a_cond);

-- Location: IOOBUF_X54_Y19_N39
\b_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_b_cond);

-- Location: IOOBUF_X54_Y20_N5
\c_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => ww_c_cond);

-- Location: IOOBUF_X54_Y15_N56
\d_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_cond~0_combout\,
	devoe => ww_devoe,
	o => ww_d_cond);

-- Location: IOOBUF_X54_Y15_N22
\e_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_cond~0_combout\,
	devoe => ww_devoe,
	o => ww_e_cond);

-- Location: IOOBUF_X54_Y18_N79
\f_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f_cond~0_combout\,
	devoe => ww_devoe,
	o => ww_f_cond);

-- Location: IOOBUF_X54_Y19_N56
\g_cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_g_cond);

-- Location: IOIBUF_X54_Y17_N21
\z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X54_Y18_N95
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LABCELL_X53_Y17_N0
\a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( \w~input_o\ ) ) ) # ( !\y~input_o\ & ( \x~input_o\ ) ) # ( \y~input_o\ & ( !\x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) ) # ( !\y~input_o\ & ( !\x~input_o\ & ( (\z~input_o\ & \w~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \a~0_combout\);

-- Location: LABCELL_X53_Y17_N9
\b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( \w~input_o\ ) ) ) # ( !\y~input_o\ & ( \x~input_o\ & ( (\z~input_o\) # (\w~input_o\) ) ) ) # ( \y~input_o\ & ( !\x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010101011111010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datac => \ALT_INV_z~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \b~0_combout\);

-- Location: LABCELL_X53_Y17_N42
\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) ) # ( !\y~input_o\ & ( \x~input_o\ & ( (\w~input_o\) # (\z~input_o\) ) ) ) # ( \y~input_o\ & ( !\x~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111111001111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \c~0_combout\);

-- Location: LABCELL_X53_Y17_N51
\d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( \w~input_o\ ) ) ) # ( !\y~input_o\ & ( \x~input_o\ ) ) # ( \y~input_o\ & ( !\x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) ) # ( !\y~input_o\ & ( !\x~input_o\ & ( \z~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111101011111010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datac => \ALT_INV_z~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \d~0_combout\);

-- Location: LABCELL_X53_Y17_N24
\f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) ) # ( !\y~input_o\ & ( \x~input_o\ ) ) # ( \y~input_o\ & ( !\x~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \f~0_combout\);

-- Location: LABCELL_X53_Y17_N33
\g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g~0_combout\ = ( \y~input_o\ & ( \x~input_o\ & ( (\z~input_o\) # (\w~input_o\) ) ) ) # ( !\y~input_o\ & ( \x~input_o\ & ( (!\z~input_o\) # (\w~input_o\) ) ) ) # ( \y~input_o\ & ( !\x~input_o\ & ( \w~input_o\ ) ) ) # ( !\y~input_o\ & ( !\x~input_o\ & ( 
-- !\z~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010101010101010111110101111101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datac => \ALT_INV_z~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \g~0_combout\);

-- Location: LABCELL_X53_Y17_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \x~input_o\ & ( (!\y~input_o\) # (\w~input_o\) ) ) # ( !\x~input_o\ & ( (!\z~input_o\ & ((\y~input_o\))) # (\z~input_o\ & (\w~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X53_Y17_N39
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \x~input_o\ & ( (!\w~input_o\ & (\z~input_o\ & !\y~input_o\)) ) ) # ( !\x~input_o\ & ( (!\w~input_o\ & (!\z~input_o\ & \y~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_z~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X53_Y17_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \x~input_o\ & ( (!\z~input_o\ $ (!\y~input_o\)) # (\w~input_o\) ) ) # ( !\x~input_o\ & ( \y~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X53_Y17_N15
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \x~input_o\ & ( (!\y~input_o\) # (\w~input_o\) ) ) # ( !\x~input_o\ & ( (!\z~input_o\ & ((\y~input_o\))) # (\z~input_o\ & ((!\y~input_o\) # (\w~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111011101001100111101110111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_z~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X53_Y17_N18
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \x~input_o\ & ( (!\z~input_o\) # ((!\y~input_o\) # (\w~input_o\)) ) ) # ( !\x~input_o\ & ( \y~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X53_Y17_N21
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \x~input_o\ & ( (!\w~input_o\ & (!\z~input_o\ $ (!\y~input_o\))) ) ) # ( !\x~input_o\ & ( (!\y~input_o\ & ((\z~input_o\))) # (\y~input_o\ & (!\w~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_z~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X53_Y17_N57
\d_cond~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d_cond~0_combout\ = ( \x~input_o\ & ( (!\y~input_o\) # (\w~input_o\) ) ) # ( !\x~input_o\ & ( (!\z~input_o\ & ((\y~input_o\))) # (\z~input_o\ & ((!\y~input_o\) # (\w~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111011101001100111101110111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_z~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \d_cond~0_combout\);

-- Location: LABCELL_X53_Y17_N54
\f_cond~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_cond~0_combout\ = ( \x~input_o\ & ( (!\z~input_o\) # ((!\y~input_o\) # (\w~input_o\)) ) ) # ( !\x~input_o\ & ( \y~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_z~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \f_cond~0_combout\);

-- Location: LABCELL_X5_Y40_N0
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


