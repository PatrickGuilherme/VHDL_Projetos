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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/13/2023 00:06:07"

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

ENTITY 	questao4 IS
    PORT (
	clk : IN std_logic;
	x : IN std_logic;
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END questao4;

ARCHITECTURE structure OF questao4 IS
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
SIGNAL ww_x : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display2[0]~output_o\ : std_logic;
SIGNAL \display2[1]~output_o\ : std_logic;
SIGNAL \display2[2]~output_o\ : std_logic;
SIGNAL \display2[3]~output_o\ : std_logic;
SIGNAL \display2[4]~output_o\ : std_logic;
SIGNAL \display2[5]~output_o\ : std_logic;
SIGNAL \display2[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~q\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \est.S3~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \est.S2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \est.S1~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \est.S0~q\ : std_logic;
SIGNAL \d1~0_combout\ : std_logic;
SIGNAL \d2~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_est.S2~q\ : std_logic;
SIGNAL \ALT_INV_tmp~q\ : std_logic;
SIGNAL \ALT_INV_d2~0_combout\ : std_logic;
SIGNAL \ALT_INV_est.S3~q\ : std_logic;
SIGNAL \ALT_INV_d1~0_combout\ : std_logic;
SIGNAL \ALT_INV_est.S1~q\ : std_logic;
SIGNAL \ALT_INV_est.S0~q\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_x <= x;
display1 <= ww_display1;
display2 <= ww_display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_count(0) <= NOT count(0);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_est.S2~q\ <= NOT \est.S2~q\;
\ALT_INV_tmp~q\ <= NOT \tmp~q\;
\ALT_INV_d2~0_combout\ <= NOT \d2~0_combout\;
\ALT_INV_est.S3~q\ <= NOT \est.S3~q\;
\ALT_INV_d1~0_combout\ <= NOT \d1~0_combout\;
\ALT_INV_est.S1~q\ <= NOT \est.S1~q\;
\ALT_INV_est.S0~q\ <= NOT \est.S0~q\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
ALT_INV_count(20) <= NOT count(20);
ALT_INV_count(21) <= NOT count(21);
ALT_INV_count(22) <= NOT count(22);
ALT_INV_count(23) <= NOT count(23);
ALT_INV_count(24) <= NOT count(24);
ALT_INV_count(25) <= NOT count(25);
ALT_INV_count(26) <= NOT count(26);
ALT_INV_count(28) <= NOT count(28);
ALT_INV_count(29) <= NOT count(29);
ALT_INV_count(30) <= NOT count(30);
ALT_INV_count(12) <= NOT count(12);
ALT_INV_count(14) <= NOT count(14);
ALT_INV_count(15) <= NOT count(15);
ALT_INV_count(16) <= NOT count(16);
ALT_INV_count(17) <= NOT count(17);
ALT_INV_count(18) <= NOT count(18);
ALT_INV_count(19) <= NOT count(19);
ALT_INV_count(8) <= NOT count(8);
ALT_INV_count(9) <= NOT count(9);
ALT_INV_count(10) <= NOT count(10);
ALT_INV_count(11) <= NOT count(11);
ALT_INV_count(27) <= NOT count(27);
ALT_INV_count(13) <= NOT count(13);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(7) <= NOT count(7);
ALT_INV_count(31) <= NOT count(31);
ALT_INV_count(1) <= NOT count(1);

\display1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

\display1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

\display1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1~0_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

\display1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1~0_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

\display1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

\display1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

\display1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d1~0_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

\display2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display2[0]~output_o\);

\display2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d2~0_combout\,
	devoe => ww_devoe,
	o => \display2[1]~output_o\);

\display2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d2~0_combout\,
	devoe => ww_devoe,
	o => \display2[2]~output_o\);

\display2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d2~0_combout\,
	devoe => ww_devoe,
	o => \display2[3]~output_o\);

\display2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display2[4]~output_o\);

\display2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display2[5]~output_o\);

\display2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d2~0_combout\,
	devoe => ww_devoe,
	o => \display2[6]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~82\ = CARRY(( !count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	cin => GND,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = !\Add0~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	combout => \count[0]~0_combout\);

\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count(1) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~2\ = CARRY(( count(1) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(1),
	cin => \Add0~82\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( count(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(2),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( count(3) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(3),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( count(4) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(4),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( count(5) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(5),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( count(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(6),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( count(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(7),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( count(8) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( count(8) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(8),
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( count(9) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( count(9) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(9),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( count(10) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( count(10) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(10),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( count(11) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( count(11) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(11),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( count(12) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~86\ = CARRY(( count(12) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(12),
	cin => \Add0~42\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( count(13) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~34\ = CARRY(( count(13) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(13),
	cin => \Add0~86\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( count(14) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( count(14) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(14),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( count(15) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( count(15) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(15),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( count(16) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( count(16) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(16),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( count(17) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( count(17) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(17),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( count(18) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( count(18) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(18),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( count(19) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( count(19) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(19),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( count(20) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( count(20) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(20),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( count(21) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( count(21) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(21),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( count(22) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( count(22) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(22),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( count(23) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( count(23) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(23),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( count(24) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( count(24) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(24),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( count(25) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( count(25) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(25),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( count(26) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( count(26) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(26),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( count(27) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~38\ = CARRY(( count(27) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(27),
	cin => \Add0~102\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( count(28) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~98\ = CARRY(( count(28) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(28),
	cin => \Add0~38\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( count(29) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( count(29) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(29),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( count(30) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( count(30) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(30),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count(31) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(31),
	cin => \Add0~90\,
	sumout => \Add0~5_sumout\);

\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(1) & !count(31))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datab => ALT_INV_count(31),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !count(3) & ( !count(2) & ( (!count(7) & (!count(6) & (count(5) & !count(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(7),
	datab => ALT_INV_count(6),
	datac => ALT_INV_count(5),
	datad => ALT_INV_count(4),
	datae => ALT_INV_count(3),
	dataf => ALT_INV_count(2),
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !count(9) & ( !count(8) & ( (count(13) & (!count(27) & (count(11) & count(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(13),
	datab => ALT_INV_count(27),
	datac => ALT_INV_count(11),
	datad => ALT_INV_count(10),
	datae => ALT_INV_count(9),
	dataf => ALT_INV_count(8),
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( count(15) & ( !count(14) & ( (count(19) & (count(18) & (count(17) & !count(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(19),
	datab => ALT_INV_count(18),
	datac => ALT_INV_count(17),
	datad => ALT_INV_count(16),
	datae => ALT_INV_count(15),
	dataf => ALT_INV_count(14),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !count(28) & ( !count(26) & ( (count(0) & (count(12) & (!count(30) & !count(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(0),
	datab => ALT_INV_count(12),
	datac => ALT_INV_count(30),
	datad => ALT_INV_count(29),
	datae => ALT_INV_count(28),
	dataf => ALT_INV_count(26),
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( count(21) & ( count(20) & ( (!count(25) & (!count(24) & (count(23) & !count(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(25),
	datab => ALT_INV_count(24),
	datac => ALT_INV_count(23),
	datad => ALT_INV_count(22),
	datae => ALT_INV_count(21),
	dataf => ALT_INV_count(20),
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = !\tmp~q\ $ (!\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp~q\,
	datab => \ALT_INV_Equal0~6_combout\,
	combout => \tmp~0_combout\);

tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp~q\);

\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\x~input_o\ & (!\est.S0~q\)) # (\x~input_o\ & ((\est.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101110001011100010111000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S0~q\,
	datab => \ALT_INV_x~input_o\,
	datac => \ALT_INV_est.S2~q\,
	combout => \Selector3~0_combout\);

\est.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est.S3~q\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\x~input_o\ & ((\est.S3~q\))) # (\x~input_o\ & (\est.S1~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S1~q\,
	datab => \ALT_INV_est.S3~q\,
	datac => \ALT_INV_x~input_o\,
	combout => \Selector2~0_combout\);

\est.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est.S2~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\x~input_o\ & ((\est.S2~q\))) # (\x~input_o\ & (!\est.S0~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S0~q\,
	datab => \ALT_INV_x~input_o\,
	datac => \ALT_INV_est.S2~q\,
	combout => \Selector1~0_combout\);

\est.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est.S1~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\x~input_o\ & (!\est.S1~q\)) # (\x~input_o\ & ((!\est.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100101011001010110010101100101011001010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S1~q\,
	datab => \ALT_INV_est.S3~q\,
	datac => \ALT_INV_x~input_o\,
	combout => \Selector0~0_combout\);

\est.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmp~q\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \est.S0~q\);

\d1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d1~0_combout\ = (!\est.S0~q\) # (\est.S1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S0~q\,
	datab => \ALT_INV_est.S1~q\,
	combout => \d1~0_combout\);

\d2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d2~0_combout\ = (!\est.S0~q\) # (\est.S3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_est.S0~q\,
	datab => \ALT_INV_est.S3~q\,
	combout => \d2~0_combout\);

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display2(0) <= \display2[0]~output_o\;

ww_display2(1) <= \display2[1]~output_o\;

ww_display2(2) <= \display2[2]~output_o\;

ww_display2(3) <= \display2[3]~output_o\;

ww_display2(4) <= \display2[4]~output_o\;

ww_display2(5) <= \display2[5]~output_o\;

ww_display2(6) <= \display2[6]~output_o\;
END structure;


