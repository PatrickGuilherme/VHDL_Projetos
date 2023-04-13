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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/13/2023 00:06:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          questao4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY questao4_vhd_vec_tst IS
END questao4_vhd_vec_tst;
ARCHITECTURE questao4_arch OF questao4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL display1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL x : STD_LOGIC;
COMPONENT questao4
	PORT (
	clk : IN STD_LOGIC;
	display1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : questao4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	display1 => display1,
	display2 => display2,
	x => x
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- x
t_prcs_x: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		x <= '0';
		WAIT FOR 75000 ps;
		x <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	x <= '0';
	WAIT FOR 75000 ps;
	x <= '1';
WAIT;
END PROCESS t_prcs_x;
END questao4_arch;
