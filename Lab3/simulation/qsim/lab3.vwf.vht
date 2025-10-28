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
-- Generated on "09/09/2025 08:48:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3_vhd_vec_tst IS
END lab3_vhd_vec_tst;
ARCHITECTURE lab3_arch OF lab3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL a_cond : STD_LOGIC;
SIGNAL a_sel : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL b_cond : STD_LOGIC;
SIGNAL b_sel : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL c_cond : STD_LOGIC;
SIGNAL c_sel : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d_cond : STD_LOGIC;
SIGNAL d_sel : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL e_cond : STD_LOGIC;
SIGNAL e_sel : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL f_cond : STD_LOGIC;
SIGNAL f_sel : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL g_cond : STD_LOGIC;
SIGNAL g_sel : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT lab3
	PORT (
	a : OUT STD_LOGIC;
	a_cond : OUT STD_LOGIC;
	a_sel : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	b_cond : OUT STD_LOGIC;
	b_sel : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	c_cond : OUT STD_LOGIC;
	c_sel : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	d_cond : OUT STD_LOGIC;
	d_sel : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	e_cond : OUT STD_LOGIC;
	e_sel : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	f_cond : OUT STD_LOGIC;
	f_sel : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	g_cond : OUT STD_LOGIC;
	g_sel : OUT STD_LOGIC;
	w : IN STD_LOGIC;
	x : IN STD_LOGIC;
	y : IN STD_LOGIC;
	z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	a_cond => a_cond,
	a_sel => a_sel,
	b => b,
	b_cond => b_cond,
	b_sel => b_sel,
	c => c,
	c_cond => c_cond,
	c_sel => c_sel,
	d => d,
	d_cond => d_cond,
	d_sel => d_sel,
	e => e,
	e_cond => e_cond,
	e_sel => e_sel,
	f => f,
	f_cond => f_cond,
	f_sel => f_sel,
	g => g,
	g_cond => g_cond,
	g_sel => g_sel,
	w => w,
	x => x,
	y => y,
	z => z
	);

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
WAIT;
END PROCESS t_prcs_w;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
WAIT;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	y <= '0';
	WAIT FOR 20000 ps;
	y <= '1';
	WAIT FOR 20000 ps;
	y <= '0';
	WAIT FOR 20000 ps;
	y <= '1';
	WAIT FOR 20000 ps;
	y <= '0';
	WAIT FOR 20000 ps;
	y <= '1';
	WAIT FOR 20000 ps;
	y <= '0';
	WAIT FOR 20000 ps;
	y <= '1';
WAIT;
END PROCESS t_prcs_y;

-- z
t_prcs_z: PROCESS
BEGIN
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
	WAIT FOR 10000 ps;
	z <= '0';
	WAIT FOR 10000 ps;
	z <= '1';
WAIT;
END PROCESS t_prcs_z;
END lab3_arch;
