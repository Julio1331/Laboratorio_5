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

-- DATE "12/07/2019 20:33:48"

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

ENTITY 	msj_y_salida_apart IS
    PORT (
	enviar : IN std_logic;
	select_msj : IN std_logic_vector(1 DOWNTO 0);
	select_vel : IN std_logic_vector(1 DOWNTO 0);
	cts : OUT std_logic;
	rts : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	salida_serie : OUT std_logic
	);
END msj_y_salida_apart;

-- Design Ports Information
-- cts	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rts	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_serie	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_vel[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_vel[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF msj_y_salida_apart IS
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
SIGNAL ww_select_vel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cts : std_logic;
SIGNAL ww_rts : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_salida_serie : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d3|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1|d1|pxst.send~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cts~output_o\ : std_logic;
SIGNAL \rts~output_o\ : std_logic;
SIGNAL \salida_serie~output_o\ : std_logic;
SIGNAL \select_vel[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d3|cont38400[0]~10_combout\ : std_logic;
SIGNAL \d3|LessThan2~1_combout\ : std_logic;
SIGNAL \d3|LessThan2~0_combout\ : std_logic;
SIGNAL \d3|LessThan2~3_combout\ : std_logic;
SIGNAL \d3|cont38400[0]~11\ : std_logic;
SIGNAL \d3|cont38400[1]~12_combout\ : std_logic;
SIGNAL \d3|cont38400[1]~13\ : std_logic;
SIGNAL \d3|cont38400[2]~14_combout\ : std_logic;
SIGNAL \d3|cont38400[2]~15\ : std_logic;
SIGNAL \d3|cont38400[3]~16_combout\ : std_logic;
SIGNAL \d3|cont38400[3]~17\ : std_logic;
SIGNAL \d3|cont38400[4]~18_combout\ : std_logic;
SIGNAL \d3|cont38400[4]~19\ : std_logic;
SIGNAL \d3|cont38400[5]~20_combout\ : std_logic;
SIGNAL \d3|cont38400[5]~21\ : std_logic;
SIGNAL \d3|cont38400[6]~22_combout\ : std_logic;
SIGNAL \d3|cont38400[6]~23\ : std_logic;
SIGNAL \d3|cont38400[7]~24_combout\ : std_logic;
SIGNAL \d3|cont38400[7]~25\ : std_logic;
SIGNAL \d3|cont38400[8]~26_combout\ : std_logic;
SIGNAL \d3|cont38400[8]~27\ : std_logic;
SIGNAL \d3|cont38400[9]~28_combout\ : std_logic;
SIGNAL \d3|LessThan2~2_combout\ : std_logic;
SIGNAL \d3|clk_38400~0_combout\ : std_logic;
SIGNAL \d3|clk_38400~q\ : std_logic;
SIGNAL \d3|cont115200[0]~8_combout\ : std_logic;
SIGNAL \d3|cont115200[3]~15\ : std_logic;
SIGNAL \d3|cont115200[4]~16_combout\ : std_logic;
SIGNAL \d3|cont115200[4]~17\ : std_logic;
SIGNAL \d3|cont115200[5]~18_combout\ : std_logic;
SIGNAL \d3|cont115200[5]~19\ : std_logic;
SIGNAL \d3|cont115200[6]~20_combout\ : std_logic;
SIGNAL \d3|cont115200[6]~21\ : std_logic;
SIGNAL \d3|cont115200[7]~22_combout\ : std_logic;
SIGNAL \d3|LessThan3~1_combout\ : std_logic;
SIGNAL \d3|cont115200[0]~9\ : std_logic;
SIGNAL \d3|cont115200[1]~10_combout\ : std_logic;
SIGNAL \d3|cont115200[1]~11\ : std_logic;
SIGNAL \d3|cont115200[2]~12_combout\ : std_logic;
SIGNAL \d3|cont115200[2]~13\ : std_logic;
SIGNAL \d3|cont115200[3]~14_combout\ : std_logic;
SIGNAL \d3|LessThan3~0_combout\ : std_logic;
SIGNAL \d3|clk_115200~0_combout\ : std_logic;
SIGNAL \d3|clk_115200~q\ : std_logic;
SIGNAL \d3|cont9600[0]~12_combout\ : std_logic;
SIGNAL \d3|cont9600[0]~13\ : std_logic;
SIGNAL \d3|cont9600[1]~14_combout\ : std_logic;
SIGNAL \d3|cont9600[1]~15\ : std_logic;
SIGNAL \d3|cont9600[2]~16_combout\ : std_logic;
SIGNAL \d3|cont9600[2]~17\ : std_logic;
SIGNAL \d3|cont9600[3]~18_combout\ : std_logic;
SIGNAL \d3|cont9600[3]~19\ : std_logic;
SIGNAL \d3|cont9600[4]~20_combout\ : std_logic;
SIGNAL \d3|cont9600[4]~21\ : std_logic;
SIGNAL \d3|cont9600[5]~22_combout\ : std_logic;
SIGNAL \d3|cont9600[5]~23\ : std_logic;
SIGNAL \d3|cont9600[6]~24_combout\ : std_logic;
SIGNAL \d3|cont9600[6]~25\ : std_logic;
SIGNAL \d3|cont9600[7]~26_combout\ : std_logic;
SIGNAL \d3|cont9600[7]~27\ : std_logic;
SIGNAL \d3|cont9600[8]~28_combout\ : std_logic;
SIGNAL \d3|cont9600[8]~29\ : std_logic;
SIGNAL \d3|cont9600[9]~30_combout\ : std_logic;
SIGNAL \d3|cont9600[9]~31\ : std_logic;
SIGNAL \d3|cont9600[10]~32_combout\ : std_logic;
SIGNAL \d3|cont9600[10]~33\ : std_logic;
SIGNAL \d3|cont9600[11]~34_combout\ : std_logic;
SIGNAL \d3|LessThan0~9_combout\ : std_logic;
SIGNAL \d3|LessThan0~6_combout\ : std_logic;
SIGNAL \d3|LessThan0~3_combout\ : std_logic;
SIGNAL \d3|LessThan0~26_combout\ : std_logic;
SIGNAL \d3|clk_9600~0_combout\ : std_logic;
SIGNAL \d3|clk_9600~q\ : std_logic;
SIGNAL \d3|cont4800[0]~13_combout\ : std_logic;
SIGNAL \d3|cont4800[10]~34\ : std_logic;
SIGNAL \d3|cont4800[11]~35_combout\ : std_logic;
SIGNAL \d3|cont4800[11]~36\ : std_logic;
SIGNAL \d3|cont4800[12]~37_combout\ : std_logic;
SIGNAL \d3|LessThan1~2_combout\ : std_logic;
SIGNAL \d3|LessThan1~1_combout\ : std_logic;
SIGNAL \d3|LessThan1~3_combout\ : std_logic;
SIGNAL \d3|LessThan1~4_combout\ : std_logic;
SIGNAL \d3|LessThan1~5_combout\ : std_logic;
SIGNAL \d3|cont4800[0]~14\ : std_logic;
SIGNAL \d3|cont4800[1]~15_combout\ : std_logic;
SIGNAL \d3|cont4800[1]~16\ : std_logic;
SIGNAL \d3|cont4800[2]~17_combout\ : std_logic;
SIGNAL \d3|cont4800[2]~18\ : std_logic;
SIGNAL \d3|cont4800[3]~19_combout\ : std_logic;
SIGNAL \d3|cont4800[3]~20\ : std_logic;
SIGNAL \d3|cont4800[4]~21_combout\ : std_logic;
SIGNAL \d3|cont4800[4]~22\ : std_logic;
SIGNAL \d3|cont4800[5]~23_combout\ : std_logic;
SIGNAL \d3|cont4800[5]~24\ : std_logic;
SIGNAL \d3|cont4800[6]~25_combout\ : std_logic;
SIGNAL \d3|cont4800[6]~26\ : std_logic;
SIGNAL \d3|cont4800[7]~27_combout\ : std_logic;
SIGNAL \d3|cont4800[7]~28\ : std_logic;
SIGNAL \d3|cont4800[8]~29_combout\ : std_logic;
SIGNAL \d3|cont4800[8]~30\ : std_logic;
SIGNAL \d3|cont4800[9]~31_combout\ : std_logic;
SIGNAL \d3|cont4800[9]~32\ : std_logic;
SIGNAL \d3|cont4800[10]~33_combout\ : std_logic;
SIGNAL \d3|LessThan1~0_combout\ : std_logic;
SIGNAL \d3|clk_4800~0_combout\ : std_logic;
SIGNAL \d3|clk_4800~q\ : std_logic;
SIGNAL \select_vel[0]~input_o\ : std_logic;
SIGNAL \d3|Mux0~0_combout\ : std_logic;
SIGNAL \d3|Mux0~combout\ : std_logic;
SIGNAL \d3|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \d1|d1|pxst.send~clkctrl_outclk\ : std_logic;
SIGNAL \select_msj[0]~input_o\ : std_logic;
SIGNAL \d1|d1|Add0~0_combout\ : std_logic;
SIGNAL \d1|d1|Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \d1|d1|stac.espera~q\ : std_logic;
SIGNAL \select_msj[1]~input_o\ : std_logic;
SIGNAL \d1|d1|Add0~1\ : std_logic;
SIGNAL \d1|d1|Add0~3_combout\ : std_logic;
SIGNAL \d1|d1|Add0~5_combout\ : std_logic;
SIGNAL \d1|d1|Add0~4\ : std_logic;
SIGNAL \d1|d1|Add0~6_combout\ : std_logic;
SIGNAL \d1|d1|Add0~8_combout\ : std_logic;
SIGNAL \d1|d1|Add0~7\ : std_logic;
SIGNAL \d1|d1|Add0~9_combout\ : std_logic;
SIGNAL \d1|d1|Add0~11_combout\ : std_logic;
SIGNAL \d1|d1|Add0~10\ : std_logic;
SIGNAL \d1|d1|Add0~12_combout\ : std_logic;
SIGNAL \d1|d1|Add0~14_combout\ : std_logic;
SIGNAL \d1|d1|Add0~13\ : std_logic;
SIGNAL \d1|d1|Add0~15_combout\ : std_logic;
SIGNAL \d1|d1|Add0~17_combout\ : std_logic;
SIGNAL \d1|d1|Add0~16\ : std_logic;
SIGNAL \d1|d1|Add0~18_combout\ : std_logic;
SIGNAL \d1|d1|Add0~20_combout\ : std_logic;
SIGNAL \d1|d1|Add0~19\ : std_logic;
SIGNAL \d1|d1|Add0~21_combout\ : std_logic;
SIGNAL \d1|d1|Add0~23_combout\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \d2|d1|Equal0~0_combout\ : std_logic;
SIGNAL \d2|d1|Equal0~1_combout\ : std_logic;
SIGNAL \d1|d1|pxst.incremento~0_combout\ : std_logic;
SIGNAL \d1|d1|stac.incremento~q\ : std_logic;
SIGNAL \d1|d1|Add0~2_combout\ : std_logic;
SIGNAL \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \d2|d1|paridad~1_combout\ : std_logic;
SIGNAL \d2|d1|paridad~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:1:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:2:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:3:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:4:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:5:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:6:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|ones~1_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:7:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|ones~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|ones~2_combout\ : std_logic;
SIGNAL \enviar~input_o\ : std_logic;
SIGNAL \d1|d1|Selector1~0_combout\ : std_logic;
SIGNAL \d1|d1|Selector1~1_combout\ : std_logic;
SIGNAL \d1|d1|stac.ini~q\ : std_logic;
SIGNAL \d1|d1|pxst.asign~0_combout\ : std_logic;
SIGNAL \d1|d1|stac.asign~q\ : std_logic;
SIGNAL \d1|d1|pxst.send~combout\ : std_logic;
SIGNAL \d1|d1|stac.send~feeder_combout\ : std_logic;
SIGNAL \d1|d1|stac.send~q\ : std_logic;
SIGNAL \d1|d1|send_int~feeder_combout\ : std_logic;
SIGNAL \d1|d1|send_int~q\ : std_logic;
SIGNAL \d2|d2|d2|Selector1~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|st.SND~q\ : std_logic;
SIGNAL \d2|d2|d2|Selector0~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|st.ILDE~q\ : std_logic;
SIGNAL \d2|d2|d2|px_st.LD~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|st.LD~q\ : std_logic;
SIGNAL \d2|d2|d2|load~q\ : std_logic;
SIGNAL \d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:8:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:9:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d1|t:10:t11:bitxul|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|t:10:t11:bitxul|dout~q\ : std_logic;
SIGNAL \d3|cont115200\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d3|cont38400\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \d3|cont9600\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d1|d1|add_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d3|cont4800\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enviar <= enviar;
ww_select_msj <= select_msj;
ww_select_vel <= select_vel;
cts <= ww_cts;
rts <= ww_rts;
ww_clk <= clk;
ww_reset <= reset;
salida_serie <= ww_salida_serie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\d1|d1|add_aux\(7) & \d1|d1|add_aux\(6) & \d1|d1|add_aux\(5) & \d1|d1|add_aux\(4) & \d1|d1|add_aux\(3) & \d1|d1|add_aux\(2) & \d1|d1|add_aux\(1) & \d1|d1|add_aux\(0));

\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\d3|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d3|Mux0~combout\);

\d1|d1|pxst.send~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d1|d1|pxst.send~combout\);
\d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ <= NOT \d2|d2|d1|t:10:t11:bitxul|dout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y27_N23
\cts~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cts~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\rts~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rts~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\salida_serie~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\,
	devoe => ww_devoe,
	o => \salida_serie~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\select_vel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_vel(1),
	o => \select_vel[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X88_Y34_N8
\d3|cont38400[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[0]~10_combout\ = \d3|cont38400\(0) $ (VCC)
-- \d3|cont38400[0]~11\ = CARRY(\d3|cont38400\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(0),
	datad => VCC,
	combout => \d3|cont38400[0]~10_combout\,
	cout => \d3|cont38400[0]~11\);

-- Location: LCCOMB_X88_Y34_N2
\d3|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan2~1_combout\ = (!\d3|cont38400\(6) & (!\d3|cont38400\(5) & !\d3|cont38400\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(6),
	datac => \d3|cont38400\(5),
	datad => \d3|cont38400\(8),
	combout => \d3|LessThan2~1_combout\);

-- Location: LCCOMB_X88_Y34_N4
\d3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan2~0_combout\ = (!\d3|cont38400\(4) & (((!\d3|cont38400\(2) & !\d3|cont38400\(1))) # (!\d3|cont38400\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont38400\(2),
	datab => \d3|cont38400\(4),
	datac => \d3|cont38400\(3),
	datad => \d3|cont38400\(1),
	combout => \d3|LessThan2~0_combout\);

-- Location: LCCOMB_X88_Y34_N6
\d3|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan2~3_combout\ = (!\d3|LessThan2~2_combout\ & ((!\d3|LessThan2~0_combout\) # (!\d3|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|LessThan2~1_combout\,
	datac => \d3|LessThan2~0_combout\,
	datad => \d3|LessThan2~2_combout\,
	combout => \d3|LessThan2~3_combout\);

-- Location: FF_X88_Y34_N9
\d3|cont38400[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[0]~10_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(0));

-- Location: LCCOMB_X88_Y34_N10
\d3|cont38400[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[1]~12_combout\ = (\d3|cont38400\(1) & (!\d3|cont38400[0]~11\)) # (!\d3|cont38400\(1) & ((\d3|cont38400[0]~11\) # (GND)))
-- \d3|cont38400[1]~13\ = CARRY((!\d3|cont38400[0]~11\) # (!\d3|cont38400\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont38400\(1),
	datad => VCC,
	cin => \d3|cont38400[0]~11\,
	combout => \d3|cont38400[1]~12_combout\,
	cout => \d3|cont38400[1]~13\);

-- Location: FF_X88_Y34_N11
\d3|cont38400[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[1]~12_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(1));

-- Location: LCCOMB_X88_Y34_N12
\d3|cont38400[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[2]~14_combout\ = (\d3|cont38400\(2) & (\d3|cont38400[1]~13\ $ (GND))) # (!\d3|cont38400\(2) & (!\d3|cont38400[1]~13\ & VCC))
-- \d3|cont38400[2]~15\ = CARRY((\d3|cont38400\(2) & !\d3|cont38400[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont38400\(2),
	datad => VCC,
	cin => \d3|cont38400[1]~13\,
	combout => \d3|cont38400[2]~14_combout\,
	cout => \d3|cont38400[2]~15\);

-- Location: FF_X88_Y34_N13
\d3|cont38400[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[2]~14_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(2));

-- Location: LCCOMB_X88_Y34_N14
\d3|cont38400[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[3]~16_combout\ = (\d3|cont38400\(3) & (!\d3|cont38400[2]~15\)) # (!\d3|cont38400\(3) & ((\d3|cont38400[2]~15\) # (GND)))
-- \d3|cont38400[3]~17\ = CARRY((!\d3|cont38400[2]~15\) # (!\d3|cont38400\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(3),
	datad => VCC,
	cin => \d3|cont38400[2]~15\,
	combout => \d3|cont38400[3]~16_combout\,
	cout => \d3|cont38400[3]~17\);

-- Location: FF_X88_Y34_N15
\d3|cont38400[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[3]~16_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(3));

-- Location: LCCOMB_X88_Y34_N16
\d3|cont38400[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[4]~18_combout\ = (\d3|cont38400\(4) & (\d3|cont38400[3]~17\ $ (GND))) # (!\d3|cont38400\(4) & (!\d3|cont38400[3]~17\ & VCC))
-- \d3|cont38400[4]~19\ = CARRY((\d3|cont38400\(4) & !\d3|cont38400[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(4),
	datad => VCC,
	cin => \d3|cont38400[3]~17\,
	combout => \d3|cont38400[4]~18_combout\,
	cout => \d3|cont38400[4]~19\);

-- Location: FF_X88_Y34_N17
\d3|cont38400[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[4]~18_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(4));

-- Location: LCCOMB_X88_Y34_N18
\d3|cont38400[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[5]~20_combout\ = (\d3|cont38400\(5) & (!\d3|cont38400[4]~19\)) # (!\d3|cont38400\(5) & ((\d3|cont38400[4]~19\) # (GND)))
-- \d3|cont38400[5]~21\ = CARRY((!\d3|cont38400[4]~19\) # (!\d3|cont38400\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(5),
	datad => VCC,
	cin => \d3|cont38400[4]~19\,
	combout => \d3|cont38400[5]~20_combout\,
	cout => \d3|cont38400[5]~21\);

-- Location: FF_X88_Y34_N19
\d3|cont38400[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[5]~20_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(5));

-- Location: LCCOMB_X88_Y34_N20
\d3|cont38400[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[6]~22_combout\ = (\d3|cont38400\(6) & (\d3|cont38400[5]~21\ $ (GND))) # (!\d3|cont38400\(6) & (!\d3|cont38400[5]~21\ & VCC))
-- \d3|cont38400[6]~23\ = CARRY((\d3|cont38400\(6) & !\d3|cont38400[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(6),
	datad => VCC,
	cin => \d3|cont38400[5]~21\,
	combout => \d3|cont38400[6]~22_combout\,
	cout => \d3|cont38400[6]~23\);

-- Location: FF_X88_Y34_N21
\d3|cont38400[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[6]~22_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(6));

-- Location: LCCOMB_X88_Y34_N22
\d3|cont38400[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[7]~24_combout\ = (\d3|cont38400\(7) & (!\d3|cont38400[6]~23\)) # (!\d3|cont38400\(7) & ((\d3|cont38400[6]~23\) # (GND)))
-- \d3|cont38400[7]~25\ = CARRY((!\d3|cont38400[6]~23\) # (!\d3|cont38400\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont38400\(7),
	datad => VCC,
	cin => \d3|cont38400[6]~23\,
	combout => \d3|cont38400[7]~24_combout\,
	cout => \d3|cont38400[7]~25\);

-- Location: FF_X88_Y34_N23
\d3|cont38400[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[7]~24_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(7));

-- Location: LCCOMB_X88_Y34_N24
\d3|cont38400[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[8]~26_combout\ = (\d3|cont38400\(8) & (\d3|cont38400[7]~25\ $ (GND))) # (!\d3|cont38400\(8) & (!\d3|cont38400[7]~25\ & VCC))
-- \d3|cont38400[8]~27\ = CARRY((\d3|cont38400\(8) & !\d3|cont38400[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(8),
	datad => VCC,
	cin => \d3|cont38400[7]~25\,
	combout => \d3|cont38400[8]~26_combout\,
	cout => \d3|cont38400[8]~27\);

-- Location: FF_X88_Y34_N25
\d3|cont38400[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[8]~26_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(8));

-- Location: LCCOMB_X88_Y34_N26
\d3|cont38400[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont38400[9]~28_combout\ = \d3|cont38400\(9) $ (\d3|cont38400[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont38400\(9),
	cin => \d3|cont38400[8]~27\,
	combout => \d3|cont38400[9]~28_combout\);

-- Location: FF_X88_Y34_N27
\d3|cont38400[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont38400[9]~28_combout\,
	sclr => \d3|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont38400\(9));

-- Location: LCCOMB_X88_Y34_N28
\d3|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan2~2_combout\ = ((!\d3|cont38400\(8) & !\d3|cont38400\(7))) # (!\d3|cont38400\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont38400\(8),
	datac => \d3|cont38400\(7),
	datad => \d3|cont38400\(9),
	combout => \d3|LessThan2~2_combout\);

-- Location: LCCOMB_X92_Y34_N8
\d3|clk_38400~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|clk_38400~0_combout\ = \d3|clk_38400~q\ $ (((!\d3|LessThan2~2_combout\ & ((!\d3|LessThan2~1_combout\) # (!\d3|LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|LessThan2~2_combout\,
	datab => \d3|LessThan2~0_combout\,
	datac => \d3|clk_38400~q\,
	datad => \d3|LessThan2~1_combout\,
	combout => \d3|clk_38400~0_combout\);

-- Location: FF_X92_Y34_N9
\d3|clk_38400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d3|clk_38400~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|clk_38400~q\);

-- Location: LCCOMB_X92_Y34_N16
\d3|cont115200[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[0]~8_combout\ = \d3|cont115200\(0) $ (VCC)
-- \d3|cont115200[0]~9\ = CARRY(\d3|cont115200\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont115200\(0),
	datad => VCC,
	combout => \d3|cont115200[0]~8_combout\,
	cout => \d3|cont115200[0]~9\);

-- Location: LCCOMB_X92_Y34_N22
\d3|cont115200[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[3]~14_combout\ = (\d3|cont115200\(3) & (!\d3|cont115200[2]~13\)) # (!\d3|cont115200\(3) & ((\d3|cont115200[2]~13\) # (GND)))
-- \d3|cont115200[3]~15\ = CARRY((!\d3|cont115200[2]~13\) # (!\d3|cont115200\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont115200\(3),
	datad => VCC,
	cin => \d3|cont115200[2]~13\,
	combout => \d3|cont115200[3]~14_combout\,
	cout => \d3|cont115200[3]~15\);

-- Location: LCCOMB_X92_Y34_N24
\d3|cont115200[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[4]~16_combout\ = (\d3|cont115200\(4) & (\d3|cont115200[3]~15\ $ (GND))) # (!\d3|cont115200\(4) & (!\d3|cont115200[3]~15\ & VCC))
-- \d3|cont115200[4]~17\ = CARRY((\d3|cont115200\(4) & !\d3|cont115200[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont115200\(4),
	datad => VCC,
	cin => \d3|cont115200[3]~15\,
	combout => \d3|cont115200[4]~16_combout\,
	cout => \d3|cont115200[4]~17\);

-- Location: FF_X92_Y34_N25
\d3|cont115200[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[4]~16_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(4));

-- Location: LCCOMB_X92_Y34_N26
\d3|cont115200[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[5]~18_combout\ = (\d3|cont115200\(5) & (!\d3|cont115200[4]~17\)) # (!\d3|cont115200\(5) & ((\d3|cont115200[4]~17\) # (GND)))
-- \d3|cont115200[5]~19\ = CARRY((!\d3|cont115200[4]~17\) # (!\d3|cont115200\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont115200\(5),
	datad => VCC,
	cin => \d3|cont115200[4]~17\,
	combout => \d3|cont115200[5]~18_combout\,
	cout => \d3|cont115200[5]~19\);

-- Location: FF_X92_Y34_N27
\d3|cont115200[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[5]~18_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(5));

-- Location: LCCOMB_X92_Y34_N28
\d3|cont115200[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[6]~20_combout\ = (\d3|cont115200\(6) & (\d3|cont115200[5]~19\ $ (GND))) # (!\d3|cont115200\(6) & (!\d3|cont115200[5]~19\ & VCC))
-- \d3|cont115200[6]~21\ = CARRY((\d3|cont115200\(6) & !\d3|cont115200[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont115200\(6),
	datad => VCC,
	cin => \d3|cont115200[5]~19\,
	combout => \d3|cont115200[6]~20_combout\,
	cout => \d3|cont115200[6]~21\);

-- Location: FF_X92_Y34_N29
\d3|cont115200[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[6]~20_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(6));

-- Location: LCCOMB_X92_Y34_N30
\d3|cont115200[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[7]~22_combout\ = \d3|cont115200[6]~21\ $ (\d3|cont115200\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d3|cont115200\(7),
	cin => \d3|cont115200[6]~21\,
	combout => \d3|cont115200[7]~22_combout\);

-- Location: FF_X92_Y34_N31
\d3|cont115200[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[7]~22_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(7));

-- Location: LCCOMB_X92_Y34_N10
\d3|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan3~1_combout\ = (\d3|cont115200\(7) & !\d3|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d3|cont115200\(7),
	datad => \d3|LessThan3~0_combout\,
	combout => \d3|LessThan3~1_combout\);

-- Location: FF_X92_Y34_N17
\d3|cont115200[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[0]~8_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(0));

-- Location: LCCOMB_X92_Y34_N18
\d3|cont115200[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[1]~10_combout\ = (\d3|cont115200\(1) & (!\d3|cont115200[0]~9\)) # (!\d3|cont115200\(1) & ((\d3|cont115200[0]~9\) # (GND)))
-- \d3|cont115200[1]~11\ = CARRY((!\d3|cont115200[0]~9\) # (!\d3|cont115200\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont115200\(1),
	datad => VCC,
	cin => \d3|cont115200[0]~9\,
	combout => \d3|cont115200[1]~10_combout\,
	cout => \d3|cont115200[1]~11\);

-- Location: FF_X92_Y34_N19
\d3|cont115200[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[1]~10_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(1));

-- Location: LCCOMB_X92_Y34_N20
\d3|cont115200[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont115200[2]~12_combout\ = (\d3|cont115200\(2) & (\d3|cont115200[1]~11\ $ (GND))) # (!\d3|cont115200\(2) & (!\d3|cont115200[1]~11\ & VCC))
-- \d3|cont115200[2]~13\ = CARRY((\d3|cont115200\(2) & !\d3|cont115200[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont115200\(2),
	datad => VCC,
	cin => \d3|cont115200[1]~11\,
	combout => \d3|cont115200[2]~12_combout\,
	cout => \d3|cont115200[2]~13\);

-- Location: FF_X92_Y34_N21
\d3|cont115200[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[2]~12_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(2));

-- Location: FF_X92_Y34_N23
\d3|cont115200[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont115200[3]~14_combout\,
	sclr => \d3|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont115200\(3));

-- Location: LCCOMB_X92_Y34_N0
\d3|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan3~0_combout\ = ((!\d3|cont115200\(5) & ((!\d3|cont115200\(4)) # (!\d3|cont115200\(3))))) # (!\d3|cont115200\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont115200\(3),
	datab => \d3|cont115200\(4),
	datac => \d3|cont115200\(5),
	datad => \d3|cont115200\(6),
	combout => \d3|LessThan3~0_combout\);

-- Location: LCCOMB_X92_Y34_N14
\d3|clk_115200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|clk_115200~0_combout\ = \d3|clk_115200~q\ $ (((!\d3|LessThan3~0_combout\ & \d3|cont115200\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|LessThan3~0_combout\,
	datac => \d3|clk_115200~q\,
	datad => \d3|cont115200\(7),
	combout => \d3|clk_115200~0_combout\);

-- Location: FF_X92_Y34_N15
\d3|clk_115200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d3|clk_115200~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|clk_115200~q\);

-- Location: LCCOMB_X91_Y34_N4
\d3|cont9600[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[0]~12_combout\ = \d3|cont9600\(0) $ (VCC)
-- \d3|cont9600[0]~13\ = CARRY(\d3|cont9600\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(0),
	datad => VCC,
	combout => \d3|cont9600[0]~12_combout\,
	cout => \d3|cont9600[0]~13\);

-- Location: FF_X91_Y34_N5
\d3|cont9600[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[0]~12_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(0));

-- Location: LCCOMB_X91_Y34_N6
\d3|cont9600[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[1]~14_combout\ = (\d3|cont9600\(1) & (!\d3|cont9600[0]~13\)) # (!\d3|cont9600\(1) & ((\d3|cont9600[0]~13\) # (GND)))
-- \d3|cont9600[1]~15\ = CARRY((!\d3|cont9600[0]~13\) # (!\d3|cont9600\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(1),
	datad => VCC,
	cin => \d3|cont9600[0]~13\,
	combout => \d3|cont9600[1]~14_combout\,
	cout => \d3|cont9600[1]~15\);

-- Location: FF_X91_Y34_N7
\d3|cont9600[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[1]~14_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(1));

-- Location: LCCOMB_X91_Y34_N8
\d3|cont9600[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[2]~16_combout\ = (\d3|cont9600\(2) & (\d3|cont9600[1]~15\ $ (GND))) # (!\d3|cont9600\(2) & (!\d3|cont9600[1]~15\ & VCC))
-- \d3|cont9600[2]~17\ = CARRY((\d3|cont9600\(2) & !\d3|cont9600[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(2),
	datad => VCC,
	cin => \d3|cont9600[1]~15\,
	combout => \d3|cont9600[2]~16_combout\,
	cout => \d3|cont9600[2]~17\);

-- Location: FF_X91_Y34_N9
\d3|cont9600[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[2]~16_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(2));

-- Location: LCCOMB_X91_Y34_N10
\d3|cont9600[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[3]~18_combout\ = (\d3|cont9600\(3) & (!\d3|cont9600[2]~17\)) # (!\d3|cont9600\(3) & ((\d3|cont9600[2]~17\) # (GND)))
-- \d3|cont9600[3]~19\ = CARRY((!\d3|cont9600[2]~17\) # (!\d3|cont9600\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(3),
	datad => VCC,
	cin => \d3|cont9600[2]~17\,
	combout => \d3|cont9600[3]~18_combout\,
	cout => \d3|cont9600[3]~19\);

-- Location: FF_X91_Y34_N11
\d3|cont9600[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[3]~18_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(3));

-- Location: LCCOMB_X91_Y34_N12
\d3|cont9600[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[4]~20_combout\ = (\d3|cont9600\(4) & (\d3|cont9600[3]~19\ $ (GND))) # (!\d3|cont9600\(4) & (!\d3|cont9600[3]~19\ & VCC))
-- \d3|cont9600[4]~21\ = CARRY((\d3|cont9600\(4) & !\d3|cont9600[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(4),
	datad => VCC,
	cin => \d3|cont9600[3]~19\,
	combout => \d3|cont9600[4]~20_combout\,
	cout => \d3|cont9600[4]~21\);

-- Location: FF_X91_Y34_N13
\d3|cont9600[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[4]~20_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(4));

-- Location: LCCOMB_X91_Y34_N14
\d3|cont9600[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[5]~22_combout\ = (\d3|cont9600\(5) & (!\d3|cont9600[4]~21\)) # (!\d3|cont9600\(5) & ((\d3|cont9600[4]~21\) # (GND)))
-- \d3|cont9600[5]~23\ = CARRY((!\d3|cont9600[4]~21\) # (!\d3|cont9600\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(5),
	datad => VCC,
	cin => \d3|cont9600[4]~21\,
	combout => \d3|cont9600[5]~22_combout\,
	cout => \d3|cont9600[5]~23\);

-- Location: FF_X91_Y34_N15
\d3|cont9600[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[5]~22_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(5));

-- Location: LCCOMB_X91_Y34_N16
\d3|cont9600[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[6]~24_combout\ = (\d3|cont9600\(6) & (\d3|cont9600[5]~23\ $ (GND))) # (!\d3|cont9600\(6) & (!\d3|cont9600[5]~23\ & VCC))
-- \d3|cont9600[6]~25\ = CARRY((\d3|cont9600\(6) & !\d3|cont9600[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(6),
	datad => VCC,
	cin => \d3|cont9600[5]~23\,
	combout => \d3|cont9600[6]~24_combout\,
	cout => \d3|cont9600[6]~25\);

-- Location: FF_X91_Y34_N17
\d3|cont9600[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[6]~24_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(6));

-- Location: LCCOMB_X91_Y34_N18
\d3|cont9600[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[7]~26_combout\ = (\d3|cont9600\(7) & (!\d3|cont9600[6]~25\)) # (!\d3|cont9600\(7) & ((\d3|cont9600[6]~25\) # (GND)))
-- \d3|cont9600[7]~27\ = CARRY((!\d3|cont9600[6]~25\) # (!\d3|cont9600\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(7),
	datad => VCC,
	cin => \d3|cont9600[6]~25\,
	combout => \d3|cont9600[7]~26_combout\,
	cout => \d3|cont9600[7]~27\);

-- Location: FF_X91_Y34_N19
\d3|cont9600[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[7]~26_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(7));

-- Location: LCCOMB_X91_Y34_N20
\d3|cont9600[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[8]~28_combout\ = (\d3|cont9600\(8) & (\d3|cont9600[7]~27\ $ (GND))) # (!\d3|cont9600\(8) & (!\d3|cont9600[7]~27\ & VCC))
-- \d3|cont9600[8]~29\ = CARRY((\d3|cont9600\(8) & !\d3|cont9600[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(8),
	datad => VCC,
	cin => \d3|cont9600[7]~27\,
	combout => \d3|cont9600[8]~28_combout\,
	cout => \d3|cont9600[8]~29\);

-- Location: FF_X91_Y34_N21
\d3|cont9600[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[8]~28_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(8));

-- Location: LCCOMB_X91_Y34_N22
\d3|cont9600[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[9]~30_combout\ = (\d3|cont9600\(9) & (!\d3|cont9600[8]~29\)) # (!\d3|cont9600\(9) & ((\d3|cont9600[8]~29\) # (GND)))
-- \d3|cont9600[9]~31\ = CARRY((!\d3|cont9600[8]~29\) # (!\d3|cont9600\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(9),
	datad => VCC,
	cin => \d3|cont9600[8]~29\,
	combout => \d3|cont9600[9]~30_combout\,
	cout => \d3|cont9600[9]~31\);

-- Location: FF_X91_Y34_N23
\d3|cont9600[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[9]~30_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(9));

-- Location: LCCOMB_X91_Y34_N24
\d3|cont9600[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[10]~32_combout\ = (\d3|cont9600\(10) & (\d3|cont9600[9]~31\ $ (GND))) # (!\d3|cont9600\(10) & (!\d3|cont9600[9]~31\ & VCC))
-- \d3|cont9600[10]~33\ = CARRY((\d3|cont9600\(10) & !\d3|cont9600[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(10),
	datad => VCC,
	cin => \d3|cont9600[9]~31\,
	combout => \d3|cont9600[10]~32_combout\,
	cout => \d3|cont9600[10]~33\);

-- Location: FF_X91_Y34_N25
\d3|cont9600[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[10]~32_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(10));

-- Location: LCCOMB_X91_Y34_N26
\d3|cont9600[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont9600[11]~34_combout\ = \d3|cont9600\(11) $ (\d3|cont9600[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(11),
	cin => \d3|cont9600[10]~33\,
	combout => \d3|cont9600[11]~34_combout\);

-- Location: FF_X91_Y34_N27
\d3|cont9600[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont9600[11]~34_combout\,
	sclr => \d3|LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont9600\(11));

-- Location: LCCOMB_X91_Y34_N30
\d3|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan0~9_combout\ = (!\d3|cont9600\(2) & ((!\d3|cont9600\(1)) # (!\d3|cont9600\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont9600\(0),
	datac => \d3|cont9600\(2),
	datad => \d3|cont9600\(1),
	combout => \d3|LessThan0~9_combout\);

-- Location: LCCOMB_X91_Y34_N0
\d3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan0~6_combout\ = ((!\d3|cont9600\(4) & ((\d3|LessThan0~9_combout\) # (!\d3|cont9600\(3))))) # (!\d3|cont9600\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(4),
	datab => \d3|cont9600\(5),
	datac => \d3|LessThan0~9_combout\,
	datad => \d3|cont9600\(3),
	combout => \d3|LessThan0~6_combout\);

-- Location: LCCOMB_X91_Y34_N2
\d3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan0~3_combout\ = (!\d3|cont9600\(7) & (!\d3|cont9600\(6) & (!\d3|cont9600\(8) & \d3|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(7),
	datab => \d3|cont9600\(6),
	datac => \d3|cont9600\(8),
	datad => \d3|LessThan0~6_combout\,
	combout => \d3|LessThan0~3_combout\);

-- Location: LCCOMB_X91_Y34_N28
\d3|LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan0~26_combout\ = (\d3|cont9600\(11) & ((\d3|cont9600\(10)) # ((\d3|cont9600\(9) & !\d3|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont9600\(11),
	datab => \d3|cont9600\(10),
	datac => \d3|cont9600\(9),
	datad => \d3|LessThan0~3_combout\,
	combout => \d3|LessThan0~26_combout\);

-- Location: LCCOMB_X92_Y34_N12
\d3|clk_9600~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|clk_9600~0_combout\ = \d3|clk_9600~q\ $ (\d3|LessThan0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d3|clk_9600~q\,
	datad => \d3|LessThan0~26_combout\,
	combout => \d3|clk_9600~0_combout\);

-- Location: FF_X92_Y34_N13
\d3|clk_9600\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d3|clk_9600~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|clk_9600~q\);

-- Location: LCCOMB_X89_Y34_N2
\d3|cont4800[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[0]~13_combout\ = \d3|cont4800\(0) $ (VCC)
-- \d3|cont4800[0]~14\ = CARRY(\d3|cont4800\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont4800\(0),
	datad => VCC,
	combout => \d3|cont4800[0]~13_combout\,
	cout => \d3|cont4800[0]~14\);

-- Location: LCCOMB_X89_Y34_N22
\d3|cont4800[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[10]~33_combout\ = (\d3|cont4800\(10) & (\d3|cont4800[9]~32\ $ (GND))) # (!\d3|cont4800\(10) & (!\d3|cont4800[9]~32\ & VCC))
-- \d3|cont4800[10]~34\ = CARRY((\d3|cont4800\(10) & !\d3|cont4800[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(10),
	datad => VCC,
	cin => \d3|cont4800[9]~32\,
	combout => \d3|cont4800[10]~33_combout\,
	cout => \d3|cont4800[10]~34\);

-- Location: LCCOMB_X89_Y34_N24
\d3|cont4800[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[11]~35_combout\ = (\d3|cont4800\(11) & (!\d3|cont4800[10]~34\)) # (!\d3|cont4800\(11) & ((\d3|cont4800[10]~34\) # (GND)))
-- \d3|cont4800[11]~36\ = CARRY((!\d3|cont4800[10]~34\) # (!\d3|cont4800\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(11),
	datad => VCC,
	cin => \d3|cont4800[10]~34\,
	combout => \d3|cont4800[11]~35_combout\,
	cout => \d3|cont4800[11]~36\);

-- Location: FF_X89_Y34_N25
\d3|cont4800[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[11]~35_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(11));

-- Location: LCCOMB_X89_Y34_N26
\d3|cont4800[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[12]~37_combout\ = \d3|cont4800[11]~36\ $ (!\d3|cont4800\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d3|cont4800\(12),
	cin => \d3|cont4800[11]~36\,
	combout => \d3|cont4800[12]~37_combout\);

-- Location: FF_X89_Y34_N27
\d3|cont4800[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[12]~37_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(12));

-- Location: LCCOMB_X89_Y34_N28
\d3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~2_combout\ = ((!\d3|cont4800\(4) & !\d3|cont4800\(5))) # (!\d3|cont4800\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(4),
	datac => \d3|cont4800\(6),
	datad => \d3|cont4800\(5),
	combout => \d3|LessThan1~2_combout\);

-- Location: LCCOMB_X89_Y34_N0
\d3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~1_combout\ = (!\d3|cont4800\(11) & (!\d3|cont4800\(8) & (!\d3|cont4800\(9) & !\d3|cont4800\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(11),
	datab => \d3|cont4800\(8),
	datac => \d3|cont4800\(9),
	datad => \d3|cont4800\(7),
	combout => \d3|LessThan1~1_combout\);

-- Location: LCCOMB_X89_Y34_N30
\d3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~3_combout\ = (!\d3|cont4800\(3) & (((!\d3|cont4800\(1)) # (!\d3|cont4800\(0))) # (!\d3|cont4800\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(2),
	datab => \d3|cont4800\(0),
	datac => \d3|cont4800\(1),
	datad => \d3|cont4800\(3),
	combout => \d3|LessThan1~3_combout\);

-- Location: LCCOMB_X90_Y34_N10
\d3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~4_combout\ = (\d3|LessThan1~1_combout\ & ((\d3|LessThan1~2_combout\) # ((!\d3|cont4800\(5) & \d3|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(5),
	datab => \d3|LessThan1~2_combout\,
	datac => \d3|LessThan1~1_combout\,
	datad => \d3|LessThan1~3_combout\,
	combout => \d3|LessThan1~4_combout\);

-- Location: LCCOMB_X90_Y34_N24
\d3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~5_combout\ = (\d3|cont4800\(12) & (!\d3|LessThan1~4_combout\ & ((\d3|cont4800\(10)) # (\d3|cont4800\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(12),
	datab => \d3|cont4800\(10),
	datac => \d3|cont4800\(11),
	datad => \d3|LessThan1~4_combout\,
	combout => \d3|LessThan1~5_combout\);

-- Location: FF_X89_Y34_N3
\d3|cont4800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[0]~13_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(0));

-- Location: LCCOMB_X89_Y34_N4
\d3|cont4800[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[1]~15_combout\ = (\d3|cont4800\(1) & (!\d3|cont4800[0]~14\)) # (!\d3|cont4800\(1) & ((\d3|cont4800[0]~14\) # (GND)))
-- \d3|cont4800[1]~16\ = CARRY((!\d3|cont4800[0]~14\) # (!\d3|cont4800\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont4800\(1),
	datad => VCC,
	cin => \d3|cont4800[0]~14\,
	combout => \d3|cont4800[1]~15_combout\,
	cout => \d3|cont4800[1]~16\);

-- Location: FF_X89_Y34_N5
\d3|cont4800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[1]~15_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(1));

-- Location: LCCOMB_X89_Y34_N6
\d3|cont4800[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[2]~17_combout\ = (\d3|cont4800\(2) & (\d3|cont4800[1]~16\ $ (GND))) # (!\d3|cont4800\(2) & (!\d3|cont4800[1]~16\ & VCC))
-- \d3|cont4800[2]~18\ = CARRY((\d3|cont4800\(2) & !\d3|cont4800[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(2),
	datad => VCC,
	cin => \d3|cont4800[1]~16\,
	combout => \d3|cont4800[2]~17_combout\,
	cout => \d3|cont4800[2]~18\);

-- Location: FF_X89_Y34_N7
\d3|cont4800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[2]~17_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(2));

-- Location: LCCOMB_X89_Y34_N8
\d3|cont4800[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[3]~19_combout\ = (\d3|cont4800\(3) & (!\d3|cont4800[2]~18\)) # (!\d3|cont4800\(3) & ((\d3|cont4800[2]~18\) # (GND)))
-- \d3|cont4800[3]~20\ = CARRY((!\d3|cont4800[2]~18\) # (!\d3|cont4800\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont4800\(3),
	datad => VCC,
	cin => \d3|cont4800[2]~18\,
	combout => \d3|cont4800[3]~19_combout\,
	cout => \d3|cont4800[3]~20\);

-- Location: FF_X89_Y34_N9
\d3|cont4800[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[3]~19_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(3));

-- Location: LCCOMB_X89_Y34_N10
\d3|cont4800[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[4]~21_combout\ = (\d3|cont4800\(4) & (\d3|cont4800[3]~20\ $ (GND))) # (!\d3|cont4800\(4) & (!\d3|cont4800[3]~20\ & VCC))
-- \d3|cont4800[4]~22\ = CARRY((\d3|cont4800\(4) & !\d3|cont4800[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(4),
	datad => VCC,
	cin => \d3|cont4800[3]~20\,
	combout => \d3|cont4800[4]~21_combout\,
	cout => \d3|cont4800[4]~22\);

-- Location: FF_X89_Y34_N11
\d3|cont4800[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[4]~21_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(4));

-- Location: LCCOMB_X89_Y34_N12
\d3|cont4800[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[5]~23_combout\ = (\d3|cont4800\(5) & (!\d3|cont4800[4]~22\)) # (!\d3|cont4800\(5) & ((\d3|cont4800[4]~22\) # (GND)))
-- \d3|cont4800[5]~24\ = CARRY((!\d3|cont4800[4]~22\) # (!\d3|cont4800\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont4800\(5),
	datad => VCC,
	cin => \d3|cont4800[4]~22\,
	combout => \d3|cont4800[5]~23_combout\,
	cout => \d3|cont4800[5]~24\);

-- Location: FF_X89_Y34_N13
\d3|cont4800[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[5]~23_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(5));

-- Location: LCCOMB_X89_Y34_N14
\d3|cont4800[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[6]~25_combout\ = (\d3|cont4800\(6) & (\d3|cont4800[5]~24\ $ (GND))) # (!\d3|cont4800\(6) & (!\d3|cont4800[5]~24\ & VCC))
-- \d3|cont4800[6]~26\ = CARRY((\d3|cont4800\(6) & !\d3|cont4800[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(6),
	datad => VCC,
	cin => \d3|cont4800[5]~24\,
	combout => \d3|cont4800[6]~25_combout\,
	cout => \d3|cont4800[6]~26\);

-- Location: FF_X89_Y34_N15
\d3|cont4800[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[6]~25_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(6));

-- Location: LCCOMB_X89_Y34_N16
\d3|cont4800[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[7]~27_combout\ = (\d3|cont4800\(7) & (!\d3|cont4800[6]~26\)) # (!\d3|cont4800\(7) & ((\d3|cont4800[6]~26\) # (GND)))
-- \d3|cont4800[7]~28\ = CARRY((!\d3|cont4800[6]~26\) # (!\d3|cont4800\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(7),
	datad => VCC,
	cin => \d3|cont4800[6]~26\,
	combout => \d3|cont4800[7]~27_combout\,
	cout => \d3|cont4800[7]~28\);

-- Location: FF_X89_Y34_N17
\d3|cont4800[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[7]~27_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(7));

-- Location: LCCOMB_X89_Y34_N18
\d3|cont4800[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[8]~29_combout\ = (\d3|cont4800\(8) & (\d3|cont4800[7]~28\ $ (GND))) # (!\d3|cont4800\(8) & (!\d3|cont4800[7]~28\ & VCC))
-- \d3|cont4800[8]~30\ = CARRY((\d3|cont4800\(8) & !\d3|cont4800[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(8),
	datad => VCC,
	cin => \d3|cont4800[7]~28\,
	combout => \d3|cont4800[8]~29_combout\,
	cout => \d3|cont4800[8]~30\);

-- Location: FF_X89_Y34_N19
\d3|cont4800[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[8]~29_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(8));

-- Location: LCCOMB_X89_Y34_N20
\d3|cont4800[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|cont4800[9]~31_combout\ = (\d3|cont4800\(9) & (!\d3|cont4800[8]~30\)) # (!\d3|cont4800\(9) & ((\d3|cont4800[8]~30\) # (GND)))
-- \d3|cont4800[9]~32\ = CARRY((!\d3|cont4800[8]~30\) # (!\d3|cont4800\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d3|cont4800\(9),
	datad => VCC,
	cin => \d3|cont4800[8]~30\,
	combout => \d3|cont4800[9]~31_combout\,
	cout => \d3|cont4800[9]~32\);

-- Location: FF_X89_Y34_N21
\d3|cont4800[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[9]~31_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(9));

-- Location: FF_X89_Y34_N23
\d3|cont4800[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3|cont4800[10]~33_combout\,
	sclr => \d3|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|cont4800\(10));

-- Location: LCCOMB_X90_Y34_N16
\d3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|LessThan1~0_combout\ = ((!\d3|cont4800\(10) & !\d3|cont4800\(11))) # (!\d3|cont4800\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3|cont4800\(10),
	datac => \d3|cont4800\(12),
	datad => \d3|cont4800\(11),
	combout => \d3|LessThan1~0_combout\);

-- Location: LCCOMB_X92_Y34_N4
\d3|clk_4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|clk_4800~0_combout\ = \d3|clk_4800~q\ $ (((!\d3|LessThan1~0_combout\ & !\d3|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|LessThan1~0_combout\,
	datac => \d3|clk_4800~q\,
	datad => \d3|LessThan1~4_combout\,
	combout => \d3|clk_4800~0_combout\);

-- Location: FF_X92_Y34_N5
\d3|clk_4800\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d3|clk_4800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|clk_4800~q\);

-- Location: IOIBUF_X115_Y15_N8
\select_vel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_vel(0),
	o => \select_vel[0]~input_o\);

-- Location: LCCOMB_X92_Y34_N2
\d3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|Mux0~0_combout\ = (\select_vel[1]~input_o\ & (((\select_vel[0]~input_o\)))) # (!\select_vel[1]~input_o\ & ((\select_vel[0]~input_o\ & (\d3|clk_9600~q\)) # (!\select_vel[0]~input_o\ & ((\d3|clk_4800~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3|clk_9600~q\,
	datab => \select_vel[1]~input_o\,
	datac => \d3|clk_4800~q\,
	datad => \select_vel[0]~input_o\,
	combout => \d3|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y34_N6
\d3|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|Mux0~combout\ = LCELL((\select_vel[1]~input_o\ & ((\d3|Mux0~0_combout\ & ((\d3|clk_115200~q\))) # (!\d3|Mux0~0_combout\ & (\d3|clk_38400~q\)))) # (!\select_vel[1]~input_o\ & (((\d3|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_vel[1]~input_o\,
	datab => \d3|clk_38400~q\,
	datac => \d3|clk_115200~q\,
	datad => \d3|Mux0~0_combout\,
	combout => \d3|Mux0~combout\);

-- Location: CLKCTRL_G9
\d3|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d3|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d3|Mux0~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\d1|d1|pxst.send~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d1|d1|pxst.send~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d1|d1|pxst.send~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\select_msj[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(0),
	o => \select_msj[0]~input_o\);

-- Location: LCCOMB_X76_Y41_N4
\d1|d1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~0_combout\ = \d1|d1|add_aux\(0) $ (VCC)
-- \d1|d1|Add0~1\ = CARRY(\d1|d1|add_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(0),
	datad => VCC,
	combout => \d1|d1|Add0~0_combout\,
	cout => \d1|d1|Add0~1\);

-- Location: LCCOMB_X80_Y41_N12
\d1|d1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Selector2~0_combout\ = (\d1|d1|stac.send~q\) # ((!\d2|d2|d1|ones~2_combout\ & \d1|d1|stac.espera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|ones~2_combout\,
	datac => \d1|d1|stac.espera~q\,
	datad => \d1|d1|stac.send~q\,
	combout => \d1|d1|Selector2~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X80_Y41_N13
\d1|d1|stac.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d1|d1|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|stac.espera~q\);

-- Location: IOIBUF_X115_Y14_N1
\select_msj[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(1),
	o => \select_msj[1]~input_o\);

-- Location: LCCOMB_X76_Y41_N6
\d1|d1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~3_combout\ = (\d1|d1|add_aux\(1) & (!\d1|d1|Add0~1\)) # (!\d1|d1|add_aux\(1) & ((\d1|d1|Add0~1\) # (GND)))
-- \d1|d1|Add0~4\ = CARRY((!\d1|d1|Add0~1\) # (!\d1|d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(1),
	datad => VCC,
	cin => \d1|d1|Add0~1\,
	combout => \d1|d1|Add0~3_combout\,
	cout => \d1|d1|Add0~4\);

-- Location: LCCOMB_X77_Y41_N8
\d1|d1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~5_combout\ = (\d1|d1|stac.incremento~q\ & (((\d1|d1|Add0~3_combout\)))) # (!\d1|d1|stac.incremento~q\ & (\select_msj[0]~input_o\ $ ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|d1|Add0~3_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~5_combout\);

-- Location: LCCOMB_X77_Y41_N12
\d1|d1|add_aux[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(1) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~5_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(1),
	datac => \d1|d1|Add0~5_combout\,
	datad => \d1|d1|pxst.send~clkctrl_outclk\,
	combout => \d1|d1|add_aux\(1));

-- Location: LCCOMB_X76_Y41_N8
\d1|d1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~6_combout\ = (\d1|d1|add_aux\(2) & (\d1|d1|Add0~4\ $ (GND))) # (!\d1|d1|add_aux\(2) & (!\d1|d1|Add0~4\ & VCC))
-- \d1|d1|Add0~7\ = CARRY((\d1|d1|add_aux\(2) & !\d1|d1|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(2),
	datad => VCC,
	cin => \d1|d1|Add0~4\,
	combout => \d1|d1|Add0~6_combout\,
	cout => \d1|d1|Add0~7\);

-- Location: LCCOMB_X76_Y41_N24
\d1|d1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~8_combout\ = (\d1|d1|stac.incremento~q\ & (((\d1|d1|Add0~6_combout\)))) # (!\d1|d1|stac.incremento~q\ & ((\select_msj[0]~input_o\) # ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|d1|Add0~6_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~8_combout\);

-- Location: LCCOMB_X76_Y41_N28
\d1|d1|add_aux[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(2) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~8_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(2),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~8_combout\,
	combout => \d1|d1|add_aux\(2));

-- Location: LCCOMB_X76_Y41_N10
\d1|d1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~9_combout\ = (\d1|d1|add_aux\(3) & (!\d1|d1|Add0~7\)) # (!\d1|d1|add_aux\(3) & ((\d1|d1|Add0~7\) # (GND)))
-- \d1|d1|Add0~10\ = CARRY((!\d1|d1|Add0~7\) # (!\d1|d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(3),
	datad => VCC,
	cin => \d1|d1|Add0~7\,
	combout => \d1|d1|Add0~9_combout\,
	cout => \d1|d1|Add0~10\);

-- Location: LCCOMB_X76_Y41_N30
\d1|d1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~11_combout\ = (\d1|d1|stac.incremento~q\ & (((\d1|d1|Add0~9_combout\)))) # (!\d1|d1|stac.incremento~q\ & (!\select_msj[0]~input_o\ & (\select_msj[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|d1|Add0~9_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~11_combout\);

-- Location: LCCOMB_X76_Y41_N22
\d1|d1|add_aux[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(3) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~11_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(3),
	datac => \d1|d1|Add0~11_combout\,
	datad => \d1|d1|pxst.send~clkctrl_outclk\,
	combout => \d1|d1|add_aux\(3));

-- Location: LCCOMB_X76_Y41_N12
\d1|d1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~12_combout\ = (\d1|d1|add_aux\(4) & (\d1|d1|Add0~10\ $ (GND))) # (!\d1|d1|add_aux\(4) & (!\d1|d1|Add0~10\ & VCC))
-- \d1|d1|Add0~13\ = CARRY((\d1|d1|add_aux\(4) & !\d1|d1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(4),
	datad => VCC,
	cin => \d1|d1|Add0~10\,
	combout => \d1|d1|Add0~12_combout\,
	cout => \d1|d1|Add0~13\);

-- Location: LCCOMB_X76_Y41_N20
\d1|d1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~14_combout\ = (\d1|d1|stac.incremento~q\ & (\d1|d1|Add0~12_combout\)) # (!\d1|d1|stac.incremento~q\ & (((\select_msj[1]~input_o\ & !\select_msj[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|Add0~12_combout\,
	datab => \select_msj[1]~input_o\,
	datac => \select_msj[0]~input_o\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~14_combout\);

-- Location: LCCOMB_X76_Y41_N0
\d1|d1|add_aux[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(4) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~14_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(4),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~14_combout\,
	combout => \d1|d1|add_aux\(4));

-- Location: LCCOMB_X76_Y41_N14
\d1|d1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~15_combout\ = (\d1|d1|add_aux\(5) & (!\d1|d1|Add0~13\)) # (!\d1|d1|add_aux\(5) & ((\d1|d1|Add0~13\) # (GND)))
-- \d1|d1|Add0~16\ = CARRY((!\d1|d1|Add0~13\) # (!\d1|d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(5),
	datad => VCC,
	cin => \d1|d1|Add0~13\,
	combout => \d1|d1|Add0~15_combout\,
	cout => \d1|d1|Add0~16\);

-- Location: LCCOMB_X76_Y41_N2
\d1|d1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~17_combout\ = (\d1|d1|stac.incremento~q\ & (((\d1|d1|Add0~15_combout\)))) # (!\d1|d1|stac.incremento~q\ & ((\select_msj[0]~input_o\) # ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|d1|Add0~15_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~17_combout\);

-- Location: LCCOMB_X76_Y41_N26
\d1|d1|add_aux[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(5) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~17_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(5),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~17_combout\,
	combout => \d1|d1|add_aux\(5));

-- Location: LCCOMB_X76_Y41_N16
\d1|d1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~18_combout\ = (\d1|d1|add_aux\(6) & (\d1|d1|Add0~16\ $ (GND))) # (!\d1|d1|add_aux\(6) & (!\d1|d1|Add0~16\ & VCC))
-- \d1|d1|Add0~19\ = CARRY((\d1|d1|add_aux\(6) & !\d1|d1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(6),
	datad => VCC,
	cin => \d1|d1|Add0~16\,
	combout => \d1|d1|Add0~18_combout\,
	cout => \d1|d1|Add0~19\);

-- Location: LCCOMB_X77_Y41_N28
\d1|d1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~20_combout\ = (\d1|d1|stac.incremento~q\ & (((\d1|d1|Add0~18_combout\)))) # (!\d1|d1|stac.incremento~q\ & (\select_msj[0]~input_o\ & (\select_msj[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d1|d1|Add0~18_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~20_combout\);

-- Location: LCCOMB_X77_Y41_N4
\d1|d1|add_aux[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(6) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~20_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|add_aux\(6),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~20_combout\,
	combout => \d1|d1|add_aux\(6));

-- Location: LCCOMB_X76_Y41_N18
\d1|d1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~21_combout\ = \d1|d1|Add0~19\ $ (\d1|d1|add_aux\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|d1|add_aux\(7),
	cin => \d1|d1|Add0~19\,
	combout => \d1|d1|Add0~21_combout\);

-- Location: LCCOMB_X77_Y41_N2
\d1|d1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~23_combout\ = (\d1|d1|stac.incremento~q\ & \d1|d1|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|stac.incremento~q\,
	datad => \d1|d1|Add0~21_combout\,
	combout => \d1|d1|Add0~23_combout\);

-- Location: LCCOMB_X77_Y41_N30
\d1|d1|add_aux[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(7) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~23_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(7),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~23_combout\,
	combout => \d1|d1|add_aux\(7));

-- Location: M9K_X78_Y41_N0
\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010006100184003A0",
	mem_init0 => X"01B4002000194006D000800061001B40061001B40020001A4004D000000004001B8003A001D0007200184004D00080006E001840053000800075001CC0020001840063001BC0074000800065001B00020000B0006F001A00063001B80061001A0006300080006F00190006F001D000200010400000001000450014C002000104004C0011400550010C0053001140020001C80065000C40020001BC0073001C800750010C0000000000004001BC0065001300020000980020001C8006500140003A001C8006F001C00020001BC006400184007400194006C001C0006D001BC0043000800034000E8004F0012400520013C00540013000520013C004200104004C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "msj_y_salida_apart.msj_y_salida_apart0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "msj_y_mem:d1|rom:d2|altsyncram:Mux6_rtl_0|altsyncram_2r11:auto_generated|ALTSYNCRAM",
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
	clk0 => \d3|Mux0~clkctrl_outclk\,
	portaaddr => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X77_Y41_N18
\d2|d1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|Equal0~0_combout\ = (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\) # ((\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\) # ((\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	datab => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \d2|d1|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y41_N16
\d2|d1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|Equal0~1_combout\ = (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\) # ((\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\) # ((\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\) # (\d2|d1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datab => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	datad => \d2|d1|Equal0~0_combout\,
	combout => \d2|d1|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y41_N6
\d1|d1|pxst.incremento~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|pxst.incremento~0_combout\ = (\d1|d1|stac.espera~q\ & (\d2|d2|d1|ones~2_combout\ & \d2|d1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|d1|stac.espera~q\,
	datac => \d2|d2|d1|ones~2_combout\,
	datad => \d2|d1|Equal0~1_combout\,
	combout => \d1|d1|pxst.incremento~0_combout\);

-- Location: FF_X77_Y41_N7
\d1|d1|stac.incremento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~combout\,
	d => \d1|d1|pxst.incremento~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|stac.incremento~q\);

-- Location: LCCOMB_X77_Y41_N24
\d1|d1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Add0~2_combout\ = (\d1|d1|stac.incremento~q\ & ((\d1|d1|Add0~0_combout\))) # (!\d1|d1|stac.incremento~q\ & (\select_msj[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datac => \d1|d1|Add0~0_combout\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|Add0~2_combout\);

-- Location: LCCOMB_X77_Y41_N22
\d1|d1|add_aux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|add_aux\(0) = (GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & ((\d1|d1|Add0~2_combout\))) # (!GLOBAL(\d1|d1|pxst.send~clkctrl_outclk\) & (\d1|d1|add_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|add_aux\(0),
	datac => \d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d1|d1|Add0~2_combout\,
	combout => \d1|d1|add_aux\(0));

-- Location: LCCOMB_X79_Y41_N4
\d2|d1|paridad~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|paridad~1_combout\ = \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ $ (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ $ (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datad => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	combout => \d2|d1|paridad~1_combout\);

-- Location: LCCOMB_X79_Y41_N18
\d2|d1|paridad~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|paridad~0_combout\ = \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ $ (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ $ (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\ $ (\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	datab => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	datad => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \d2|d1|paridad~0_combout\);

-- Location: LCCOMB_X79_Y41_N30
\d2|d2|d1|t:1:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & (\d2|d1|paridad~1_combout\ $ (!\d2|d1|paridad~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|load~q\,
	datac => \d2|d1|paridad~1_combout\,
	datad => \d2|d1|paridad~0_combout\,
	combout => \d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N31
\d2|d2|d1|t:1:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:1:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N24
\d2|d2|d1|t:2:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:1:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|load~q\,
	datac => \d2|d2|d1|t:1:t1_10:bitx|dout~q\,
	datad => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N25
\d2|d2|d1|t:2:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:2:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N20
\d2|d2|d1|t:3:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:2:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d1|t:2:t1_10:bitx|dout~q\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N21
\d2|d2|d1|t:3:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:3:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N14
\d2|d2|d1|t:4:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:3:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d1|t:3:t1_10:bitx|dout~q\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N15
\d2|d2|d1|t:4:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:4:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N16
\d2|d2|d1|t:5:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:4:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d1|t:4:t1_10:bitx|dout~q\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N17
\d2|d2|d1|t:5:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:5:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N0
\d2|d2|d1|t:6:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:5:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d1|t:5:t1_10:bitx|dout~q\,
	datac => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N1
\d2|d2|d1|t:6:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:6:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N10
\d2|d2|d1|ones~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|ones~1_combout\ = (!\d2|d2|d1|t:3:t1_10:bitx|dout~q\ & (!\d2|d2|d1|t:5:t1_10:bitx|dout~q\ & (!\d2|d2|d1|t:4:t1_10:bitx|dout~q\ & !\d2|d2|d1|t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|t:3:t1_10:bitx|dout~q\,
	datab => \d2|d2|d1|t:5:t1_10:bitx|dout~q\,
	datac => \d2|d2|d1|t:4:t1_10:bitx|dout~q\,
	datad => \d2|d2|d1|t:6:t1_10:bitx|dout~q\,
	combout => \d2|d2|d1|ones~1_combout\);

-- Location: LCCOMB_X79_Y41_N22
\d2|d2|d1|t:7:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & (!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\)) # (!\d2|d2|d2|load~q\ & ((\d2|d2|d1|t:6:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	datab => \d2|d2|d2|load~q\,
	datad => \d2|d2|d1|t:6:t1_10:bitx|dout~q\,
	combout => \d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N23
\d2|d2|d1|t:7:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:7:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N6
\d2|d2|d1|ones~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|ones~0_combout\ = (!\d2|d2|d1|t:7:t1_10:bitx|dout~q\ & (!\d2|d2|d1|t:10:t11:bitxul|dout~q\ & (!\d2|d2|d1|t:9:t1_10:bitx|dout~q\ & !\d2|d2|d1|t:8:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|t:7:t1_10:bitx|dout~q\,
	datab => \d2|d2|d1|t:10:t11:bitxul|dout~q\,
	datac => \d2|d2|d1|t:9:t1_10:bitx|dout~q\,
	datad => \d2|d2|d1|t:8:t1_10:bitx|dout~q\,
	combout => \d2|d2|d1|ones~0_combout\);

-- Location: LCCOMB_X79_Y41_N8
\d2|d2|d1|ones~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|ones~2_combout\ = (\d2|d2|d1|ones~1_combout\ & (!\d2|d2|d1|t:2:t1_10:bitx|dout~q\ & (!\d2|d2|d1|t:1:t1_10:bitx|dout~q\ & \d2|d2|d1|ones~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|ones~1_combout\,
	datab => \d2|d2|d1|t:2:t1_10:bitx|dout~q\,
	datac => \d2|d2|d1|t:1:t1_10:bitx|dout~q\,
	datad => \d2|d2|d1|ones~0_combout\,
	combout => \d2|d2|d1|ones~2_combout\);

-- Location: IOIBUF_X115_Y40_N8
\enviar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enviar,
	o => \enviar~input_o\);

-- Location: LCCOMB_X77_Y41_N26
\d1|d1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Selector1~0_combout\ = (!\d1|d1|stac.ini~q\ & !\enviar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|stac.ini~q\,
	datad => \enviar~input_o\,
	combout => \d1|d1|Selector1~0_combout\);

-- Location: LCCOMB_X77_Y41_N10
\d1|d1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|Selector1~1_combout\ = (!\d1|d1|Selector1~0_combout\ & (((\d2|d1|Equal0~1_combout\) # (!\d1|d1|stac.espera~q\)) # (!\d2|d2|d1|ones~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|ones~2_combout\,
	datab => \d1|d1|stac.espera~q\,
	datac => \d1|d1|Selector1~0_combout\,
	datad => \d2|d1|Equal0~1_combout\,
	combout => \d1|d1|Selector1~1_combout\);

-- Location: FF_X77_Y41_N11
\d1|d1|stac.ini\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d1|d1|Selector1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|stac.ini~q\);

-- Location: LCCOMB_X77_Y41_N14
\d1|d1|pxst.asign~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|pxst.asign~0_combout\ = (!\d1|d1|stac.ini~q\ & \enviar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|d1|stac.ini~q\,
	datad => \enviar~input_o\,
	combout => \d1|d1|pxst.asign~0_combout\);

-- Location: FF_X77_Y41_N21
\d1|d1|stac.asign\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	asdata => \d1|d1|pxst.asign~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|stac.asign~q\);

-- Location: LCCOMB_X77_Y41_N20
\d1|d1|pxst.send\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|pxst.send~combout\ = (\d1|d1|stac.asign~q\) # (\d1|d1|stac.incremento~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|d1|stac.asign~q\,
	datad => \d1|d1|stac.incremento~q\,
	combout => \d1|d1|pxst.send~combout\);

-- Location: LCCOMB_X80_Y41_N28
\d1|d1|stac.send~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|stac.send~feeder_combout\ = \d1|d1|pxst.send~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|d1|pxst.send~combout\,
	combout => \d1|d1|stac.send~feeder_combout\);

-- Location: FF_X80_Y41_N29
\d1|d1|stac.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d1|d1|stac.send~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|stac.send~q\);

-- Location: LCCOMB_X80_Y41_N4
\d1|d1|send_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|d1|send_int~feeder_combout\ = \d1|d1|stac.send~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|d1|stac.send~q\,
	combout => \d1|d1|send_int~feeder_combout\);

-- Location: FF_X80_Y41_N5
\d1|d1|send_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d1|d1|send_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|d1|send_int~q\);

-- Location: LCCOMB_X80_Y41_N22
\d2|d2|d2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|Selector1~0_combout\ = (\d2|d2|d2|st.LD~q\) # ((!\d2|d2|d1|ones~2_combout\ & \d2|d2|d2|st.SND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|ones~2_combout\,
	datac => \d2|d2|d2|st.SND~q\,
	datad => \d2|d2|d2|st.LD~q\,
	combout => \d2|d2|d2|Selector1~0_combout\);

-- Location: FF_X80_Y41_N23
\d2|d2|d2|st.SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|st.SND~q\);

-- Location: LCCOMB_X80_Y41_N10
\d2|d2|d2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|Selector0~0_combout\ = (\d2|d2|d1|ones~2_combout\ & (!\d2|d2|d2|st.SND~q\ & ((\d1|d1|send_int~q\) # (\d2|d2|d2|st.ILDE~q\)))) # (!\d2|d2|d1|ones~2_combout\ & ((\d1|d1|send_int~q\) # ((\d2|d2|d2|st.ILDE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|ones~2_combout\,
	datab => \d1|d1|send_int~q\,
	datac => \d2|d2|d2|st.ILDE~q\,
	datad => \d2|d2|d2|st.SND~q\,
	combout => \d2|d2|d2|Selector0~0_combout\);

-- Location: FF_X80_Y41_N11
\d2|d2|d2|st.ILDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|st.ILDE~q\);

-- Location: LCCOMB_X80_Y41_N26
\d2|d2|d2|px_st.LD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|px_st.LD~0_combout\ = (\d1|d1|send_int~q\ & !\d2|d2|d2|st.ILDE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d1|d1|send_int~q\,
	datad => \d2|d2|d2|st.ILDE~q\,
	combout => \d2|d2|d2|px_st.LD~0_combout\);

-- Location: FF_X80_Y41_N27
\d2|d2|d2|st.LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|px_st.LD~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|st.LD~q\);

-- Location: FF_X80_Y41_N25
\d2|d2|d2|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	asdata => \d2|d2|d2|st.LD~q\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|load~q\);

-- Location: LCCOMB_X79_Y41_N12
\d2|d2|d1|t:8:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|load~q\ & ((!\d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\))) # (!\d2|d2|d2|load~q\ & (\d2|d2|d1|t:7:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|load~q\,
	datac => \d2|d2|d1|t:7:t1_10:bitx|dout~q\,
	datad => \d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	combout => \d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N13
\d2|d2|d1|t:8:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:8:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N26
\d2|d2|d1|t:9:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\ = (\d2|d2|d1|t:8:t1_10:bitx|dout~q\) # (\d2|d2|d2|load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d1|t:8:t1_10:bitx|dout~q\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\);

-- Location: FF_X79_Y41_N27
\d2|d2|d1|t:9:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:9:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X79_Y41_N28
\d2|d2|d1|t:10:t11:bitxul|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|t:10:t11:bitxul|dout~0_combout\ = (\d2|d2|d1|t:9:t1_10:bitx|dout~q\) # (\d2|d2|d2|load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2|d2|d1|t:9:t1_10:bitx|dout~q\,
	datad => \d2|d2|d2|load~q\,
	combout => \d2|d2|d1|t:10:t11:bitxul|dout~0_combout\);

-- Location: FF_X79_Y41_N29
\d2|d2|d1|t:10:t11:bitxul|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d3|Mux0~clkctrl_outclk\,
	d => \d2|d2|d1|t:10:t11:bitxul|dout~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d1|t:10:t11:bitxul|dout~q\);

ww_cts <= \cts~output_o\;

ww_rts <= \rts~output_o\;

ww_salida_serie <= \salida_serie~output_o\;
END structure;


