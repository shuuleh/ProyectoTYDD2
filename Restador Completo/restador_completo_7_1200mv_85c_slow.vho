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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/02/2023 16:30:44"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	restador_completo IS
    PORT (
	X : IN std_logic;
	Y : IN std_logic;
	R : OUT std_logic;
	B : OUT std_logic
	);
END restador_completo;

-- Design Ports Information
-- R	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
R <= ww_R;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y59_N16
\R~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R~0_combout\,
	devoe => ww_devoe,
	o => \R~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOIBUF_X0_Y59_N22
\X~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\Y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X1_Y59_N0
\R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R~0_combout\ = \X~input_o\ $ (\Y~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datac => \Y~input_o\,
	combout => \R~0_combout\);

-- Location: LCCOMB_X1_Y59_N10
\B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (!\X~input_o\ & \Y~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datac => \Y~input_o\,
	combout => \B~0_combout\);

ww_R <= \R~output_o\;

ww_B <= \B~output_o\;
END structure;


