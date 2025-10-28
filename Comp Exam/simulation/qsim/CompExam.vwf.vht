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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/07/2025 08:12:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compexam
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compexam_vhd_vec_tst IS
END compexam_vhd_vec_tst;
ARCHITECTURE compexam_arch OF compexam_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT compexam
	PORT (
	D : IN STD_LOGIC;
	E : IN STD_LOGIC;
	F : IN STD_LOGIC;
	X : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : compexam
	PORT MAP (
-- list connections between master ports and signals
	D => D,
	E => E,
	F => F,
	X => X
	);

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
	WAIT FOR 40000 ps;
	D <= '1';
WAIT;
END PROCESS t_prcs_D;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
	WAIT FOR 20000 ps;
	E <= '0';
	WAIT FOR 20000 ps;
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- F
t_prcs_F: PROCESS
BEGIN
	F <= '0';
	WAIT FOR 10000 ps;
	F <= '1';
	WAIT FOR 10000 ps;
	F <= '0';
	WAIT FOR 10000 ps;
	F <= '1';
	WAIT FOR 10000 ps;
	F <= '0';
	WAIT FOR 10000 ps;
	F <= '1';
	WAIT FOR 10000 ps;
	F <= '0';
	WAIT FOR 10000 ps;
	F <= '1';
WAIT;
END PROCESS t_prcs_F;
END compexam_arch;
