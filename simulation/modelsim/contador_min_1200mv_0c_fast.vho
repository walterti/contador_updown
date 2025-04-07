-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/26/2025 09:12:41"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	dir : IN std_logic;
	saida : BUFFER IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \saida[0]~11_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \saida[0]~reg0_q\ : std_logic;
SIGNAL \dir~input_o\ : std_logic;
SIGNAL \saida[1]~4_cout\ : std_logic;
SIGNAL \saida[1]~5_combout\ : std_logic;
SIGNAL \saida[1]~reg0_q\ : std_logic;
SIGNAL \saida[1]~6\ : std_logic;
SIGNAL \saida[2]~7_combout\ : std_logic;
SIGNAL \saida[2]~reg0_q\ : std_logic;
SIGNAL \saida[2]~8\ : std_logic;
SIGNAL \saida[3]~9_combout\ : std_logic;
SIGNAL \saida[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_dir <= dir;
saida <= IEEE.NUMERIC_STD.UNSIGNED(ww_saida);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X12_Y0_N9
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y1_N12
\saida[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[0]~11_combout\ = !\saida[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida[0]~reg0_q\,
	combout => \saida[0]~11_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X10_Y1_N13
\saida[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \saida[0]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[0]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N8
\dir~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir,
	o => \dir~input_o\);

-- Location: LCCOMB_X10_Y1_N16
\saida[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[1]~4_cout\ = CARRY(\saida[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida[0]~reg0_q\,
	datad => VCC,
	cout => \saida[1]~4_cout\);

-- Location: LCCOMB_X10_Y1_N18
\saida[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[1]~5_combout\ = (\dir~input_o\ & ((\saida[1]~reg0_q\ & (\saida[1]~4_cout\ & VCC)) # (!\saida[1]~reg0_q\ & (!\saida[1]~4_cout\)))) # (!\dir~input_o\ & ((\saida[1]~reg0_q\ & (!\saida[1]~4_cout\)) # (!\saida[1]~reg0_q\ & ((\saida[1]~4_cout\) # 
-- (GND)))))
-- \saida[1]~6\ = CARRY((\dir~input_o\ & (!\saida[1]~reg0_q\ & !\saida[1]~4_cout\)) # (!\dir~input_o\ & ((!\saida[1]~4_cout\) # (!\saida[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datab => \saida[1]~reg0_q\,
	datad => VCC,
	cin => \saida[1]~4_cout\,
	combout => \saida[1]~5_combout\,
	cout => \saida[1]~6\);

-- Location: FF_X10_Y1_N19
\saida[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \saida[1]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[1]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N20
\saida[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[2]~7_combout\ = ((\dir~input_o\ $ (\saida[2]~reg0_q\ $ (!\saida[1]~6\)))) # (GND)
-- \saida[2]~8\ = CARRY((\dir~input_o\ & ((\saida[2]~reg0_q\) # (!\saida[1]~6\))) # (!\dir~input_o\ & (\saida[2]~reg0_q\ & !\saida[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datab => \saida[2]~reg0_q\,
	datad => VCC,
	cin => \saida[1]~6\,
	combout => \saida[2]~7_combout\,
	cout => \saida[2]~8\);

-- Location: FF_X10_Y1_N21
\saida[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \saida[2]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[2]~reg0_q\);

-- Location: LCCOMB_X10_Y1_N22
\saida[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[3]~9_combout\ = \saida[3]~reg0_q\ $ (\saida[2]~8\ $ (\dir~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saida[3]~reg0_q\,
	datad => \dir~input_o\,
	cin => \saida[2]~8\,
	combout => \saida[3]~9_combout\);

-- Location: FF_X10_Y1_N23
\saida[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \saida[3]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[3]~reg0_q\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;
END structure;


