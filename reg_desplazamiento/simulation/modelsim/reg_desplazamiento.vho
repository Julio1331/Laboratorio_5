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

-- DATE "11/11/2019 15:08:09"

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

ENTITY 	reg_desplazamiento IS
    PORT (
	d_in : IN std_logic_vector(10 DOWNTO 0);
	clk : IN std_logic;
	load : IN std_logic;
	reset_d : IN std_logic;
	s_in : IN std_logic;
	serial_out : OUT std_logic;
	ones : OUT std_logic
	);
END reg_desplazamiento;

-- Design Ports Information
-- serial_out	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ones	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_d	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[9]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_in	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg_desplazamiento IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d_in : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_reset_d : std_logic;
SIGNAL ww_s_in : std_logic;
SIGNAL ww_serial_out : std_logic;
SIGNAL ww_ones : std_logic;
SIGNAL \reset_d~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_out~output_o\ : std_logic;
SIGNAL \ones~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d_in[10]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \d_in[9]~input_o\ : std_logic;
SIGNAL \d_in[8]~input_o\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \s_in~input_o\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \t:0:t0:bitx0|dout~0_combout\ : std_logic;
SIGNAL \reset_d~input_o\ : std_logic;
SIGNAL \reset_d~inputclkctrl_outclk\ : std_logic;
SIGNAL \t:0:t0:bitx0|dout~q\ : std_logic;
SIGNAL \t:1:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:1:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:2:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:2:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:3:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:3:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:4:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:4:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:5:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:5:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:6:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:6:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:7:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:7:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:8:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:8:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:9:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \t:9:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \t:10:t11:bitxul|dout~0_combout\ : std_logic;
SIGNAL \t:10:t11:bitxul|dout~q\ : std_logic;
SIGNAL \ones~1_combout\ : std_logic;
SIGNAL \ones~2_combout\ : std_logic;
SIGNAL \ones~0_combout\ : std_logic;
SIGNAL \ones~3_combout\ : std_logic;
SIGNAL \t:10:t11:bitxul|ALT_INV_dout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d_in <= d_in;
ww_clk <= clk;
ww_load <= load;
ww_reset_d <= reset_d;
ww_s_in <= s_in;
serial_out <= ww_serial_out;
ones <= ww_ones;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_d~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_d~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\t:10:t11:bitxul|ALT_INV_dout~q\ <= NOT \t:10:t11:bitxul|dout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\serial_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t:10:t11:bitxul|ALT_INV_dout~q\,
	devoe => ww_devoe,
	o => \serial_out~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ones~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ones~3_combout\,
	devoe => ww_devoe,
	o => \ones~output_o\);

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

-- Location: IOIBUF_X13_Y0_N1
\d_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(10),
	o => \d_in[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\d_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(9),
	o => \d_in[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\d_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(8),
	o => \d_in[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\d_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\s_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_in,
	o => \s_in~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\d_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: LCCOMB_X13_Y1_N16
\t:0:t0:bitx0|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:0:t0:bitx0|dout~0_combout\ = (\load~input_o\ & ((!\d_in[0]~input_o\))) # (!\load~input_o\ & (!\s_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \s_in~input_o\,
	datac => \d_in[0]~input_o\,
	combout => \t:0:t0:bitx0|dout~0_combout\);

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

-- Location: FF_X13_Y1_N17
\t:0:t0:bitx0|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:0:t0:bitx0|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:0:t0:bitx0|dout~q\);

-- Location: LCCOMB_X13_Y1_N2
\t:1:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:1:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[1]~input_o\)) # (!\load~input_o\ & ((\t:0:t0:bitx0|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[1]~input_o\,
	datac => \load~input_o\,
	datad => \t:0:t0:bitx0|dout~q\,
	combout => \t:1:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N3
\t:1:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:1:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:1:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N24
\t:2:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:2:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[2]~input_o\)) # (!\load~input_o\ & ((\t:1:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in[2]~input_o\,
	datac => \load~input_o\,
	datad => \t:1:t1_10:bitx|dout~q\,
	combout => \t:2:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N25
\t:2:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:2:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:2:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N28
\t:3:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:3:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[3]~input_o\)) # (!\load~input_o\ & ((\t:2:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[3]~input_o\,
	datac => \load~input_o\,
	datad => \t:2:t1_10:bitx|dout~q\,
	combout => \t:3:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N29
\t:3:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:3:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:3:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N18
\t:4:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:4:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[4]~input_o\)) # (!\load~input_o\ & ((\t:3:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \d_in[4]~input_o\,
	datad => \t:3:t1_10:bitx|dout~q\,
	combout => \t:4:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N19
\t:4:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:4:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:4:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N20
\t:5:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:5:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[5]~input_o\)) # (!\load~input_o\ & ((\t:4:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_in[5]~input_o\,
	datac => \load~input_o\,
	datad => \t:4:t1_10:bitx|dout~q\,
	combout => \t:5:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N21
\t:5:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:5:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:5:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N26
\t:6:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:6:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[6]~input_o\)) # (!\load~input_o\ & ((\t:5:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[6]~input_o\,
	datac => \load~input_o\,
	datad => \t:5:t1_10:bitx|dout~q\,
	combout => \t:6:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N27
\t:6:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:6:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:6:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N6
\t:7:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:7:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[7]~input_o\)) # (!\load~input_o\ & ((\t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \d_in[7]~input_o\,
	datac => \t:6:t1_10:bitx|dout~q\,
	combout => \t:7:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N7
\t:7:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:7:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:7:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N12
\t:8:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:8:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[8]~input_o\)) # (!\load~input_o\ & ((\t:7:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \d_in[8]~input_o\,
	datad => \t:7:t1_10:bitx|dout~q\,
	combout => \t:8:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N13
\t:8:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:8:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:8:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N10
\t:9:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:9:t1_10:bitx|dout~0_combout\ = (\load~input_o\ & (!\d_in[9]~input_o\)) # (!\load~input_o\ & ((\t:8:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[9]~input_o\,
	datac => \load~input_o\,
	datad => \t:8:t1_10:bitx|dout~q\,
	combout => \t:9:t1_10:bitx|dout~0_combout\);

-- Location: FF_X13_Y1_N11
\t:9:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:9:t1_10:bitx|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:9:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X13_Y1_N8
\t:10:t11:bitxul|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:10:t11:bitxul|dout~0_combout\ = (\load~input_o\ & (!\d_in[10]~input_o\)) # (!\load~input_o\ & ((\t:9:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[10]~input_o\,
	datac => \load~input_o\,
	datad => \t:9:t1_10:bitx|dout~q\,
	combout => \t:10:t11:bitxul|dout~0_combout\);

-- Location: FF_X13_Y1_N9
\t:10:t11:bitxul|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t:10:t11:bitxul|dout~0_combout\,
	clrn => \reset_d~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t:10:t11:bitxul|dout~q\);

-- Location: LCCOMB_X13_Y1_N30
\ones~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ones~1_combout\ = (!\t:3:t1_10:bitx|dout~q\ & (!\t:5:t1_10:bitx|dout~q\ & (!\t:6:t1_10:bitx|dout~q\ & !\t:4:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:3:t1_10:bitx|dout~q\,
	datab => \t:5:t1_10:bitx|dout~q\,
	datac => \t:6:t1_10:bitx|dout~q\,
	datad => \t:4:t1_10:bitx|dout~q\,
	combout => \ones~1_combout\);

-- Location: LCCOMB_X13_Y1_N22
\ones~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ones~2_combout\ = (!\t:2:t1_10:bitx|dout~q\ & (!\t:1:t1_10:bitx|dout~q\ & !\t:0:t0:bitx0|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t:2:t1_10:bitx|dout~q\,
	datac => \t:1:t1_10:bitx|dout~q\,
	datad => \t:0:t0:bitx0|dout~q\,
	combout => \ones~2_combout\);

-- Location: LCCOMB_X13_Y1_N0
\ones~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ones~0_combout\ = (!\t:9:t1_10:bitx|dout~q\ & (!\t:8:t1_10:bitx|dout~q\ & (!\t:10:t11:bitxul|dout~q\ & !\t:7:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:9:t1_10:bitx|dout~q\,
	datab => \t:8:t1_10:bitx|dout~q\,
	datac => \t:10:t11:bitxul|dout~q\,
	datad => \t:7:t1_10:bitx|dout~q\,
	combout => \ones~0_combout\);

-- Location: LCCOMB_X13_Y1_N4
\ones~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ones~3_combout\ = (\ones~1_combout\ & (\ones~2_combout\ & \ones~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ones~1_combout\,
	datac => \ones~2_combout\,
	datad => \ones~0_combout\,
	combout => \ones~3_combout\);

ww_serial_out <= \serial_out~output_o\;

ww_ones <= \ones~output_o\;
END structure;


