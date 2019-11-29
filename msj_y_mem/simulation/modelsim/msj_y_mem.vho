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

-- DATE "11/25/2019 19:00:19"

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

ENTITY 	msj_y_mem IS
    PORT (
	enviar : IN std_logic;
	select_msj : IN std_logic_vector(1 DOWNTO 0);
	end_transmission : IN std_logic;
	end_trama : IN std_logic;
	msj_out : BUFFER std_logic_vector(7 DOWNTO 0);
	send_interno : BUFFER std_logic;
	clk : IN std_logic;
	reset_in : IN std_logic
	);
END msj_y_mem;

-- Design Ports Information
-- msj_out[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msj_out[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_interno	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_in	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_transmission	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_trama	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF msj_y_mem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enviar : std_logic;
SIGNAL ww_select_msj : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_end_transmission : std_logic;
SIGNAL ww_end_trama : std_logic;
SIGNAL ww_msj_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_send_interno : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_in : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \d1|pxst.send~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \msj_out[0]~output_o\ : std_logic;
SIGNAL \msj_out[1]~output_o\ : std_logic;
SIGNAL \msj_out[2]~output_o\ : std_logic;
SIGNAL \msj_out[3]~output_o\ : std_logic;
SIGNAL \msj_out[4]~output_o\ : std_logic;
SIGNAL \msj_out[5]~output_o\ : std_logic;
SIGNAL \msj_out[6]~output_o\ : std_logic;
SIGNAL \msj_out[7]~output_o\ : std_logic;
SIGNAL \send_interno~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \select_msj[0]~input_o\ : std_logic;
SIGNAL \end_trama~input_o\ : std_logic;
SIGNAL \end_transmission~input_o\ : std_logic;
SIGNAL \enviar~input_o\ : std_logic;
SIGNAL \d1|Selector1~0_combout\ : std_logic;
SIGNAL \d1|Selector1~1_combout\ : std_logic;
SIGNAL \reset_in~input_o\ : std_logic;
SIGNAL \reset_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \d1|stac.ini~q\ : std_logic;
SIGNAL \d1|pxst.asign~0_combout\ : std_logic;
SIGNAL \d1|stac.asign~q\ : std_logic;
SIGNAL \d1|pxst.send~combout\ : std_logic;
SIGNAL \d1|stac.send~feeder_combout\ : std_logic;
SIGNAL \d1|stac.send~q\ : std_logic;
SIGNAL \d1|Selector2~0_combout\ : std_logic;
SIGNAL \d1|stac.espera~q\ : std_logic;
SIGNAL \d1|pxst.incremento~0_combout\ : std_logic;
SIGNAL \d1|stac.incremento~q\ : std_logic;
SIGNAL \d1|Add0~0_combout\ : std_logic;
SIGNAL \d1|Add0~2_combout\ : std_logic;
SIGNAL \d1|pxst.send~clkctrl_outclk\ : std_logic;
SIGNAL \select_msj[1]~input_o\ : std_logic;
SIGNAL \d1|Add0~1\ : std_logic;
SIGNAL \d1|Add0~3_combout\ : std_logic;
SIGNAL \d1|Add0~5_combout\ : std_logic;
SIGNAL \d1|Add0~4\ : std_logic;
SIGNAL \d1|Add0~6_combout\ : std_logic;
SIGNAL \d1|Add0~8_combout\ : std_logic;
SIGNAL \d1|Add0~7\ : std_logic;
SIGNAL \d1|Add0~9_combout\ : std_logic;
SIGNAL \d1|Add0~11_combout\ : std_logic;
SIGNAL \d1|Add0~10\ : std_logic;
SIGNAL \d1|Add0~12_combout\ : std_logic;
SIGNAL \d1|Add0~14_combout\ : std_logic;
SIGNAL \d1|Add0~13\ : std_logic;
SIGNAL \d1|Add0~15_combout\ : std_logic;
SIGNAL \d1|Add0~17_combout\ : std_logic;
SIGNAL \d1|Add0~16\ : std_logic;
SIGNAL \d1|Add0~18_combout\ : std_logic;
SIGNAL \d1|Add0~20_combout\ : std_logic;
SIGNAL \d1|Add0~19\ : std_logic;
SIGNAL \d1|Add0~21_combout\ : std_logic;
SIGNAL \d1|Add0~23_combout\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \d2|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \d1|send_int~feeder_combout\ : std_logic;
SIGNAL \d1|send_int~q\ : std_logic;
SIGNAL \d1|add_aux\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enviar <= enviar;
ww_select_msj <= select_msj;
ww_end_transmission <= end_transmission;
ww_end_trama <= end_trama;
msj_out <= ww_msj_out;
send_interno <= ww_send_interno;
ww_clk <= clk;
ww_reset_in <= reset_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\d1|add_aux\(7) & \d1|add_aux\(6) & \d1|add_aux\(5) & \d1|add_aux\(4) & \d1|add_aux\(3) & \d1|add_aux\(2) & \d1|add_aux\(1) & \d1|add_aux\(0));

\d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\d2|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\d2|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\d2|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\d2|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\d2|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\d2|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\d1|pxst.send~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d1|pxst.send~combout\);

\reset_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_in~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\msj_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \msj_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\msj_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \msj_out[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\msj_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \msj_out[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\msj_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \msj_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\msj_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \msj_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\msj_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \msj_out[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\msj_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \msj_out[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\msj_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \msj_out[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\send_interno~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|send_int~q\,
	devoe => ww_devoe,
	o => \send_interno~output_o\);

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

-- Location: IOIBUF_X16_Y24_N8
\select_msj[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(0),
	o => \select_msj[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\end_trama~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_end_trama,
	o => \end_trama~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\end_transmission~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_end_transmission,
	o => \end_transmission~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\enviar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enviar,
	o => \enviar~input_o\);

-- Location: LCCOMB_X14_Y12_N8
\d1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector1~0_combout\ = (\end_transmission~input_o\ & \end_trama~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \end_transmission~input_o\,
	datad => \end_trama~input_o\,
	combout => \d1|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y12_N26
\d1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector1~1_combout\ = (\d1|Selector1~0_combout\ & (!\d1|stac.espera~q\ & ((\enviar~input_o\) # (\d1|stac.ini~q\)))) # (!\d1|Selector1~0_combout\ & ((\enviar~input_o\) # ((\d1|stac.ini~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Selector1~0_combout\,
	datab => \enviar~input_o\,
	datac => \d1|stac.ini~q\,
	datad => \d1|stac.espera~q\,
	combout => \d1|Selector1~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_in,
	o => \reset_in~input_o\);

-- Location: CLKCTRL_G4
\reset_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_in~inputclkctrl_outclk\);

-- Location: FF_X14_Y12_N27
\d1|stac.ini\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector1~1_combout\,
	clrn => \reset_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|stac.ini~q\);

-- Location: LCCOMB_X14_Y12_N4
\d1|pxst.asign~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|pxst.asign~0_combout\ = (\enviar~input_o\ & !\d1|stac.ini~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enviar~input_o\,
	datad => \d1|stac.ini~q\,
	combout => \d1|pxst.asign~0_combout\);

-- Location: FF_X14_Y12_N5
\d1|stac.asign\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|pxst.asign~0_combout\,
	clrn => \reset_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|stac.asign~q\);

-- Location: LCCOMB_X14_Y12_N20
\d1|pxst.send\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|pxst.send~combout\ = (\d1|stac.incremento~q\) # (\d1|stac.asign~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|stac.incremento~q\,
	datad => \d1|stac.asign~q\,
	combout => \d1|pxst.send~combout\);

-- Location: LCCOMB_X14_Y12_N28
\d1|stac.send~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|stac.send~feeder_combout\ = \d1|pxst.send~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|pxst.send~combout\,
	combout => \d1|stac.send~feeder_combout\);

-- Location: FF_X14_Y12_N29
\d1|stac.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|stac.send~feeder_combout\,
	clrn => \reset_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|stac.send~q\);

-- Location: LCCOMB_X14_Y12_N12
\d1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Selector2~0_combout\ = (\d1|stac.send~q\) # ((!\end_trama~input_o\ & \d1|stac.espera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \end_trama~input_o\,
	datac => \d1|stac.espera~q\,
	datad => \d1|stac.send~q\,
	combout => \d1|Selector2~0_combout\);

-- Location: FF_X14_Y12_N13
\d1|stac.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|Selector2~0_combout\,
	clrn => \reset_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|stac.espera~q\);

-- Location: LCCOMB_X14_Y12_N14
\d1|pxst.incremento~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|pxst.incremento~0_combout\ = (\end_trama~input_o\ & (!\end_transmission~input_o\ & \d1|stac.espera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \end_trama~input_o\,
	datac => \end_transmission~input_o\,
	datad => \d1|stac.espera~q\,
	combout => \d1|pxst.incremento~0_combout\);

-- Location: FF_X14_Y12_N15
\d1|stac.incremento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d1|pxst.incremento~0_combout\,
	clrn => \reset_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|stac.incremento~q\);

-- Location: LCCOMB_X16_Y12_N12
\d1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~0_combout\ = \d1|add_aux\(0) $ (VCC)
-- \d1|Add0~1\ = CARRY(\d1|add_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(0),
	datad => VCC,
	combout => \d1|Add0~0_combout\,
	cout => \d1|Add0~1\);

-- Location: LCCOMB_X14_Y12_N18
\d1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~2_combout\ = (\d1|stac.incremento~q\ & ((\d1|Add0~0_combout\))) # (!\d1|stac.incremento~q\ & (\select_msj[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datac => \d1|stac.incremento~q\,
	datad => \d1|Add0~0_combout\,
	combout => \d1|Add0~2_combout\);

-- Location: CLKCTRL_G5
\d1|pxst.send~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d1|pxst.send~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d1|pxst.send~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y12_N6
\d1|add_aux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(0) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~2_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(0),
	datac => \d1|Add0~2_combout\,
	datad => \d1|pxst.send~clkctrl_outclk\,
	combout => \d1|add_aux\(0));

-- Location: IOIBUF_X16_Y0_N8
\select_msj[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(1),
	o => \select_msj[1]~input_o\);

-- Location: LCCOMB_X16_Y12_N14
\d1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~3_combout\ = (\d1|add_aux\(1) & (!\d1|Add0~1\)) # (!\d1|add_aux\(1) & ((\d1|Add0~1\) # (GND)))
-- \d1|Add0~4\ = CARRY((!\d1|Add0~1\) # (!\d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(1),
	datad => VCC,
	cin => \d1|Add0~1\,
	combout => \d1|Add0~3_combout\,
	cout => \d1|Add0~4\);

-- Location: LCCOMB_X16_Y12_N28
\d1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~5_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~3_combout\)))) # (!\d1|stac.incremento~q\ & (\select_msj[0]~input_o\ $ ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|Add0~3_combout\,
	datad => \d1|stac.incremento~q\,
	combout => \d1|Add0~5_combout\);

-- Location: LCCOMB_X16_Y12_N8
\d1|add_aux[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(1) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~5_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(1),
	datac => \d1|pxst.send~clkctrl_outclk\,
	datad => \d1|Add0~5_combout\,
	combout => \d1|add_aux\(1));

-- Location: LCCOMB_X16_Y12_N16
\d1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~6_combout\ = (\d1|add_aux\(2) & (\d1|Add0~4\ $ (GND))) # (!\d1|add_aux\(2) & (!\d1|Add0~4\ & VCC))
-- \d1|Add0~7\ = CARRY((\d1|add_aux\(2) & !\d1|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(2),
	datad => VCC,
	cin => \d1|Add0~4\,
	combout => \d1|Add0~6_combout\,
	cout => \d1|Add0~7\);

-- Location: LCCOMB_X16_Y12_N10
\d1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~8_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~6_combout\)))) # (!\d1|stac.incremento~q\ & ((\select_msj[0]~input_o\) # ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \d1|Add0~6_combout\,
	datac => \select_msj[1]~input_o\,
	datad => \d1|stac.incremento~q\,
	combout => \d1|Add0~8_combout\);

-- Location: LCCOMB_X16_Y12_N30
\d1|add_aux[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(2) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~8_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(2),
	datac => \d1|pxst.send~clkctrl_outclk\,
	datad => \d1|Add0~8_combout\,
	combout => \d1|add_aux\(2));

-- Location: LCCOMB_X16_Y12_N18
\d1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~9_combout\ = (\d1|add_aux\(3) & (!\d1|Add0~7\)) # (!\d1|add_aux\(3) & ((\d1|Add0~7\) # (GND)))
-- \d1|Add0~10\ = CARRY((!\d1|Add0~7\) # (!\d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(3),
	datad => VCC,
	cin => \d1|Add0~7\,
	combout => \d1|Add0~9_combout\,
	cout => \d1|Add0~10\);

-- Location: LCCOMB_X16_Y12_N0
\d1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~11_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~9_combout\)))) # (!\d1|stac.incremento~q\ & (!\select_msj[0]~input_o\ & ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \d1|Add0~9_combout\,
	datac => \select_msj[1]~input_o\,
	datad => \d1|stac.incremento~q\,
	combout => \d1|Add0~11_combout\);

-- Location: LCCOMB_X16_Y12_N4
\d1|add_aux[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(3) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~11_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(3),
	datac => \d1|pxst.send~clkctrl_outclk\,
	datad => \d1|Add0~11_combout\,
	combout => \d1|add_aux\(3));

-- Location: LCCOMB_X16_Y12_N20
\d1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~12_combout\ = (\d1|add_aux\(4) & (\d1|Add0~10\ $ (GND))) # (!\d1|add_aux\(4) & (!\d1|Add0~10\ & VCC))
-- \d1|Add0~13\ = CARRY((\d1|add_aux\(4) & !\d1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(4),
	datad => VCC,
	cin => \d1|Add0~10\,
	combout => \d1|Add0~12_combout\,
	cout => \d1|Add0~13\);

-- Location: LCCOMB_X14_Y12_N24
\d1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~14_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~12_combout\)))) # (!\d1|stac.incremento~q\ & (!\select_msj[0]~input_o\ & (\select_msj[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|stac.incremento~q\,
	datad => \d1|Add0~12_combout\,
	combout => \d1|Add0~14_combout\);

-- Location: LCCOMB_X14_Y12_N16
\d1|add_aux[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(4) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~14_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(4),
	datac => \d1|Add0~14_combout\,
	datad => \d1|pxst.send~clkctrl_outclk\,
	combout => \d1|add_aux\(4));

-- Location: LCCOMB_X16_Y12_N22
\d1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~15_combout\ = (\d1|add_aux\(5) & (!\d1|Add0~13\)) # (!\d1|add_aux\(5) & ((\d1|Add0~13\) # (GND)))
-- \d1|Add0~16\ = CARRY((!\d1|Add0~13\) # (!\d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(5),
	datad => VCC,
	cin => \d1|Add0~13\,
	combout => \d1|Add0~15_combout\,
	cout => \d1|Add0~16\);

-- Location: LCCOMB_X14_Y12_N30
\d1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~17_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~15_combout\)))) # (!\d1|stac.incremento~q\ & ((\select_msj[0]~input_o\) # ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|stac.incremento~q\,
	datad => \d1|Add0~15_combout\,
	combout => \d1|Add0~17_combout\);

-- Location: LCCOMB_X14_Y12_N22
\d1|add_aux[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(5) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~17_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(5),
	datac => \d1|Add0~17_combout\,
	datad => \d1|pxst.send~clkctrl_outclk\,
	combout => \d1|add_aux\(5));

-- Location: LCCOMB_X16_Y12_N24
\d1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~18_combout\ = (\d1|add_aux\(6) & (\d1|Add0~16\ $ (GND))) # (!\d1|add_aux\(6) & (!\d1|Add0~16\ & VCC))
-- \d1|Add0~19\ = CARRY((\d1|add_aux\(6) & !\d1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(6),
	datad => VCC,
	cin => \d1|Add0~16\,
	combout => \d1|Add0~18_combout\,
	cout => \d1|Add0~19\);

-- Location: LCCOMB_X16_Y12_N2
\d1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~20_combout\ = (\d1|stac.incremento~q\ & (((\d1|Add0~18_combout\)))) # (!\d1|stac.incremento~q\ & (\select_msj[0]~input_o\ & ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \d1|Add0~18_combout\,
	datac => \select_msj[1]~input_o\,
	datad => \d1|stac.incremento~q\,
	combout => \d1|Add0~20_combout\);

-- Location: LCCOMB_X16_Y12_N6
\d1|add_aux[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(6) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~20_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|add_aux\(6),
	datac => \d1|pxst.send~clkctrl_outclk\,
	datad => \d1|Add0~20_combout\,
	combout => \d1|add_aux\(6));

-- Location: LCCOMB_X16_Y12_N26
\d1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~21_combout\ = \d1|Add0~19\ $ (\d1|add_aux\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|add_aux\(7),
	cin => \d1|Add0~19\,
	combout => \d1|Add0~21_combout\);

-- Location: LCCOMB_X14_Y12_N10
\d1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Add0~23_combout\ = (\d1|stac.incremento~q\ & \d1|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|stac.incremento~q\,
	datad => \d1|Add0~21_combout\,
	combout => \d1|Add0~23_combout\);

-- Location: LCCOMB_X14_Y12_N2
\d1|add_aux[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|add_aux\(7) = (GLOBAL(\d1|pxst.send~clkctrl_outclk\) & ((\d1|Add0~23_combout\))) # (!GLOBAL(\d1|pxst.send~clkctrl_outclk\) & (\d1|add_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|add_aux\(7),
	datac => \d1|pxst.send~clkctrl_outclk\,
	datad => \d1|Add0~23_combout\,
	combout => \d1|add_aux\(7));

-- Location: M9K_X15_Y12_N0
\d2|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010006100184003A0",
	mem_init0 => X"01B4002000194006D000800061001B40061001B40020001A4004D000000004001B8003A001D0007200184004D00080006E001840053000800075001CC0020001840063001BC0074000800065001B00020000B0006F001A00063001B80061001A0006300080006F00190006F001D000200010400000001000450014C002000104004C0011400550010C0053001140020001C80065000C40020001BC0073001C800750010C0000000000004001BC0065001300020000980020001C8006500140003A001C8006F001C00020001BC006400184007400194006C001C0006D001BC0043000800034000E8004F0012400520013C00540013000520013C004200104004C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "msj_y_mem.msj_y_mem0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:d2|altsyncram:Mux6_rtl_0|altsyncram_m001:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y12_N0
\d1|send_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|send_int~feeder_combout\ = \d1|stac.send~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|stac.send~q\,
	combout => \d1|send_int~feeder_combout\);

-- Location: FF_X14_Y12_N1
\d1|send_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1|send_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|send_int~q\);

ww_msj_out(0) <= \msj_out[0]~output_o\;

ww_msj_out(1) <= \msj_out[1]~output_o\;

ww_msj_out(2) <= \msj_out[2]~output_o\;

ww_msj_out(3) <= \msj_out[3]~output_o\;

ww_msj_out(4) <= \msj_out[4]~output_o\;

ww_msj_out(5) <= \msj_out[5]~output_o\;

ww_msj_out(6) <= \msj_out[6]~output_o\;

ww_msj_out(7) <= \msj_out[7]~output_o\;

ww_send_interno <= \send_interno~output_o\;
END structure;


