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

-- DATE "11/21/2019 18:34:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	mef_registro IS
    PORT (
	snd : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	data_in : IN std_logic_vector(10 DOWNTO 0);
	serial_in : IN std_logic;
	serial_out : OUT std_logic;
	end_of_tram : OUT std_logic
	);
END mef_registro;

-- Design Ports Information
-- serial_out	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_of_tram	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serial_in	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- snd	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mef_registro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_snd : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_serial_in : std_logic;
SIGNAL ww_serial_out : std_logic;
SIGNAL ww_end_of_tram : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d2|Selector2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_out~output_o\ : std_logic;
SIGNAL \end_of_tram~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \serial_in~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \d1|t:0:t0:bitx0|dout~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \d1|t:0:t0:bitx0|dout~q\ : std_logic;
SIGNAL \d1|t:1:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:1:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \d1|t:2:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:2:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|ones~2_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \d1|t:3:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:3:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|t:4:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:4:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|t:5:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:5:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \d1|t:6:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:6:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|ones~1_combout\ : std_logic;
SIGNAL \snd~input_o\ : std_logic;
SIGNAL \d2|Selector2~0_combout\ : std_logic;
SIGNAL \d2|Selector2~0clkctrl_outclk\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \d1|t:7:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:7:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|ones~0_combout\ : std_logic;
SIGNAL \d1|ones~3_combout\ : std_logic;
SIGNAL \d2|Selector0~0_combout\ : std_logic;
SIGNAL \d2|px_st.SND_68~combout\ : std_logic;
SIGNAL \d2|st.SND~q\ : std_logic;
SIGNAL \d2|Selector1~0_combout\ : std_logic;
SIGNAL \d2|px_st.ILDE_83~combout\ : std_logic;
SIGNAL \d2|st.ILDE~0_combout\ : std_logic;
SIGNAL \d2|st.ILDE~q\ : std_logic;
SIGNAL \d2|px_st.LD_74~combout\ : std_logic;
SIGNAL \d2|st.LD~feeder_combout\ : std_logic;
SIGNAL \d2|st.LD~q\ : std_logic;
SIGNAL \d2|load~0_combout\ : std_logic;
SIGNAL \d2|load~q\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \d1|t:8:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:8:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|t:9:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d1|t:9:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d1|t:10:t11:bitxul|dout~0_combout\ : std_logic;
SIGNAL \d1|t:10:t11:bitxul|dout~q\ : std_logic;
SIGNAL \d1|t:10:t11:bitxul|ALT_INV_dout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_snd <= snd;
ww_reset <= reset;
ww_clk <= clk;
ww_data_in <= data_in;
ww_serial_in <= serial_in;
serial_out <= ww_serial_out;
end_of_tram <= ww_end_of_tram;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\d2|Selector2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d2|Selector2~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\d1|t:10:t11:bitxul|ALT_INV_dout~q\ <= NOT \d1|t:10:t11:bitxul|dout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N23
\serial_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|t:10:t11:bitxul|ALT_INV_dout~q\,
	devoe => ww_devoe,
	o => \serial_out~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\end_of_tram~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|ones~3_combout\,
	devoe => ww_devoe,
	o => \end_of_tram~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X0_Y30_N8
\data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\serial_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serial_in,
	o => \serial_in~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X2_Y32_N4
\d1|t:0:t0:bitx0|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:0:t0:bitx0|dout~0_combout\ = (\d2|load~q\ & ((!\data_in[0]~input_o\))) # (!\d2|load~q\ & (!\serial_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_in~input_o\,
	datac => \data_in[0]~input_o\,
	datad => \d2|load~q\,
	combout => \d1|t:0:t0:bitx0|dout~0_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y32_N5
\d1|t:0:t0:bitx0|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:0:t0:bitx0|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:0:t0:bitx0|dout~q\);

-- Location: LCCOMB_X2_Y32_N26
\d1|t:1:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:1:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[1]~input_o\)) # (!\d2|load~q\ & ((\d1|t:0:t0:bitx0|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \d1|t:0:t0:bitx0|dout~q\,
	datad => \d2|load~q\,
	combout => \d1|t:1:t1_10:bitx|dout~0_combout\);

-- Location: FF_X2_Y32_N27
\d1|t:1:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:1:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:1:t1_10:bitx|dout~q\);

-- Location: IOIBUF_X0_Y34_N8
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X2_Y32_N8
\d1|t:2:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:2:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[2]~input_o\)) # (!\d2|load~q\ & ((\d1|t:1:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \d1|t:1:t1_10:bitx|dout~q\,
	datad => \d2|load~q\,
	combout => \d1|t:2:t1_10:bitx|dout~0_combout\);

-- Location: FF_X2_Y32_N9
\d1|t:2:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:2:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:2:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X2_Y32_N14
\d1|ones~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|ones~2_combout\ = (!\d1|t:1:t1_10:bitx|dout~q\ & (!\d1|t:0:t0:bitx0|dout~q\ & !\d1|t:2:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|t:1:t1_10:bitx|dout~q\,
	datab => \d1|t:0:t0:bitx0|dout~q\,
	datac => \d1|t:2:t1_10:bitx|dout~q\,
	combout => \d1|ones~2_combout\);

-- Location: IOIBUF_X0_Y30_N1
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X3_Y32_N20
\d1|t:3:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:3:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[3]~input_o\)) # (!\d2|load~q\ & ((\d1|t:2:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|load~q\,
	datac => \data_in[3]~input_o\,
	datad => \d1|t:2:t1_10:bitx|dout~q\,
	combout => \d1|t:3:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N21
\d1|t:3:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:3:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:3:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X3_Y32_N10
\d1|t:4:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:4:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[4]~input_o\)) # (!\d2|load~q\ & ((\d1|t:3:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|load~q\,
	datac => \data_in[4]~input_o\,
	datad => \d1|t:3:t1_10:bitx|dout~q\,
	combout => \d1|t:4:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N11
\d1|t:4:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:4:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:4:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X3_Y32_N26
\d1|t:5:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:5:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[5]~input_o\)) # (!\d2|load~q\ & ((\d1|t:4:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[5]~input_o\,
	datac => \d1|t:4:t1_10:bitx|dout~q\,
	datad => \d2|load~q\,
	combout => \d1|t:5:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N27
\d1|t:5:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:5:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:5:t1_10:bitx|dout~q\);

-- Location: IOIBUF_X0_Y29_N15
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X3_Y32_N8
\d1|t:6:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:6:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & ((!\data_in[6]~input_o\))) # (!\d2|load~q\ & (\d1|t:5:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|t:5:t1_10:bitx|dout~q\,
	datab => \d2|load~q\,
	datad => \data_in[6]~input_o\,
	combout => \d1|t:6:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N9
\d1|t:6:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:6:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:6:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X3_Y32_N22
\d1|ones~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|ones~1_combout\ = (!\d1|t:5:t1_10:bitx|dout~q\ & (!\d1|t:3:t1_10:bitx|dout~q\ & (!\d1|t:4:t1_10:bitx|dout~q\ & !\d1|t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|t:5:t1_10:bitx|dout~q\,
	datab => \d1|t:3:t1_10:bitx|dout~q\,
	datac => \d1|t:4:t1_10:bitx|dout~q\,
	datad => \d1|t:6:t1_10:bitx|dout~q\,
	combout => \d1|ones~1_combout\);

-- Location: IOIBUF_X0_Y32_N15
\snd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_snd,
	o => \snd~input_o\);

-- Location: LCCOMB_X1_Y32_N28
\d2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|Selector2~0_combout\ = (\d2|st.ILDE~q\) # (\snd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2|st.ILDE~q\,
	datad => \snd~input_o\,
	combout => \d2|Selector2~0_combout\);

-- Location: CLKCTRL_G1
\d2|Selector2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d2|Selector2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d2|Selector2~0clkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N15
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X3_Y32_N0
\d1|t:7:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:7:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[7]~input_o\)) # (!\d2|load~q\ & ((\d1|t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[7]~input_o\,
	datab => \d2|load~q\,
	datad => \d1|t:6:t1_10:bitx|dout~q\,
	combout => \d1|t:7:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N1
\d1|t:7:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:7:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:7:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X3_Y32_N14
\d1|ones~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|ones~0_combout\ = (!\d1|t:8:t1_10:bitx|dout~q\ & (!\d1|t:7:t1_10:bitx|dout~q\ & (!\d1|t:9:t1_10:bitx|dout~q\ & !\d1|t:10:t11:bitxul|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|t:8:t1_10:bitx|dout~q\,
	datab => \d1|t:7:t1_10:bitx|dout~q\,
	datac => \d1|t:9:t1_10:bitx|dout~q\,
	datad => \d1|t:10:t11:bitxul|dout~q\,
	combout => \d1|ones~0_combout\);

-- Location: LCCOMB_X3_Y32_N4
\d1|ones~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|ones~3_combout\ = (\d1|ones~1_combout\ & (\d1|ones~0_combout\ & \d1|ones~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|ones~1_combout\,
	datac => \d1|ones~0_combout\,
	datad => \d1|ones~2_combout\,
	combout => \d1|ones~3_combout\);

-- Location: LCCOMB_X3_Y32_N30
\d2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|Selector0~0_combout\ = (\d2|st.LD~q\) # ((\d2|st.SND~q\ & !\d1|ones~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|st.SND~q\,
	datab => \d2|st.LD~q\,
	datac => \d1|ones~3_combout\,
	combout => \d2|Selector0~0_combout\);

-- Location: LCCOMB_X3_Y32_N12
\d2|px_st.SND_68\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|px_st.SND_68~combout\ = (GLOBAL(\d2|Selector2~0clkctrl_outclk\) & ((\d2|Selector0~0_combout\))) # (!GLOBAL(\d2|Selector2~0clkctrl_outclk\) & (\d2|px_st.SND_68~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|px_st.SND_68~combout\,
	datac => \d2|Selector2~0clkctrl_outclk\,
	datad => \d2|Selector0~0_combout\,
	combout => \d2|px_st.SND_68~combout\);

-- Location: FF_X3_Y32_N13
\d2|st.SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|px_st.SND_68~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|st.SND~q\);

-- Location: LCCOMB_X3_Y32_N2
\d2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|Selector1~0_combout\ = (\d1|ones~2_combout\ & (\d1|ones~1_combout\ & (\d2|st.SND~q\ & \d1|ones~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|ones~2_combout\,
	datab => \d1|ones~1_combout\,
	datac => \d2|st.SND~q\,
	datad => \d1|ones~0_combout\,
	combout => \d2|Selector1~0_combout\);

-- Location: LCCOMB_X3_Y32_N16
\d2|px_st.ILDE_83\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|px_st.ILDE_83~combout\ = (GLOBAL(\d2|Selector2~0clkctrl_outclk\) & ((\d2|Selector1~0_combout\))) # (!GLOBAL(\d2|Selector2~0clkctrl_outclk\) & (\d2|px_st.ILDE_83~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|px_st.ILDE_83~combout\,
	datac => \d2|Selector1~0_combout\,
	datad => \d2|Selector2~0clkctrl_outclk\,
	combout => \d2|px_st.ILDE_83~combout\);

-- Location: LCCOMB_X3_Y32_N24
\d2|st.ILDE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|st.ILDE~0_combout\ = !\d2|px_st.ILDE_83~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2|px_st.ILDE_83~combout\,
	combout => \d2|st.ILDE~0_combout\);

-- Location: FF_X3_Y32_N25
\d2|st.ILDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d2|st.ILDE~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|st.ILDE~q\);

-- Location: LCCOMB_X1_Y32_N0
\d2|px_st.LD_74\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|px_st.LD_74~combout\ = (!\d2|st.ILDE~q\ & ((\snd~input_o\) # (\d2|px_st.LD_74~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|st.ILDE~q\,
	datac => \snd~input_o\,
	datad => \d2|px_st.LD_74~combout\,
	combout => \d2|px_st.LD_74~combout\);

-- Location: LCCOMB_X3_Y32_N28
\d2|st.LD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|st.LD~feeder_combout\ = \d2|px_st.LD_74~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2|px_st.LD_74~combout\,
	combout => \d2|st.LD~feeder_combout\);

-- Location: FF_X3_Y32_N29
\d2|st.LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|st.LD~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|st.LD~q\);

-- Location: LCCOMB_X3_Y32_N18
\d2|load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|load~0_combout\ = (\reset~input_o\ & ((\d2|st.LD~q\))) # (!\reset~input_o\ & (\d2|load~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \d2|load~q\,
	datad => \d2|st.LD~q\,
	combout => \d2|load~0_combout\);

-- Location: FF_X3_Y32_N19
\d2|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|load~q\);

-- Location: IOIBUF_X0_Y29_N22
\data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X3_Y32_N6
\d1|t:8:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:8:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[8]~input_o\)) # (!\d2|load~q\ & ((\d1|t:7:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|load~q\,
	datac => \data_in[8]~input_o\,
	datad => \d1|t:7:t1_10:bitx|dout~q\,
	combout => \d1|t:8:t1_10:bitx|dout~0_combout\);

-- Location: FF_X3_Y32_N7
\d1|t:8:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:8:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:8:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y32_N30
\d1|t:9:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:9:t1_10:bitx|dout~0_combout\ = (\d2|load~q\ & (!\data_in[9]~input_o\)) # (!\d2|load~q\ & ((\d1|t:8:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datac => \d1|t:8:t1_10:bitx|dout~q\,
	datad => \d2|load~q\,
	combout => \d1|t:9:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y32_N31
\d1|t:9:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:9:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:9:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y32_N20
\d1|t:10:t11:bitxul|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|t:10:t11:bitxul|dout~0_combout\ = (\d2|load~q\ & (!\data_in[10]~input_o\)) # (!\d2|load~q\ & ((\d1|t:9:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[10]~input_o\,
	datac => \d1|t:9:t1_10:bitx|dout~q\,
	datad => \d2|load~q\,
	combout => \d1|t:10:t11:bitxul|dout~0_combout\);

-- Location: FF_X4_Y32_N21
\d1|t:10:t11:bitxul|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|t:10:t11:bitxul|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|t:10:t11:bitxul|dout~q\);

ww_serial_out <= \serial_out~output_o\;

ww_end_of_tram <= \end_of_tram~output_o\;
END structure;


