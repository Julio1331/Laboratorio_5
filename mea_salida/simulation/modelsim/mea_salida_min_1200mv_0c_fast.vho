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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/13/2019 16:44:00"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mea_salida IS
    PORT (
	send : IN std_logic;
	EOT : IN std_logic;
	reset_d : IN std_logic;
	reset_d_out : OUT std_logic;
	load : OUT std_logic;
	clk : IN std_logic
	);
END mea_salida;

-- Design Ports Information
-- reset_d_out	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_d	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOT	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mea_salida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_send : std_logic;
SIGNAL ww_EOT : std_logic;
SIGNAL ww_reset_d : std_logic;
SIGNAL ww_reset_d_out : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \reset_d~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_d_out~output_o\ : std_logic;
SIGNAL \load~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \send~input_o\ : std_logic;
SIGNAL \EOT~input_o\ : std_logic;
SIGNAL \px_st.LD~0_combout\ : std_logic;
SIGNAL \reset_d~input_o\ : std_logic;
SIGNAL \reset_d~inputclkctrl_outclk\ : std_logic;
SIGNAL \st.LD~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \st.SND~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \st.ILDE~q\ : std_logic;
SIGNAL \reset_d_out~reg0feeder_combout\ : std_logic;
SIGNAL \reset_d_out~reg0_q\ : std_logic;
SIGNAL \load~0_combout\ : std_logic;
SIGNAL \load~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_send <= send;
ww_EOT <= EOT;
ww_reset_d <= reset_d;
reset_d_out <= ww_reset_d_out;
load <= ww_load;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_d~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_d~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y21_N9
\reset_d_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_d_out~reg0_q\,
	devoe => ww_devoe,
	o => \reset_d_out~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\load~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load~reg0_q\,
	devoe => ww_devoe,
	o => \load~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X0_Y18_N15
\send~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send,
	o => \send~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\EOT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EOT,
	o => \EOT~input_o\);

-- Location: LCCOMB_X1_Y18_N18
\px_st.LD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \px_st.LD~0_combout\ = (\send~input_o\ & !\st.ILDE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send~input_o\,
	datad => \st.ILDE~q\,
	combout => \px_st.LD~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_d,
	o => \reset_d~input_o\);

-- Location: CLKCTRL_G4
\reset_d~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_d~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_d~inputclkctrl_outclk\);

-- Location: FF_X1_Y18_N19
\st.LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \px_st.LD~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.LD~q\);

-- Location: LCCOMB_X1_Y18_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\st.LD~q\) # ((!\EOT~input_o\ & \st.SND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EOT~input_o\,
	datac => \st.SND~q\,
	datad => \st.LD~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y18_N29
\st.SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.SND~q\);

-- Location: LCCOMB_X1_Y18_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\send~input_o\ & (((!\st.SND~q\)) # (!\EOT~input_o\))) # (!\send~input_o\ & (\st.ILDE~q\ & ((!\st.SND~q\) # (!\EOT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send~input_o\,
	datab => \EOT~input_o\,
	datac => \st.ILDE~q\,
	datad => \st.SND~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y18_N17
\st.ILDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.ILDE~q\);

-- Location: LCCOMB_X1_Y18_N12
\reset_d_out~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_d_out~reg0feeder_combout\ = \st.ILDE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \st.ILDE~q\,
	combout => \reset_d_out~reg0feeder_combout\);

-- Location: FF_X1_Y18_N13
\reset_d_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset_d_out~reg0feeder_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_d_out~reg0_q\);

-- Location: LCCOMB_X1_Y18_N14
\load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \load~0_combout\ = (\reset_d~input_o\ & ((\st.LD~q\))) # (!\reset_d~input_o\ & (\load~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_d~input_o\,
	datac => \load~reg0_q\,
	datad => \st.LD~q\,
	combout => \load~0_combout\);

-- Location: FF_X1_Y18_N15
\load~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load~reg0_q\);

ww_reset_d_out <= \reset_d_out~output_o\;

ww_load <= \load~output_o\;
END structure;


