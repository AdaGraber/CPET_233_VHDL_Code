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
-- Generated on "09/02/2025 07:59:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab2_vhd_vec_tst IS
END lab2_vhd_vec_tst;
ARCHITECTURE lab2_arch OF lab2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT lab2
	PORT (
	E : OUT STD_LOGIC;
	F : OUT STD_LOGIC;
	G : OUT STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab2
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	F => F,
	G => G,
	X => X,
	Y => Y,
	Z => Z
	);

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 40000 ps;
	X <= '1';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
WAIT;
END PROCESS t_prcs_Y;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '0';
	WAIT FOR 10000 ps;
	Z <= '1';
	WAIT FOR 10000 ps;
	Z <= '0';
	WAIT FOR 10000 ps;
	Z <= '1';
	WAIT FOR 10000 ps;
	Z <= '0';
	WAIT FOR 10000 ps;
	Z <= '1';
	WAIT FOR 10000 ps;
	Z <= '0';
	WAIT FOR 10000 ps;
	Z <= '1';
WAIT;
END PROCESS t_prcs_Z;
END lab2_arch;
