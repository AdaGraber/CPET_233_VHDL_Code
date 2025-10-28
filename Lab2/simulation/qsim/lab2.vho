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

-- DATE "09/02/2025 07:59:30"

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

ENTITY 	lab2 IS
    PORT (
	E : OUT std_logic;
	X : IN std_logic;
	Z : IN std_logic;
	F : OUT std_logic;
	Y : IN std_logic;
	G : OUT std_logic
	);
END lab2;

-- Design Ports Information
-- E	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~input_o\ : std_logic;
SIGNAL \ALT_INV_X~input_o\ : std_logic;
SIGNAL \ALT_INV_Z~input_o\ : std_logic;

BEGIN

E <= ww_E;
ww_X <= X;
ww_Z <= Z;
F <= ww_F;
ww_Y <= Y;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y~input_o\ <= NOT \Y~input_o\;
\ALT_INV_X~input_o\ <= NOT \X~input_o\;
\ALT_INV_Z~input_o\ <= NOT \Z~input_o\;

-- Location: IOOBUF_X54_Y18_N45
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Z~input_o\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X54_Y19_N22
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~0_combout\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOOBUF_X54_Y19_N56
\G~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~0_combout\,
	devoe => ww_devoe,
	o => ww_G);

-- Location: IOIBUF_X54_Y18_N78
\Z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X54_Y19_N4
\X~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X54_Y19_N38
\Y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LABCELL_X53_Y19_N0
\inst9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = ( !\X~input_o\ & ( \Y~input_o\ & ( !\Z~input_o\ ) ) ) # ( \X~input_o\ & ( !\Y~input_o\ ) ) # ( !\X~input_o\ & ( !\Y~input_o\ & ( \Z~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Z~input_o\,
	datae => \ALT_INV_X~input_o\,
	dataf => \ALT_INV_Y~input_o\,
	combout => \inst9~0_combout\);

-- Location: LABCELL_X53_Y19_N9
\inst12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = ( \X~input_o\ & ( \Y~input_o\ ) ) # ( !\X~input_o\ & ( \Y~input_o\ & ( \Z~input_o\ ) ) ) # ( !\X~input_o\ & ( !\Y~input_o\ & ( \Z~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Z~input_o\,
	datae => \ALT_INV_X~input_o\,
	dataf => \ALT_INV_Y~input_o\,
	combout => \inst12~0_combout\);

-- Location: MLABCELL_X4_Y8_N3
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


