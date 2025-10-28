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

-- DATE "10/07/2025 08:12:23"

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

ENTITY 	compexam IS
    PORT (
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	X : BUFFER std_logic
	);
END compexam;

-- Design Ports Information
-- X	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compexam IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \X~0_combout\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_F~input_o\ : std_logic;
SIGNAL \ALT_INV_E~input_o\ : std_logic;
SIGNAL \ALT_INV_X~0_combout\ : std_logic;

BEGIN

ww_D <= D;
ww_E <= E;
ww_F <= F;
X <= ww_X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_F~input_o\ <= NOT \F~input_o\;
\ALT_INV_E~input_o\ <= NOT \E~input_o\;
\ALT_INV_X~0_combout\ <= NOT \X~0_combout\;

-- Location: IOOBUF_X0_Y18_N79
\X~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_X~0_combout\,
	devoe => ww_devoe,
	o => ww_X);

-- Location: IOIBUF_X33_Y0_N41
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\E~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\F~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: LABCELL_X32_Y2_N30
\X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \X~0_combout\ = ( \F~input_o\ & ( (\D~input_o\ & !\E~input_o\) ) ) # ( !\F~input_o\ & ( (\E~input_o\) # (\D~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100000011000000111111001111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D~input_o\,
	datac => \ALT_INV_E~input_o\,
	datae => \ALT_INV_F~input_o\,
	combout => \X~0_combout\);

-- Location: LABCELL_X53_Y34_N0
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


