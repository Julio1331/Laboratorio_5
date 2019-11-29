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

-- DATE "11/25/2019 15:47:35"

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

ENTITY 	trama_y_reg IS
    PORT (
	send : IN std_logic;
	rst : IN std_logic;
	datos : IN std_logic_vector(7 DOWNTO 0);
	sal_serie : OUT std_logic;
	end_of_transmission : OUT std_logic;
	end_of_trama : OUT std_logic;
	clk : IN std_logic
	);
END trama_y_reg;

-- Design Ports Information
-- sal_serie	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_of_transmission	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_of_trama	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[6]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[7]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trama_y_reg IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sal_serie : std_logic;
SIGNAL ww_end_of_transmission : std_logic;
SIGNAL ww_end_of_trama : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \d2|d2|Selector2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sal_serie~output_o\ : std_logic;
SIGNAL \end_of_transmission~output_o\ : std_logic;
SIGNAL \end_of_trama~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \datos[4]~input_o\ : std_logic;
SIGNAL \datos[3]~input_o\ : std_logic;
SIGNAL \datos[2]~input_o\ : std_logic;
SIGNAL \datos[1]~input_o\ : std_logic;
SIGNAL \datos[0]~input_o\ : std_logic;
SIGNAL \d1|datos_out[1]~0_combout\ : std_logic;
SIGNAL \datos[7]~input_o\ : std_logic;
SIGNAL \datos[5]~input_o\ : std_logic;
SIGNAL \datos[6]~input_o\ : std_logic;
SIGNAL \d1|datos_out[1]~1_combout\ : std_logic;
SIGNAL \d2|d1|t:1:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \d2|d1|t:1:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:2:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:2:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:3:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:3:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:4:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:4:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:5:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:5:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:6:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:6:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|ones~1_combout\ : std_logic;
SIGNAL \d2|d2|Selector1~0_combout\ : std_logic;
SIGNAL \send~input_o\ : std_logic;
SIGNAL \d2|d2|Selector2~0_combout\ : std_logic;
SIGNAL \d2|d2|Selector2~0clkctrl_outclk\ : std_logic;
SIGNAL \d2|d1|t:7:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:7:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:8:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:8:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|ones~0_combout\ : std_logic;
SIGNAL \d2|d1|ones~2_combout\ : std_logic;
SIGNAL \d2|d2|Selector0~0_combout\ : std_logic;
SIGNAL \d2|d2|px_st.SND_68~combout\ : std_logic;
SIGNAL \d2|d2|st.SND~q\ : std_logic;
SIGNAL \d2|d2|Selector1~1_combout\ : std_logic;
SIGNAL \d2|d2|px_st.ILDE_83~combout\ : std_logic;
SIGNAL \d2|d2|st.ILDE~0_combout\ : std_logic;
SIGNAL \d2|d2|st.ILDE~q\ : std_logic;
SIGNAL \d2|d2|px_st.LD_74~combout\ : std_logic;
SIGNAL \d2|d2|st.LD~q\ : std_logic;
SIGNAL \d2|d2|load~0_combout\ : std_logic;
SIGNAL \d2|d2|load~q\ : std_logic;
SIGNAL \d2|d1|t:9:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:9:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d1|t:10:t11:bitxul|dout~0_combout\ : std_logic;
SIGNAL \d2|d1|t:10:t11:bitxul|dout~q\ : std_logic;
SIGNAL \d1|Equal0~1_combout\ : std_logic;
SIGNAL \d1|Equal0~0_combout\ : std_logic;
SIGNAL \d1|Equal0~2_combout\ : std_logic;
SIGNAL \d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_send <= send;
ww_rst <= rst;
ww_datos <= datos;
sal_serie <= ww_sal_serie;
end_of_transmission <= ww_end_of_transmission;
end_of_trama <= ww_end_of_trama;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\d2|d2|Selector2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d2|d2|Selector2~0_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ <= NOT \d2|d1|t:10:t11:bitxul|dout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N9
\sal_serie~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\,
	devoe => ww_devoe,
	o => \sal_serie~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\end_of_transmission~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \end_of_transmission~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\end_of_trama~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|d1|ones~2_combout\,
	devoe => ww_devoe,
	o => \end_of_trama~output_o\);

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

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\datos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(4),
	o => \datos[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\datos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(3),
	o => \datos[3]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\datos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(2),
	o => \datos[2]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\datos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(1),
	o => \datos[1]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\datos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(0),
	o => \datos[0]~input_o\);

-- Location: LCCOMB_X5_Y19_N30
\d1|datos_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|datos_out[1]~0_combout\ = \datos[3]~input_o\ $ (\datos[2]~input_o\ $ (\datos[1]~input_o\ $ (\datos[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[3]~input_o\,
	datab => \datos[2]~input_o\,
	datac => \datos[1]~input_o\,
	datad => \datos[0]~input_o\,
	combout => \d1|datos_out[1]~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\datos[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(7),
	o => \datos[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\datos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(5),
	o => \datos[5]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\datos[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(6),
	o => \datos[6]~input_o\);

-- Location: LCCOMB_X5_Y19_N12
\d1|datos_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|datos_out[1]~1_combout\ = \datos[7]~input_o\ $ (\datos[5]~input_o\ $ (\datos[6]~input_o\ $ (\datos[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[7]~input_o\,
	datab => \datos[5]~input_o\,
	datac => \datos[6]~input_o\,
	datad => \datos[4]~input_o\,
	combout => \d1|datos_out[1]~1_combout\);

-- Location: LCCOMB_X4_Y19_N10
\d2|d1|t:1:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:1:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (\d1|datos_out[1]~0_combout\ $ (!\d1|datos_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|datos_out[1]~0_combout\,
	datac => \d1|datos_out[1]~1_combout\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:1:t1_10:bitx|dout~0_combout\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X4_Y19_N11
\d2|d1|t:1:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:1:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:1:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N16
\d2|d1|t:2:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:2:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[0]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:1:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|load~q\,
	datab => \datos[0]~input_o\,
	datad => \d2|d1|t:1:t1_10:bitx|dout~q\,
	combout => \d2|d1|t:2:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N17
\d2|d1|t:2:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:2:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:2:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N28
\d2|d1|t:3:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:3:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[1]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:2:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[1]~input_o\,
	datab => \d2|d1|t:2:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:3:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N29
\d2|d1|t:3:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:3:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:3:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N30
\d2|d1|t:4:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:4:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[2]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:3:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|load~q\,
	datac => \datos[2]~input_o\,
	datad => \d2|d1|t:3:t1_10:bitx|dout~q\,
	combout => \d2|d1|t:4:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N31
\d2|d1|t:4:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:4:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:4:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N8
\d2|d1|t:5:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:5:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[3]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:4:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos[3]~input_o\,
	datac => \d2|d1|t:4:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:5:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N9
\d2|d1|t:5:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:5:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:5:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N14
\d2|d1|t:6:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:6:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[4]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:5:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos[4]~input_o\,
	datac => \d2|d1|t:5:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:6:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N15
\d2|d1|t:6:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:6:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:6:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N18
\d2|d1|ones~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|ones~1_combout\ = (!\d2|d1|t:6:t1_10:bitx|dout~q\ & (!\d2|d1|t:4:t1_10:bitx|dout~q\ & (!\d2|d1|t:5:t1_10:bitx|dout~q\ & !\d2|d1|t:3:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|t:6:t1_10:bitx|dout~q\,
	datab => \d2|d1|t:4:t1_10:bitx|dout~q\,
	datac => \d2|d1|t:5:t1_10:bitx|dout~q\,
	datad => \d2|d1|t:3:t1_10:bitx|dout~q\,
	combout => \d2|d1|ones~1_combout\);

-- Location: LCCOMB_X3_Y19_N22
\d2|d2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|Selector1~0_combout\ = (!\d2|d1|t:1:t1_10:bitx|dout~q\ & !\d2|d1|t:2:t1_10:bitx|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|t:1:t1_10:bitx|dout~q\,
	datac => \d2|d1|t:2:t1_10:bitx|dout~q\,
	combout => \d2|d2|Selector1~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\send~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send,
	o => \send~input_o\);

-- Location: LCCOMB_X3_Y19_N24
\d2|d2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|Selector2~0_combout\ = (\send~input_o\) # (\d2|d2|st.ILDE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \send~input_o\,
	datad => \d2|d2|st.ILDE~q\,
	combout => \d2|d2|Selector2~0_combout\);

-- Location: CLKCTRL_G0
\d2|d2|Selector2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d2|d2|Selector2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d2|d2|Selector2~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y19_N26
\d2|d1|t:7:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:7:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[5]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos[5]~input_o\,
	datac => \d2|d1|t:6:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:7:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N27
\d2|d1|t:7:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:7:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:7:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N0
\d2|d1|t:8:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:8:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[6]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:7:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[6]~input_o\,
	datac => \d2|d1|t:7:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:8:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N1
\d2|d1|t:8:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:8:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:8:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N4
\d2|d1|ones~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|ones~0_combout\ = (!\d2|d1|t:8:t1_10:bitx|dout~q\ & (!\d2|d1|t:9:t1_10:bitx|dout~q\ & (!\d2|d1|t:10:t11:bitxul|dout~q\ & !\d2|d1|t:7:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|t:8:t1_10:bitx|dout~q\,
	datab => \d2|d1|t:9:t1_10:bitx|dout~q\,
	datac => \d2|d1|t:10:t11:bitxul|dout~q\,
	datad => \d2|d1|t:7:t1_10:bitx|dout~q\,
	combout => \d2|d1|ones~0_combout\);

-- Location: LCCOMB_X4_Y19_N12
\d2|d1|ones~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|ones~2_combout\ = (!\d2|d1|t:1:t1_10:bitx|dout~q\ & (!\d2|d1|t:2:t1_10:bitx|dout~q\ & (\d2|d1|ones~0_combout\ & \d2|d1|ones~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|t:1:t1_10:bitx|dout~q\,
	datab => \d2|d1|t:2:t1_10:bitx|dout~q\,
	datac => \d2|d1|ones~0_combout\,
	datad => \d2|d1|ones~1_combout\,
	combout => \d2|d1|ones~2_combout\);

-- Location: LCCOMB_X4_Y19_N24
\d2|d2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|Selector0~0_combout\ = (\d2|d2|st.LD~q\) # ((\d2|d2|st.SND~q\ & !\d2|d1|ones~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|st.SND~q\,
	datac => \d2|d2|st.LD~q\,
	datad => \d2|d1|ones~2_combout\,
	combout => \d2|d2|Selector0~0_combout\);

-- Location: LCCOMB_X4_Y19_N2
\d2|d2|px_st.SND_68\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|px_st.SND_68~combout\ = (GLOBAL(\d2|d2|Selector2~0clkctrl_outclk\) & ((\d2|d2|Selector0~0_combout\))) # (!GLOBAL(\d2|d2|Selector2~0clkctrl_outclk\) & (\d2|d2|px_st.SND_68~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|px_st.SND_68~combout\,
	datac => \d2|d2|Selector2~0clkctrl_outclk\,
	datad => \d2|d2|Selector0~0_combout\,
	combout => \d2|d2|px_st.SND_68~combout\);

-- Location: FF_X4_Y19_N3
\d2|d2|st.SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d2|px_st.SND_68~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|st.SND~q\);

-- Location: LCCOMB_X3_Y19_N14
\d2|d2|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|Selector1~1_combout\ = (\d2|d1|ones~1_combout\ & (\d2|d2|Selector1~0_combout\ & (\d2|d2|st.SND~q\ & \d2|d1|ones~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|ones~1_combout\,
	datab => \d2|d2|Selector1~0_combout\,
	datac => \d2|d2|st.SND~q\,
	datad => \d2|d1|ones~0_combout\,
	combout => \d2|d2|Selector1~1_combout\);

-- Location: LCCOMB_X3_Y19_N10
\d2|d2|px_st.ILDE_83\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|px_st.ILDE_83~combout\ = (GLOBAL(\d2|d2|Selector2~0clkctrl_outclk\) & (\d2|d2|Selector1~1_combout\)) # (!GLOBAL(\d2|d2|Selector2~0clkctrl_outclk\) & ((\d2|d2|px_st.ILDE_83~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|Selector1~1_combout\,
	datac => \d2|d2|px_st.ILDE_83~combout\,
	datad => \d2|d2|Selector2~0clkctrl_outclk\,
	combout => \d2|d2|px_st.ILDE_83~combout\);

-- Location: LCCOMB_X3_Y19_N28
\d2|d2|st.ILDE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|st.ILDE~0_combout\ = !\d2|d2|px_st.ILDE_83~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2|d2|px_st.ILDE_83~combout\,
	combout => \d2|d2|st.ILDE~0_combout\);

-- Location: FF_X3_Y19_N29
\d2|d2|st.ILDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d2|d2|st.ILDE~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|st.ILDE~q\);

-- Location: LCCOMB_X3_Y19_N18
\d2|d2|px_st.LD_74\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|px_st.LD_74~combout\ = (!\d2|d2|st.ILDE~q\ & ((\send~input_o\) # (\d2|d2|px_st.LD_74~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|st.ILDE~q\,
	datac => \send~input_o\,
	datad => \d2|d2|px_st.LD_74~combout\,
	combout => \d2|d2|px_st.LD_74~combout\);

-- Location: FF_X4_Y19_N25
\d2|d2|st.LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d2|d2|px_st.LD_74~combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|st.LD~q\);

-- Location: LCCOMB_X4_Y19_N6
\d2|d2|load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|load~0_combout\ = (\rst~input_o\ & ((\d2|d2|st.LD~q\))) # (!\rst~input_o\ & (\d2|d2|load~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \d2|d2|load~q\,
	datad => \d2|d2|st.LD~q\,
	combout => \d2|d2|load~0_combout\);

-- Location: FF_X4_Y19_N7
\d2|d2|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d2|load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|load~q\);

-- Location: LCCOMB_X4_Y19_N22
\d2|d1|t:9:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:9:t1_10:bitx|dout~0_combout\ = (\d2|d2|load~q\ & (!\datos[7]~input_o\)) # (!\d2|d2|load~q\ & ((\d2|d1|t:8:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|load~q\,
	datab => \datos[7]~input_o\,
	datad => \d2|d1|t:8:t1_10:bitx|dout~q\,
	combout => \d2|d1|t:9:t1_10:bitx|dout~0_combout\);

-- Location: FF_X4_Y19_N23
\d2|d1|t:9:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:9:t1_10:bitx|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:9:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X4_Y19_N20
\d2|d1|t:10:t11:bitxul|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|t:10:t11:bitxul|dout~0_combout\ = (\d2|d1|t:9:t1_10:bitx|dout~q\) # (\d2|d2|load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2|d1|t:9:t1_10:bitx|dout~q\,
	datad => \d2|d2|load~q\,
	combout => \d2|d1|t:10:t11:bitxul|dout~0_combout\);

-- Location: FF_X4_Y19_N21
\d2|d1|t:10:t11:bitxul|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2|d1|t:10:t11:bitxul|dout~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|t:10:t11:bitxul|dout~q\);

-- Location: LCCOMB_X5_Y19_N18
\d1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal0~1_combout\ = (!\datos[7]~input_o\ & (!\datos[5]~input_o\ & (!\datos[6]~input_o\ & !\datos[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[7]~input_o\,
	datab => \datos[5]~input_o\,
	datac => \datos[6]~input_o\,
	datad => \datos[4]~input_o\,
	combout => \d1|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y19_N28
\d1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal0~0_combout\ = (!\datos[3]~input_o\ & (\datos[2]~input_o\ & (!\datos[1]~input_o\ & !\datos[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[3]~input_o\,
	datab => \datos[2]~input_o\,
	datac => \datos[1]~input_o\,
	datad => \datos[0]~input_o\,
	combout => \d1|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y19_N0
\d1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Equal0~2_combout\ = (\d1|Equal0~1_combout\ & \d1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Equal0~1_combout\,
	datad => \d1|Equal0~0_combout\,
	combout => \d1|Equal0~2_combout\);

ww_sal_serie <= \sal_serie~output_o\;

ww_end_of_transmission <= \end_of_transmission~output_o\;

ww_end_of_trama <= \end_of_trama~output_o\;
END structure;


