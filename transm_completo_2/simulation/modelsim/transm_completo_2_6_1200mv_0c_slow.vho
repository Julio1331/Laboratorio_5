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

-- DATE "11/27/2019 15:52:22"

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

ENTITY 	transm_completo_2 IS
    PORT (
	aux_out_clk_int : OUT std_logic;
	select_msj : IN std_logic_vector(1 DOWNTO 0);
	select_vel : IN std_logic_vector(1 DOWNTO 0);
	enviar : IN std_logic;
	salida_serie : OUT std_logic;
	reset : IN std_logic;
	clk_50Mhz : IN std_logic
	);
END transm_completo_2;

-- Design Ports Information
-- aux_out_clk_int	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_serie	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_vel[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_vel[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_msj[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF transm_completo_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aux_out_clk_int : std_logic;
SIGNAL ww_select_msj : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_vel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_enviar : std_logic;
SIGNAL ww_salida_serie : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1|seleccionador|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d2|d1|d1|pxst.send~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aux_out_clk_int~output_o\ : std_logic;
SIGNAL \salida_serie~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \d1|divisor|cont4[0]~11_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[8]~28\ : std_logic;
SIGNAL \d1|divisor|cont4[9]~29_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan2~1_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan2~0_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan2~3_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[0]~12\ : std_logic;
SIGNAL \d1|divisor|cont4[1]~13_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[1]~14\ : std_logic;
SIGNAL \d1|divisor|cont4[2]~15_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[2]~16\ : std_logic;
SIGNAL \d1|divisor|cont4[3]~17_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[3]~18\ : std_logic;
SIGNAL \d1|divisor|cont4[4]~19_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[4]~20\ : std_logic;
SIGNAL \d1|divisor|cont4[5]~21_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[5]~22\ : std_logic;
SIGNAL \d1|divisor|cont4[6]~23_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[6]~24\ : std_logic;
SIGNAL \d1|divisor|cont4[7]~25_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[7]~26\ : std_logic;
SIGNAL \d1|divisor|cont4[8]~27_combout\ : std_logic;
SIGNAL \d1|divisor|cont4[9]~30\ : std_logic;
SIGNAL \d1|divisor|cont4[10]~31_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan2~2_combout\ : std_logic;
SIGNAL \d1|divisor|clk_4~0_combout\ : std_logic;
SIGNAL \d1|divisor|clk_4~q\ : std_logic;
SIGNAL \d1|divisor|cont5[0]~8_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[1]~11\ : std_logic;
SIGNAL \d1|divisor|cont5[2]~12_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[2]~13\ : std_logic;
SIGNAL \d1|divisor|cont5[3]~14_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[3]~15\ : std_logic;
SIGNAL \d1|divisor|cont5[4]~16_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[4]~17\ : std_logic;
SIGNAL \d1|divisor|cont5[5]~18_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[5]~19\ : std_logic;
SIGNAL \d1|divisor|cont5[6]~20_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[6]~21\ : std_logic;
SIGNAL \d1|divisor|cont5[7]~22_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan3~1_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan3~2_combout\ : std_logic;
SIGNAL \d1|divisor|cont5[0]~9\ : std_logic;
SIGNAL \d1|divisor|cont5[1]~10_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan3~0_combout\ : std_logic;
SIGNAL \d1|divisor|clk_5~0_combout\ : std_logic;
SIGNAL \d1|divisor|clk_5~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_outclk\ : std_logic;
SIGNAL \select_vel[1]~input_o\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|ffd1|dd~feeder_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|ffd1|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|ffd2|dd~feeder_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|ffd2|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|ffd3|dd~q\ : std_logic;
SIGNAL \d1|divisor|cont1[0]~13_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[10]~34\ : std_logic;
SIGNAL \d1|divisor|cont1[11]~35_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[0]~14\ : std_logic;
SIGNAL \d1|divisor|cont1[1]~15_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[1]~16\ : std_logic;
SIGNAL \d1|divisor|cont1[2]~17_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[2]~18\ : std_logic;
SIGNAL \d1|divisor|cont1[3]~19_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[3]~20\ : std_logic;
SIGNAL \d1|divisor|cont1[4]~21_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[4]~22\ : std_logic;
SIGNAL \d1|divisor|cont1[5]~23_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[5]~24\ : std_logic;
SIGNAL \d1|divisor|cont1[6]~25_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[6]~26\ : std_logic;
SIGNAL \d1|divisor|cont1[7]~27_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[7]~28\ : std_logic;
SIGNAL \d1|divisor|cont1[8]~29_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[8]~30\ : std_logic;
SIGNAL \d1|divisor|cont1[9]~31_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[9]~32\ : std_logic;
SIGNAL \d1|divisor|cont1[10]~33_combout\ : std_logic;
SIGNAL \d1|divisor|cont1[11]~36\ : std_logic;
SIGNAL \d1|divisor|cont1[12]~37_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \d1|divisor|clk_1~0_combout\ : std_logic;
SIGNAL \d1|divisor|clk_1~feeder_combout\ : std_logic;
SIGNAL \d1|divisor|clk_1~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~feeder_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_outclk\ : std_logic;
SIGNAL \select_vel[0]~input_o\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|ffd1|dd~feeder_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|ffd1|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|ffd2|dd~feeder_combout\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|ffd2|dd~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|ffd3|dd~q\ : std_logic;
SIGNAL \d1|divisor|cont2[0]~12_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan1~0_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan1~1_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan1~3_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[0]~13\ : std_logic;
SIGNAL \d1|divisor|cont2[1]~14_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[1]~15\ : std_logic;
SIGNAL \d1|divisor|cont2[2]~16_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[2]~17\ : std_logic;
SIGNAL \d1|divisor|cont2[3]~18_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[3]~19\ : std_logic;
SIGNAL \d1|divisor|cont2[4]~20_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[4]~21\ : std_logic;
SIGNAL \d1|divisor|cont2[5]~22_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[5]~23\ : std_logic;
SIGNAL \d1|divisor|cont2[6]~24_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[6]~25\ : std_logic;
SIGNAL \d1|divisor|cont2[7]~26_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[7]~27\ : std_logic;
SIGNAL \d1|divisor|cont2[8]~28_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[8]~29\ : std_logic;
SIGNAL \d1|divisor|cont2[9]~30_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[9]~31\ : std_logic;
SIGNAL \d1|divisor|cont2[10]~32_combout\ : std_logic;
SIGNAL \d1|divisor|cont2[10]~33\ : std_logic;
SIGNAL \d1|divisor|cont2[11]~34_combout\ : std_logic;
SIGNAL \d1|divisor|LessThan1~2_combout\ : std_logic;
SIGNAL \d1|divisor|clk_2~0_combout\ : std_logic;
SIGNAL \d1|divisor|clk_2~q\ : std_logic;
SIGNAL \d1|seleccionador|Mux0~0_combout\ : std_logic;
SIGNAL \d1|seleccionador|Mux0~combout\ : std_logic;
SIGNAL \d1|seleccionador|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \enviar~input_o\ : std_logic;
SIGNAL \d2|d1|d1|Selector1~0_combout\ : std_logic;
SIGNAL \d2|d1|d1|pxst.send~clkctrl_outclk\ : std_logic;
SIGNAL \d2|d1|d1|Add0~0_combout\ : std_logic;
SIGNAL \select_msj[0]~input_o\ : std_logic;
SIGNAL \d2|d1|d1|Selector2~0_combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.espera~q\ : std_logic;
SIGNAL \select_msj[1]~input_o\ : std_logic;
SIGNAL \d2|d1|d1|Add0~1\ : std_logic;
SIGNAL \d2|d1|d1|Add0~3_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~5_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~4\ : std_logic;
SIGNAL \d2|d1|d1|Add0~6_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~8_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~7\ : std_logic;
SIGNAL \d2|d1|d1|Add0~9_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~11_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~10\ : std_logic;
SIGNAL \d2|d1|d1|Add0~12_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~14_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~13\ : std_logic;
SIGNAL \d2|d1|d1|Add0~15_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~17_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~16\ : std_logic;
SIGNAL \d2|d1|d1|Add0~18_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~20_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~19\ : std_logic;
SIGNAL \d2|d1|d1|Add0~21_combout\ : std_logic;
SIGNAL \d2|d1|d1|Add0~23_combout\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \d2|d2|d1|Equal0~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|Equal0~1_combout\ : std_logic;
SIGNAL \d2|d1|d1|pxst.incremento~0_combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.incremento~q\ : std_logic;
SIGNAL \d2|d1|d1|Add0~2_combout\ : std_logic;
SIGNAL \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \d2|d2|d1|paridad~0_combout\ : std_logic;
SIGNAL \d2|d2|d1|paridad~1_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|ones~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|ones~1_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|ones~2_combout\ : std_logic;
SIGNAL \d2|d1|d1|Selector1~1_combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.ini~q\ : std_logic;
SIGNAL \d2|d1|d1|pxst.asign~0_combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.asign~q\ : std_logic;
SIGNAL \d2|d1|d1|pxst.send~combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.send~feeder_combout\ : std_logic;
SIGNAL \d2|d1|d1|stac.send~q\ : std_logic;
SIGNAL \d2|d1|d1|send_int~q\ : std_logic;
SIGNAL \d2|d2|d2|d2|Selector1~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d2|st.SND~q\ : std_logic;
SIGNAL \d2|d2|d2|d2|Selector0~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d2|st.ILDE~q\ : std_logic;
SIGNAL \d2|d2|d2|d2|px_st.LD~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d2|st.LD~q\ : std_logic;
SIGNAL \d2|d2|d2|d2|load~feeder_combout\ : std_logic;
SIGNAL \d2|d2|d2|d2|load~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:10:t11:bitxul|dout~0_combout\ : std_logic;
SIGNAL \d2|d2|d2|d1|t:10:t11:bitxul|dout~q\ : std_logic;
SIGNAL \d1|divisor|cont5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d1|divisor|cont4\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \d1|divisor|cont2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \d2|d1|d1|add_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \d1|divisor|cont1\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \d2|d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:0:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\ : std_logic;
SIGNAL \d1|entradas|sinc_xx:1:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

aux_out_clk_int <= ww_aux_out_clk_int;
ww_select_msj <= select_msj;
ww_select_vel <= select_vel;
ww_enviar <= enviar;
salida_serie <= ww_salida_serie;
ww_reset <= reset;
ww_clk_50Mhz <= clk_50Mhz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\d2|d1|d1|add_aux\(7) & \d2|d1|d1|add_aux\(6) & \d2|d1|d1|add_aux\(5) & \d2|d1|d1|add_aux\(4) & \d2|d1|d1|add_aux\(3) & \d2|d1|d1|add_aux\(2) & \d2|d1|d1|add_aux\(1) & 
\d2|d1|d1|add_aux\(0));

\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~q\);

\d1|seleccionador|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d1|seleccionador|Mux0~combout\);

\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~q\);

\d2|d1|d1|pxst.send~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d2|d1|d1|pxst.send~combout\);

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\d2|d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\ <= NOT \d2|d2|d2|d1|t:10:t11:bitxul|dout~q\;
\d1|entradas|sinc_xx:0:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\ <= NOT \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_outclk\;
\d1|entradas|sinc_xx:1:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\ <= NOT \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\aux_out_clk_int~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|seleccionador|Mux0~combout\,
	devoe => ww_devoe,
	o => \aux_out_clk_int~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\salida_serie~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|d2|d2|d1|t:10:t11:bitxul|ALT_INV_dout~q\,
	devoe => ww_devoe,
	o => \salida_serie~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G2
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y9_N6
\d1|divisor|cont4[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[0]~11_combout\ = \d1|divisor|cont4\(0) $ (VCC)
-- \d1|divisor|cont4[0]~12\ = CARRY(\d1|divisor|cont4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(0),
	datad => VCC,
	combout => \d1|divisor|cont4[0]~11_combout\,
	cout => \d1|divisor|cont4[0]~12\);

-- Location: LCCOMB_X1_Y9_N22
\d1|divisor|cont4[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[8]~27_combout\ = (\d1|divisor|cont4\(8) & (\d1|divisor|cont4[7]~26\ $ (GND))) # (!\d1|divisor|cont4\(8) & (!\d1|divisor|cont4[7]~26\ & VCC))
-- \d1|divisor|cont4[8]~28\ = CARRY((\d1|divisor|cont4\(8) & !\d1|divisor|cont4[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(8),
	datad => VCC,
	cin => \d1|divisor|cont4[7]~26\,
	combout => \d1|divisor|cont4[8]~27_combout\,
	cout => \d1|divisor|cont4[8]~28\);

-- Location: LCCOMB_X1_Y9_N24
\d1|divisor|cont4[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[9]~29_combout\ = (\d1|divisor|cont4\(9) & (!\d1|divisor|cont4[8]~28\)) # (!\d1|divisor|cont4\(9) & ((\d1|divisor|cont4[8]~28\) # (GND)))
-- \d1|divisor|cont4[9]~30\ = CARRY((!\d1|divisor|cont4[8]~28\) # (!\d1|divisor|cont4\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(9),
	datad => VCC,
	cin => \d1|divisor|cont4[8]~28\,
	combout => \d1|divisor|cont4[9]~29_combout\,
	cout => \d1|divisor|cont4[9]~30\);

-- Location: FF_X1_Y9_N25
\d1|divisor|cont4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[9]~29_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(9));

-- Location: LCCOMB_X1_Y9_N4
\d1|divisor|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan2~1_combout\ = (!\d1|divisor|cont4\(7) & (!\d1|divisor|cont4\(6) & (!\d1|divisor|cont4\(9) & !\d1|divisor|cont4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(7),
	datab => \d1|divisor|cont4\(6),
	datac => \d1|divisor|cont4\(9),
	datad => \d1|divisor|cont4\(5),
	combout => \d1|divisor|LessThan2~1_combout\);

-- Location: LCCOMB_X1_Y9_N28
\d1|divisor|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan2~0_combout\ = ((!\d1|divisor|cont4\(3) & ((!\d1|divisor|cont4\(1)) # (!\d1|divisor|cont4\(2))))) # (!\d1|divisor|cont4\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(2),
	datab => \d1|divisor|cont4\(1),
	datac => \d1|divisor|cont4\(4),
	datad => \d1|divisor|cont4\(3),
	combout => \d1|divisor|LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y9_N0
\d1|divisor|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan2~3_combout\ = (!\d1|divisor|LessThan2~2_combout\ & ((!\d1|divisor|LessThan2~0_combout\) # (!\d1|divisor|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|LessThan2~1_combout\,
	datac => \d1|divisor|LessThan2~2_combout\,
	datad => \d1|divisor|LessThan2~0_combout\,
	combout => \d1|divisor|LessThan2~3_combout\);

-- Location: FF_X1_Y9_N7
\d1|divisor|cont4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[0]~11_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(0));

-- Location: LCCOMB_X1_Y9_N8
\d1|divisor|cont4[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[1]~13_combout\ = (\d1|divisor|cont4\(1) & (!\d1|divisor|cont4[0]~12\)) # (!\d1|divisor|cont4\(1) & ((\d1|divisor|cont4[0]~12\) # (GND)))
-- \d1|divisor|cont4[1]~14\ = CARRY((!\d1|divisor|cont4[0]~12\) # (!\d1|divisor|cont4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(1),
	datad => VCC,
	cin => \d1|divisor|cont4[0]~12\,
	combout => \d1|divisor|cont4[1]~13_combout\,
	cout => \d1|divisor|cont4[1]~14\);

-- Location: FF_X1_Y9_N9
\d1|divisor|cont4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[1]~13_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(1));

-- Location: LCCOMB_X1_Y9_N10
\d1|divisor|cont4[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[2]~15_combout\ = (\d1|divisor|cont4\(2) & (\d1|divisor|cont4[1]~14\ $ (GND))) # (!\d1|divisor|cont4\(2) & (!\d1|divisor|cont4[1]~14\ & VCC))
-- \d1|divisor|cont4[2]~16\ = CARRY((\d1|divisor|cont4\(2) & !\d1|divisor|cont4[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(2),
	datad => VCC,
	cin => \d1|divisor|cont4[1]~14\,
	combout => \d1|divisor|cont4[2]~15_combout\,
	cout => \d1|divisor|cont4[2]~16\);

-- Location: FF_X1_Y9_N11
\d1|divisor|cont4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[2]~15_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(2));

-- Location: LCCOMB_X1_Y9_N12
\d1|divisor|cont4[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[3]~17_combout\ = (\d1|divisor|cont4\(3) & (!\d1|divisor|cont4[2]~16\)) # (!\d1|divisor|cont4\(3) & ((\d1|divisor|cont4[2]~16\) # (GND)))
-- \d1|divisor|cont4[3]~18\ = CARRY((!\d1|divisor|cont4[2]~16\) # (!\d1|divisor|cont4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(3),
	datad => VCC,
	cin => \d1|divisor|cont4[2]~16\,
	combout => \d1|divisor|cont4[3]~17_combout\,
	cout => \d1|divisor|cont4[3]~18\);

-- Location: FF_X1_Y9_N13
\d1|divisor|cont4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[3]~17_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(3));

-- Location: LCCOMB_X1_Y9_N14
\d1|divisor|cont4[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[4]~19_combout\ = (\d1|divisor|cont4\(4) & (\d1|divisor|cont4[3]~18\ $ (GND))) # (!\d1|divisor|cont4\(4) & (!\d1|divisor|cont4[3]~18\ & VCC))
-- \d1|divisor|cont4[4]~20\ = CARRY((\d1|divisor|cont4\(4) & !\d1|divisor|cont4[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(4),
	datad => VCC,
	cin => \d1|divisor|cont4[3]~18\,
	combout => \d1|divisor|cont4[4]~19_combout\,
	cout => \d1|divisor|cont4[4]~20\);

-- Location: FF_X1_Y9_N15
\d1|divisor|cont4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[4]~19_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(4));

-- Location: LCCOMB_X1_Y9_N16
\d1|divisor|cont4[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[5]~21_combout\ = (\d1|divisor|cont4\(5) & (!\d1|divisor|cont4[4]~20\)) # (!\d1|divisor|cont4\(5) & ((\d1|divisor|cont4[4]~20\) # (GND)))
-- \d1|divisor|cont4[5]~22\ = CARRY((!\d1|divisor|cont4[4]~20\) # (!\d1|divisor|cont4\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(5),
	datad => VCC,
	cin => \d1|divisor|cont4[4]~20\,
	combout => \d1|divisor|cont4[5]~21_combout\,
	cout => \d1|divisor|cont4[5]~22\);

-- Location: FF_X1_Y9_N17
\d1|divisor|cont4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[5]~21_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(5));

-- Location: LCCOMB_X1_Y9_N18
\d1|divisor|cont4[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[6]~23_combout\ = (\d1|divisor|cont4\(6) & (\d1|divisor|cont4[5]~22\ $ (GND))) # (!\d1|divisor|cont4\(6) & (!\d1|divisor|cont4[5]~22\ & VCC))
-- \d1|divisor|cont4[6]~24\ = CARRY((\d1|divisor|cont4\(6) & !\d1|divisor|cont4[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(6),
	datad => VCC,
	cin => \d1|divisor|cont4[5]~22\,
	combout => \d1|divisor|cont4[6]~23_combout\,
	cout => \d1|divisor|cont4[6]~24\);

-- Location: FF_X1_Y9_N19
\d1|divisor|cont4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[6]~23_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(6));

-- Location: LCCOMB_X1_Y9_N20
\d1|divisor|cont4[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[7]~25_combout\ = (\d1|divisor|cont4\(7) & (!\d1|divisor|cont4[6]~24\)) # (!\d1|divisor|cont4\(7) & ((\d1|divisor|cont4[6]~24\) # (GND)))
-- \d1|divisor|cont4[7]~26\ = CARRY((!\d1|divisor|cont4[6]~24\) # (!\d1|divisor|cont4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont4\(7),
	datad => VCC,
	cin => \d1|divisor|cont4[6]~24\,
	combout => \d1|divisor|cont4[7]~25_combout\,
	cout => \d1|divisor|cont4[7]~26\);

-- Location: FF_X1_Y9_N21
\d1|divisor|cont4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[7]~25_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(7));

-- Location: FF_X1_Y9_N23
\d1|divisor|cont4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[8]~27_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(8));

-- Location: LCCOMB_X1_Y9_N26
\d1|divisor|cont4[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont4[10]~31_combout\ = \d1|divisor|cont4\(10) $ (!\d1|divisor|cont4[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(10),
	cin => \d1|divisor|cont4[9]~30\,
	combout => \d1|divisor|cont4[10]~31_combout\);

-- Location: FF_X1_Y9_N27
\d1|divisor|cont4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont4[10]~31_combout\,
	sclr => \d1|divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont4\(10));

-- Location: LCCOMB_X1_Y9_N30
\d1|divisor|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan2~2_combout\ = ((!\d1|divisor|cont4\(8) & !\d1|divisor|cont4\(9))) # (!\d1|divisor|cont4\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont4\(8),
	datac => \d1|divisor|cont4\(10),
	datad => \d1|divisor|cont4\(9),
	combout => \d1|divisor|LessThan2~2_combout\);

-- Location: LCCOMB_X1_Y9_N2
\d1|divisor|clk_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|clk_4~0_combout\ = \d1|divisor|clk_4~q\ $ (((!\d1|divisor|LessThan2~2_combout\ & ((!\d1|divisor|LessThan2~0_combout\) # (!\d1|divisor|LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|LessThan2~2_combout\,
	datab => \d1|divisor|LessThan2~1_combout\,
	datac => \d1|divisor|clk_4~q\,
	datad => \d1|divisor|LessThan2~0_combout\,
	combout => \d1|divisor|clk_4~0_combout\);

-- Location: FF_X1_Y9_N3
\d1|divisor|clk_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \d1|divisor|clk_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|clk_4~q\);

-- Location: LCCOMB_X2_Y17_N10
\d1|divisor|cont5[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[0]~8_combout\ = \d1|divisor|cont5\(0) $ (VCC)
-- \d1|divisor|cont5[0]~9\ = CARRY(\d1|divisor|cont5\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont5\(0),
	datad => VCC,
	combout => \d1|divisor|cont5[0]~8_combout\,
	cout => \d1|divisor|cont5[0]~9\);

-- Location: LCCOMB_X2_Y17_N12
\d1|divisor|cont5[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[1]~10_combout\ = (\d1|divisor|cont5\(1) & (!\d1|divisor|cont5[0]~9\)) # (!\d1|divisor|cont5\(1) & ((\d1|divisor|cont5[0]~9\) # (GND)))
-- \d1|divisor|cont5[1]~11\ = CARRY((!\d1|divisor|cont5[0]~9\) # (!\d1|divisor|cont5\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont5\(1),
	datad => VCC,
	cin => \d1|divisor|cont5[0]~9\,
	combout => \d1|divisor|cont5[1]~10_combout\,
	cout => \d1|divisor|cont5[1]~11\);

-- Location: LCCOMB_X2_Y17_N14
\d1|divisor|cont5[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[2]~12_combout\ = (\d1|divisor|cont5\(2) & (\d1|divisor|cont5[1]~11\ $ (GND))) # (!\d1|divisor|cont5\(2) & (!\d1|divisor|cont5[1]~11\ & VCC))
-- \d1|divisor|cont5[2]~13\ = CARRY((\d1|divisor|cont5\(2) & !\d1|divisor|cont5[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont5\(2),
	datad => VCC,
	cin => \d1|divisor|cont5[1]~11\,
	combout => \d1|divisor|cont5[2]~12_combout\,
	cout => \d1|divisor|cont5[2]~13\);

-- Location: FF_X2_Y17_N15
\d1|divisor|cont5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[2]~12_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(2));

-- Location: LCCOMB_X2_Y17_N16
\d1|divisor|cont5[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[3]~14_combout\ = (\d1|divisor|cont5\(3) & (!\d1|divisor|cont5[2]~13\)) # (!\d1|divisor|cont5\(3) & ((\d1|divisor|cont5[2]~13\) # (GND)))
-- \d1|divisor|cont5[3]~15\ = CARRY((!\d1|divisor|cont5[2]~13\) # (!\d1|divisor|cont5\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont5\(3),
	datad => VCC,
	cin => \d1|divisor|cont5[2]~13\,
	combout => \d1|divisor|cont5[3]~14_combout\,
	cout => \d1|divisor|cont5[3]~15\);

-- Location: FF_X2_Y17_N17
\d1|divisor|cont5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[3]~14_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(3));

-- Location: LCCOMB_X2_Y17_N18
\d1|divisor|cont5[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[4]~16_combout\ = (\d1|divisor|cont5\(4) & (\d1|divisor|cont5[3]~15\ $ (GND))) # (!\d1|divisor|cont5\(4) & (!\d1|divisor|cont5[3]~15\ & VCC))
-- \d1|divisor|cont5[4]~17\ = CARRY((\d1|divisor|cont5\(4) & !\d1|divisor|cont5[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont5\(4),
	datad => VCC,
	cin => \d1|divisor|cont5[3]~15\,
	combout => \d1|divisor|cont5[4]~16_combout\,
	cout => \d1|divisor|cont5[4]~17\);

-- Location: FF_X2_Y17_N19
\d1|divisor|cont5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[4]~16_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(4));

-- Location: LCCOMB_X2_Y17_N20
\d1|divisor|cont5[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[5]~18_combout\ = (\d1|divisor|cont5\(5) & (!\d1|divisor|cont5[4]~17\)) # (!\d1|divisor|cont5\(5) & ((\d1|divisor|cont5[4]~17\) # (GND)))
-- \d1|divisor|cont5[5]~19\ = CARRY((!\d1|divisor|cont5[4]~17\) # (!\d1|divisor|cont5\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont5\(5),
	datad => VCC,
	cin => \d1|divisor|cont5[4]~17\,
	combout => \d1|divisor|cont5[5]~18_combout\,
	cout => \d1|divisor|cont5[5]~19\);

-- Location: FF_X2_Y17_N21
\d1|divisor|cont5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[5]~18_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(5));

-- Location: LCCOMB_X2_Y17_N22
\d1|divisor|cont5[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[6]~20_combout\ = (\d1|divisor|cont5\(6) & (\d1|divisor|cont5[5]~19\ $ (GND))) # (!\d1|divisor|cont5\(6) & (!\d1|divisor|cont5[5]~19\ & VCC))
-- \d1|divisor|cont5[6]~21\ = CARRY((\d1|divisor|cont5\(6) & !\d1|divisor|cont5[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont5\(6),
	datad => VCC,
	cin => \d1|divisor|cont5[5]~19\,
	combout => \d1|divisor|cont5[6]~20_combout\,
	cout => \d1|divisor|cont5[6]~21\);

-- Location: FF_X2_Y17_N23
\d1|divisor|cont5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[6]~20_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(6));

-- Location: LCCOMB_X2_Y17_N24
\d1|divisor|cont5[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont5[7]~22_combout\ = \d1|divisor|cont5[6]~21\ $ (\d1|divisor|cont5\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|divisor|cont5\(7),
	cin => \d1|divisor|cont5[6]~21\,
	combout => \d1|divisor|cont5[7]~22_combout\);

-- Location: FF_X2_Y17_N25
\d1|divisor|cont5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[7]~22_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(7));

-- Location: LCCOMB_X2_Y17_N8
\d1|divisor|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan3~1_combout\ = ((!\d1|divisor|cont5\(5) & ((!\d1|divisor|cont5\(3)) # (!\d1|divisor|cont5\(4))))) # (!\d1|divisor|cont5\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont5\(6),
	datab => \d1|divisor|cont5\(4),
	datac => \d1|divisor|cont5\(3),
	datad => \d1|divisor|cont5\(5),
	combout => \d1|divisor|LessThan3~1_combout\);

-- Location: LCCOMB_X2_Y17_N26
\d1|divisor|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan3~2_combout\ = (\d1|divisor|cont5\(7) & (!\d1|divisor|LessThan3~1_combout\ & !\d1|divisor|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont5\(7),
	datac => \d1|divisor|LessThan3~1_combout\,
	datad => \d1|divisor|LessThan3~0_combout\,
	combout => \d1|divisor|LessThan3~2_combout\);

-- Location: FF_X2_Y17_N11
\d1|divisor|cont5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[0]~8_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(0));

-- Location: FF_X2_Y17_N13
\d1|divisor|cont5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont5[1]~10_combout\,
	sclr => \d1|divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont5\(1));

-- Location: LCCOMB_X2_Y17_N28
\d1|divisor|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan3~0_combout\ = (!\d1|divisor|cont5\(1) & (!\d1|divisor|cont5\(2) & (!\d1|divisor|cont5\(0) & !\d1|divisor|cont5\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont5\(1),
	datab => \d1|divisor|cont5\(2),
	datac => \d1|divisor|cont5\(0),
	datad => \d1|divisor|cont5\(5),
	combout => \d1|divisor|LessThan3~0_combout\);

-- Location: LCCOMB_X2_Y17_N6
\d1|divisor|clk_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|clk_5~0_combout\ = \d1|divisor|clk_5~q\ $ (((!\d1|divisor|LessThan3~0_combout\ & (\d1|divisor|cont5\(7) & !\d1|divisor|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|LessThan3~0_combout\,
	datab => \d1|divisor|cont5\(7),
	datac => \d1|divisor|clk_5~q\,
	datad => \d1|divisor|LessThan3~1_combout\,
	combout => \d1|divisor|clk_5~0_combout\);

-- Location: FF_X2_Y17_N7
\d1|divisor|clk_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \d1|divisor|clk_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|clk_5~q\);

-- Location: LCCOMB_X1_Y11_N26
\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0_combout\ = !\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~q\,
	combout => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~feeder_combout\ = \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~0_combout\,
	combout => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~feeder_combout\);

-- Location: IOIBUF_X34_Y12_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: FF_X1_Y11_N31
\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~q\);

-- Location: CLKCTRL_G1
\d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N15
\select_vel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_vel(1),
	o => \select_vel[1]~input_o\);

-- Location: LCCOMB_X2_Y11_N18
\d1|entradas|sinc_xx:1:buss|ffd1|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:1:buss|ffd1|dd~feeder_combout\ = \select_vel[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_vel[1]~input_o\,
	combout => \d1|entradas|sinc_xx:1:buss|ffd1|dd~feeder_combout\);

-- Location: FF_X2_Y11_N19
\d1|entradas|sinc_xx:1:buss|ffd1|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|entradas|sinc_xx:1:buss|div1|ffd1|dd~clkctrl_outclk\,
	d => \d1|entradas|sinc_xx:1:buss|ffd1|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:1:buss|ffd1|dd~q\);

-- Location: LCCOMB_X2_Y11_N12
\d1|entradas|sinc_xx:1:buss|ffd2|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:1:buss|ffd2|dd~feeder_combout\ = \d1|entradas|sinc_xx:1:buss|ffd1|dd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|entradas|sinc_xx:1:buss|ffd1|dd~q\,
	combout => \d1|entradas|sinc_xx:1:buss|ffd2|dd~feeder_combout\);

-- Location: FF_X2_Y11_N13
\d1|entradas|sinc_xx:1:buss|ffd2|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|entradas|sinc_xx:1:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\,
	d => \d1|entradas|sinc_xx:1:buss|ffd2|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:1:buss|ffd2|dd~q\);

-- Location: FF_X1_Y11_N27
\d1|entradas|sinc_xx:1:buss|ffd3|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \d1|entradas|sinc_xx:1:buss|ffd2|dd~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:1:buss|ffd3|dd~q\);

-- Location: LCCOMB_X2_Y18_N0
\d1|divisor|cont1[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[0]~13_combout\ = \d1|divisor|cont1\(0) $ (VCC)
-- \d1|divisor|cont1[0]~14\ = CARRY(\d1|divisor|cont1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(0),
	datad => VCC,
	combout => \d1|divisor|cont1[0]~13_combout\,
	cout => \d1|divisor|cont1[0]~14\);

-- Location: LCCOMB_X2_Y18_N30
\d1|divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan0~0_combout\ = ((!\d1|divisor|cont1\(5) & ((!\d1|divisor|cont1\(4)) # (!\d1|divisor|cont1\(3))))) # (!\d1|divisor|cont1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(3),
	datab => \d1|divisor|cont1\(4),
	datac => \d1|divisor|cont1\(5),
	datad => \d1|divisor|cont1\(6),
	combout => \d1|divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y18_N20
\d1|divisor|cont1[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[10]~33_combout\ = (\d1|divisor|cont1\(10) & (\d1|divisor|cont1[9]~32\ $ (GND))) # (!\d1|divisor|cont1\(10) & (!\d1|divisor|cont1[9]~32\ & VCC))
-- \d1|divisor|cont1[10]~34\ = CARRY((\d1|divisor|cont1\(10) & !\d1|divisor|cont1[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(10),
	datad => VCC,
	cin => \d1|divisor|cont1[9]~32\,
	combout => \d1|divisor|cont1[10]~33_combout\,
	cout => \d1|divisor|cont1[10]~34\);

-- Location: LCCOMB_X2_Y18_N22
\d1|divisor|cont1[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[11]~35_combout\ = (\d1|divisor|cont1\(11) & (!\d1|divisor|cont1[10]~34\)) # (!\d1|divisor|cont1\(11) & ((\d1|divisor|cont1[10]~34\) # (GND)))
-- \d1|divisor|cont1[11]~36\ = CARRY((!\d1|divisor|cont1[10]~34\) # (!\d1|divisor|cont1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(11),
	datad => VCC,
	cin => \d1|divisor|cont1[10]~34\,
	combout => \d1|divisor|cont1[11]~35_combout\,
	cout => \d1|divisor|cont1[11]~36\);

-- Location: FF_X2_Y18_N23
\d1|divisor|cont1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[11]~35_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(11));

-- Location: LCCOMB_X2_Y18_N28
\d1|divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan0~1_combout\ = (!\d1|divisor|cont1\(8) & (!\d1|divisor|cont1\(9) & (!\d1|divisor|cont1\(7) & !\d1|divisor|cont1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(8),
	datab => \d1|divisor|cont1\(9),
	datac => \d1|divisor|cont1\(7),
	datad => \d1|divisor|cont1\(11),
	combout => \d1|divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y18_N6
\d1|divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan0~3_combout\ = (!\d1|divisor|LessThan0~2_combout\ & ((!\d1|divisor|LessThan0~1_combout\) # (!\d1|divisor|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|LessThan0~2_combout\,
	datac => \d1|divisor|LessThan0~0_combout\,
	datad => \d1|divisor|LessThan0~1_combout\,
	combout => \d1|divisor|LessThan0~3_combout\);

-- Location: FF_X2_Y18_N1
\d1|divisor|cont1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[0]~13_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(0));

-- Location: LCCOMB_X2_Y18_N2
\d1|divisor|cont1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[1]~15_combout\ = (\d1|divisor|cont1\(1) & (!\d1|divisor|cont1[0]~14\)) # (!\d1|divisor|cont1\(1) & ((\d1|divisor|cont1[0]~14\) # (GND)))
-- \d1|divisor|cont1[1]~16\ = CARRY((!\d1|divisor|cont1[0]~14\) # (!\d1|divisor|cont1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(1),
	datad => VCC,
	cin => \d1|divisor|cont1[0]~14\,
	combout => \d1|divisor|cont1[1]~15_combout\,
	cout => \d1|divisor|cont1[1]~16\);

-- Location: FF_X2_Y18_N3
\d1|divisor|cont1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[1]~15_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(1));

-- Location: LCCOMB_X2_Y18_N4
\d1|divisor|cont1[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[2]~17_combout\ = (\d1|divisor|cont1\(2) & (\d1|divisor|cont1[1]~16\ $ (GND))) # (!\d1|divisor|cont1\(2) & (!\d1|divisor|cont1[1]~16\ & VCC))
-- \d1|divisor|cont1[2]~18\ = CARRY((\d1|divisor|cont1\(2) & !\d1|divisor|cont1[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(2),
	datad => VCC,
	cin => \d1|divisor|cont1[1]~16\,
	combout => \d1|divisor|cont1[2]~17_combout\,
	cout => \d1|divisor|cont1[2]~18\);

-- Location: FF_X2_Y18_N5
\d1|divisor|cont1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[2]~17_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(2));

-- Location: LCCOMB_X2_Y18_N6
\d1|divisor|cont1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[3]~19_combout\ = (\d1|divisor|cont1\(3) & (!\d1|divisor|cont1[2]~18\)) # (!\d1|divisor|cont1\(3) & ((\d1|divisor|cont1[2]~18\) # (GND)))
-- \d1|divisor|cont1[3]~20\ = CARRY((!\d1|divisor|cont1[2]~18\) # (!\d1|divisor|cont1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(3),
	datad => VCC,
	cin => \d1|divisor|cont1[2]~18\,
	combout => \d1|divisor|cont1[3]~19_combout\,
	cout => \d1|divisor|cont1[3]~20\);

-- Location: FF_X2_Y18_N7
\d1|divisor|cont1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[3]~19_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(3));

-- Location: LCCOMB_X2_Y18_N8
\d1|divisor|cont1[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[4]~21_combout\ = (\d1|divisor|cont1\(4) & (\d1|divisor|cont1[3]~20\ $ (GND))) # (!\d1|divisor|cont1\(4) & (!\d1|divisor|cont1[3]~20\ & VCC))
-- \d1|divisor|cont1[4]~22\ = CARRY((\d1|divisor|cont1\(4) & !\d1|divisor|cont1[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(4),
	datad => VCC,
	cin => \d1|divisor|cont1[3]~20\,
	combout => \d1|divisor|cont1[4]~21_combout\,
	cout => \d1|divisor|cont1[4]~22\);

-- Location: FF_X2_Y18_N9
\d1|divisor|cont1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[4]~21_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(4));

-- Location: LCCOMB_X2_Y18_N10
\d1|divisor|cont1[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[5]~23_combout\ = (\d1|divisor|cont1\(5) & (!\d1|divisor|cont1[4]~22\)) # (!\d1|divisor|cont1\(5) & ((\d1|divisor|cont1[4]~22\) # (GND)))
-- \d1|divisor|cont1[5]~24\ = CARRY((!\d1|divisor|cont1[4]~22\) # (!\d1|divisor|cont1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(5),
	datad => VCC,
	cin => \d1|divisor|cont1[4]~22\,
	combout => \d1|divisor|cont1[5]~23_combout\,
	cout => \d1|divisor|cont1[5]~24\);

-- Location: FF_X2_Y18_N11
\d1|divisor|cont1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[5]~23_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(5));

-- Location: LCCOMB_X2_Y18_N12
\d1|divisor|cont1[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[6]~25_combout\ = (\d1|divisor|cont1\(6) & (\d1|divisor|cont1[5]~24\ $ (GND))) # (!\d1|divisor|cont1\(6) & (!\d1|divisor|cont1[5]~24\ & VCC))
-- \d1|divisor|cont1[6]~26\ = CARRY((\d1|divisor|cont1\(6) & !\d1|divisor|cont1[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(6),
	datad => VCC,
	cin => \d1|divisor|cont1[5]~24\,
	combout => \d1|divisor|cont1[6]~25_combout\,
	cout => \d1|divisor|cont1[6]~26\);

-- Location: FF_X2_Y18_N13
\d1|divisor|cont1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[6]~25_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(6));

-- Location: LCCOMB_X2_Y18_N14
\d1|divisor|cont1[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[7]~27_combout\ = (\d1|divisor|cont1\(7) & (!\d1|divisor|cont1[6]~26\)) # (!\d1|divisor|cont1\(7) & ((\d1|divisor|cont1[6]~26\) # (GND)))
-- \d1|divisor|cont1[7]~28\ = CARRY((!\d1|divisor|cont1[6]~26\) # (!\d1|divisor|cont1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(7),
	datad => VCC,
	cin => \d1|divisor|cont1[6]~26\,
	combout => \d1|divisor|cont1[7]~27_combout\,
	cout => \d1|divisor|cont1[7]~28\);

-- Location: FF_X2_Y18_N15
\d1|divisor|cont1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[7]~27_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(7));

-- Location: LCCOMB_X2_Y18_N16
\d1|divisor|cont1[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[8]~29_combout\ = (\d1|divisor|cont1\(8) & (\d1|divisor|cont1[7]~28\ $ (GND))) # (!\d1|divisor|cont1\(8) & (!\d1|divisor|cont1[7]~28\ & VCC))
-- \d1|divisor|cont1[8]~30\ = CARRY((\d1|divisor|cont1\(8) & !\d1|divisor|cont1[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(8),
	datad => VCC,
	cin => \d1|divisor|cont1[7]~28\,
	combout => \d1|divisor|cont1[8]~29_combout\,
	cout => \d1|divisor|cont1[8]~30\);

-- Location: FF_X2_Y18_N17
\d1|divisor|cont1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[8]~29_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(8));

-- Location: LCCOMB_X2_Y18_N18
\d1|divisor|cont1[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[9]~31_combout\ = (\d1|divisor|cont1\(9) & (!\d1|divisor|cont1[8]~30\)) # (!\d1|divisor|cont1\(9) & ((\d1|divisor|cont1[8]~30\) # (GND)))
-- \d1|divisor|cont1[9]~32\ = CARRY((!\d1|divisor|cont1[8]~30\) # (!\d1|divisor|cont1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(9),
	datad => VCC,
	cin => \d1|divisor|cont1[8]~30\,
	combout => \d1|divisor|cont1[9]~31_combout\,
	cout => \d1|divisor|cont1[9]~32\);

-- Location: FF_X2_Y18_N19
\d1|divisor|cont1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[9]~31_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(9));

-- Location: FF_X2_Y18_N21
\d1|divisor|cont1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[10]~33_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(10));

-- Location: LCCOMB_X2_Y18_N24
\d1|divisor|cont1[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont1[12]~37_combout\ = \d1|divisor|cont1\(12) $ (!\d1|divisor|cont1[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont1\(12),
	cin => \d1|divisor|cont1[11]~36\,
	combout => \d1|divisor|cont1[12]~37_combout\);

-- Location: FF_X2_Y18_N25
\d1|divisor|cont1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont1[12]~37_combout\,
	sclr => \d1|divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont1\(12));

-- Location: LCCOMB_X2_Y18_N26
\d1|divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan0~2_combout\ = ((!\d1|divisor|cont1\(10) & !\d1|divisor|cont1\(11))) # (!\d1|divisor|cont1\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont1\(10),
	datac => \d1|divisor|cont1\(11),
	datad => \d1|divisor|cont1\(12),
	combout => \d1|divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y18_N30
\d1|divisor|clk_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|clk_1~0_combout\ = \d1|divisor|clk_1~q\ $ (((!\d1|divisor|LessThan0~2_combout\ & ((!\d1|divisor|LessThan0~1_combout\) # (!\d1|divisor|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|clk_1~q\,
	datab => \d1|divisor|LessThan0~2_combout\,
	datac => \d1|divisor|LessThan0~0_combout\,
	datad => \d1|divisor|LessThan0~1_combout\,
	combout => \d1|divisor|clk_1~0_combout\);

-- Location: LCCOMB_X1_Y18_N8
\d1|divisor|clk_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|clk_1~feeder_combout\ = \d1|divisor|clk_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|clk_1~0_combout\,
	combout => \d1|divisor|clk_1~feeder_combout\);

-- Location: FF_X1_Y18_N9
\d1|divisor|clk_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|clk_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|clk_1~q\);

-- Location: LCCOMB_X33_Y12_N18
\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0_combout\ = !\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~q\,
	combout => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0_combout\);

-- Location: LCCOMB_X33_Y12_N2
\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~feeder_combout\ = \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~0_combout\,
	combout => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~feeder_combout\);

-- Location: FF_X33_Y12_N3
\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~q\);

-- Location: CLKCTRL_G8
\d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N8
\select_vel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_vel(0),
	o => \select_vel[0]~input_o\);

-- Location: LCCOMB_X3_Y11_N18
\d1|entradas|sinc_xx:0:buss|ffd1|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:0:buss|ffd1|dd~feeder_combout\ = \select_vel[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_vel[0]~input_o\,
	combout => \d1|entradas|sinc_xx:0:buss|ffd1|dd~feeder_combout\);

-- Location: FF_X3_Y11_N19
\d1|entradas|sinc_xx:0:buss|ffd1|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|entradas|sinc_xx:0:buss|div1|ffd1|dd~clkctrl_outclk\,
	d => \d1|entradas|sinc_xx:0:buss|ffd1|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:0:buss|ffd1|dd~q\);

-- Location: LCCOMB_X3_Y11_N24
\d1|entradas|sinc_xx:0:buss|ffd2|dd~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|entradas|sinc_xx:0:buss|ffd2|dd~feeder_combout\ = \d1|entradas|sinc_xx:0:buss|ffd1|dd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1|entradas|sinc_xx:0:buss|ffd1|dd~q\,
	combout => \d1|entradas|sinc_xx:0:buss|ffd2|dd~feeder_combout\);

-- Location: FF_X3_Y11_N25
\d1|entradas|sinc_xx:0:buss|ffd2|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|entradas|sinc_xx:0:buss|div1|ffd1|ALT_INV_dd~clkctrl_outclk\,
	d => \d1|entradas|sinc_xx:0:buss|ffd2|dd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:0:buss|ffd2|dd~q\);

-- Location: FF_X1_Y11_N29
\d1|entradas|sinc_xx:0:buss|ffd3|dd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \d1|entradas|sinc_xx:0:buss|ffd2|dd~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|entradas|sinc_xx:0:buss|ffd3|dd~q\);

-- Location: LCCOMB_X1_Y17_N2
\d1|divisor|cont2[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[0]~12_combout\ = \d1|divisor|cont2\(0) $ (VCC)
-- \d1|divisor|cont2[0]~13\ = CARRY(\d1|divisor|cont2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(0),
	datad => VCC,
	combout => \d1|divisor|cont2[0]~12_combout\,
	cout => \d1|divisor|cont2[0]~13\);

-- Location: LCCOMB_X1_Y17_N0
\d1|divisor|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan1~0_combout\ = ((!\d1|divisor|cont2\(4) & ((!\d1|divisor|cont2\(2)) # (!\d1|divisor|cont2\(3))))) # (!\d1|divisor|cont2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(5),
	datab => \d1|divisor|cont2\(3),
	datac => \d1|divisor|cont2\(2),
	datad => \d1|divisor|cont2\(4),
	combout => \d1|divisor|LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y17_N30
\d1|divisor|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan1~1_combout\ = (!\d1|divisor|cont2\(8) & (!\d1|divisor|cont2\(7) & (!\d1|divisor|cont2\(10) & !\d1|divisor|cont2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(8),
	datab => \d1|divisor|cont2\(7),
	datac => \d1|divisor|cont2\(10),
	datad => \d1|divisor|cont2\(6),
	combout => \d1|divisor|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y17_N26
\d1|divisor|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan1~3_combout\ = (!\d1|divisor|LessThan1~2_combout\ & ((!\d1|divisor|LessThan1~1_combout\) # (!\d1|divisor|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|LessThan1~0_combout\,
	datac => \d1|divisor|LessThan1~1_combout\,
	datad => \d1|divisor|LessThan1~2_combout\,
	combout => \d1|divisor|LessThan1~3_combout\);

-- Location: FF_X1_Y17_N3
\d1|divisor|cont2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[0]~12_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(0));

-- Location: LCCOMB_X1_Y17_N4
\d1|divisor|cont2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[1]~14_combout\ = (\d1|divisor|cont2\(1) & (!\d1|divisor|cont2[0]~13\)) # (!\d1|divisor|cont2\(1) & ((\d1|divisor|cont2[0]~13\) # (GND)))
-- \d1|divisor|cont2[1]~15\ = CARRY((!\d1|divisor|cont2[0]~13\) # (!\d1|divisor|cont2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(1),
	datad => VCC,
	cin => \d1|divisor|cont2[0]~13\,
	combout => \d1|divisor|cont2[1]~14_combout\,
	cout => \d1|divisor|cont2[1]~15\);

-- Location: FF_X1_Y17_N5
\d1|divisor|cont2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[1]~14_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(1));

-- Location: LCCOMB_X1_Y17_N6
\d1|divisor|cont2[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[2]~16_combout\ = (\d1|divisor|cont2\(2) & (\d1|divisor|cont2[1]~15\ $ (GND))) # (!\d1|divisor|cont2\(2) & (!\d1|divisor|cont2[1]~15\ & VCC))
-- \d1|divisor|cont2[2]~17\ = CARRY((\d1|divisor|cont2\(2) & !\d1|divisor|cont2[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(2),
	datad => VCC,
	cin => \d1|divisor|cont2[1]~15\,
	combout => \d1|divisor|cont2[2]~16_combout\,
	cout => \d1|divisor|cont2[2]~17\);

-- Location: FF_X1_Y17_N7
\d1|divisor|cont2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[2]~16_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(2));

-- Location: LCCOMB_X1_Y17_N8
\d1|divisor|cont2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[3]~18_combout\ = (\d1|divisor|cont2\(3) & (!\d1|divisor|cont2[2]~17\)) # (!\d1|divisor|cont2\(3) & ((\d1|divisor|cont2[2]~17\) # (GND)))
-- \d1|divisor|cont2[3]~19\ = CARRY((!\d1|divisor|cont2[2]~17\) # (!\d1|divisor|cont2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(3),
	datad => VCC,
	cin => \d1|divisor|cont2[2]~17\,
	combout => \d1|divisor|cont2[3]~18_combout\,
	cout => \d1|divisor|cont2[3]~19\);

-- Location: FF_X1_Y17_N9
\d1|divisor|cont2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[3]~18_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(3));

-- Location: LCCOMB_X1_Y17_N10
\d1|divisor|cont2[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[4]~20_combout\ = (\d1|divisor|cont2\(4) & (\d1|divisor|cont2[3]~19\ $ (GND))) # (!\d1|divisor|cont2\(4) & (!\d1|divisor|cont2[3]~19\ & VCC))
-- \d1|divisor|cont2[4]~21\ = CARRY((\d1|divisor|cont2\(4) & !\d1|divisor|cont2[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(4),
	datad => VCC,
	cin => \d1|divisor|cont2[3]~19\,
	combout => \d1|divisor|cont2[4]~20_combout\,
	cout => \d1|divisor|cont2[4]~21\);

-- Location: FF_X1_Y17_N11
\d1|divisor|cont2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[4]~20_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(4));

-- Location: LCCOMB_X1_Y17_N12
\d1|divisor|cont2[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[5]~22_combout\ = (\d1|divisor|cont2\(5) & (!\d1|divisor|cont2[4]~21\)) # (!\d1|divisor|cont2\(5) & ((\d1|divisor|cont2[4]~21\) # (GND)))
-- \d1|divisor|cont2[5]~23\ = CARRY((!\d1|divisor|cont2[4]~21\) # (!\d1|divisor|cont2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(5),
	datad => VCC,
	cin => \d1|divisor|cont2[4]~21\,
	combout => \d1|divisor|cont2[5]~22_combout\,
	cout => \d1|divisor|cont2[5]~23\);

-- Location: FF_X1_Y17_N13
\d1|divisor|cont2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[5]~22_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(5));

-- Location: LCCOMB_X1_Y17_N14
\d1|divisor|cont2[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[6]~24_combout\ = (\d1|divisor|cont2\(6) & (\d1|divisor|cont2[5]~23\ $ (GND))) # (!\d1|divisor|cont2\(6) & (!\d1|divisor|cont2[5]~23\ & VCC))
-- \d1|divisor|cont2[6]~25\ = CARRY((\d1|divisor|cont2\(6) & !\d1|divisor|cont2[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(6),
	datad => VCC,
	cin => \d1|divisor|cont2[5]~23\,
	combout => \d1|divisor|cont2[6]~24_combout\,
	cout => \d1|divisor|cont2[6]~25\);

-- Location: FF_X1_Y17_N15
\d1|divisor|cont2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[6]~24_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(6));

-- Location: LCCOMB_X1_Y17_N16
\d1|divisor|cont2[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[7]~26_combout\ = (\d1|divisor|cont2\(7) & (!\d1|divisor|cont2[6]~25\)) # (!\d1|divisor|cont2\(7) & ((\d1|divisor|cont2[6]~25\) # (GND)))
-- \d1|divisor|cont2[7]~27\ = CARRY((!\d1|divisor|cont2[6]~25\) # (!\d1|divisor|cont2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(7),
	datad => VCC,
	cin => \d1|divisor|cont2[6]~25\,
	combout => \d1|divisor|cont2[7]~26_combout\,
	cout => \d1|divisor|cont2[7]~27\);

-- Location: FF_X1_Y17_N17
\d1|divisor|cont2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[7]~26_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(7));

-- Location: LCCOMB_X1_Y17_N18
\d1|divisor|cont2[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[8]~28_combout\ = (\d1|divisor|cont2\(8) & (\d1|divisor|cont2[7]~27\ $ (GND))) # (!\d1|divisor|cont2\(8) & (!\d1|divisor|cont2[7]~27\ & VCC))
-- \d1|divisor|cont2[8]~29\ = CARRY((\d1|divisor|cont2\(8) & !\d1|divisor|cont2[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|cont2\(8),
	datad => VCC,
	cin => \d1|divisor|cont2[7]~27\,
	combout => \d1|divisor|cont2[8]~28_combout\,
	cout => \d1|divisor|cont2[8]~29\);

-- Location: FF_X1_Y17_N19
\d1|divisor|cont2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[8]~28_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(8));

-- Location: LCCOMB_X1_Y17_N20
\d1|divisor|cont2[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[9]~30_combout\ = (\d1|divisor|cont2\(9) & (!\d1|divisor|cont2[8]~29\)) # (!\d1|divisor|cont2\(9) & ((\d1|divisor|cont2[8]~29\) # (GND)))
-- \d1|divisor|cont2[9]~31\ = CARRY((!\d1|divisor|cont2[8]~29\) # (!\d1|divisor|cont2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(9),
	datad => VCC,
	cin => \d1|divisor|cont2[8]~29\,
	combout => \d1|divisor|cont2[9]~30_combout\,
	cout => \d1|divisor|cont2[9]~31\);

-- Location: FF_X1_Y17_N21
\d1|divisor|cont2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[9]~30_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(9));

-- Location: LCCOMB_X1_Y17_N22
\d1|divisor|cont2[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[10]~32_combout\ = (\d1|divisor|cont2\(10) & (\d1|divisor|cont2[9]~31\ $ (GND))) # (!\d1|divisor|cont2\(10) & (!\d1|divisor|cont2[9]~31\ & VCC))
-- \d1|divisor|cont2[10]~33\ = CARRY((\d1|divisor|cont2\(10) & !\d1|divisor|cont2[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(10),
	datad => VCC,
	cin => \d1|divisor|cont2[9]~31\,
	combout => \d1|divisor|cont2[10]~32_combout\,
	cout => \d1|divisor|cont2[10]~33\);

-- Location: FF_X1_Y17_N23
\d1|divisor|cont2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[10]~32_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(10));

-- Location: LCCOMB_X1_Y17_N24
\d1|divisor|cont2[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|cont2[11]~34_combout\ = \d1|divisor|cont2[10]~33\ $ (\d1|divisor|cont2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d1|divisor|cont2\(11),
	cin => \d1|divisor|cont2[10]~33\,
	combout => \d1|divisor|cont2[11]~34_combout\);

-- Location: FF_X1_Y17_N25
\d1|divisor|cont2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \d1|divisor|cont2[11]~34_combout\,
	sclr => \d1|divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|cont2\(11));

-- Location: LCCOMB_X1_Y17_N28
\d1|divisor|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|LessThan1~2_combout\ = ((!\d1|divisor|cont2\(10) & !\d1|divisor|cont2\(9))) # (!\d1|divisor|cont2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|divisor|cont2\(11),
	datac => \d1|divisor|cont2\(10),
	datad => \d1|divisor|cont2\(9),
	combout => \d1|divisor|LessThan1~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\d1|divisor|clk_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|divisor|clk_2~0_combout\ = \d1|divisor|clk_2~q\ $ (((!\d1|divisor|LessThan1~2_combout\ & ((!\d1|divisor|LessThan1~1_combout\) # (!\d1|divisor|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|LessThan1~2_combout\,
	datab => \d1|divisor|LessThan1~0_combout\,
	datac => \d1|divisor|clk_2~q\,
	datad => \d1|divisor|LessThan1~1_combout\,
	combout => \d1|divisor|clk_2~0_combout\);

-- Location: FF_X1_Y11_N25
\d1|divisor|clk_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \d1|divisor|clk_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|divisor|clk_2~q\);

-- Location: LCCOMB_X1_Y11_N28
\d1|seleccionador|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|seleccionador|Mux0~0_combout\ = (\d1|entradas|sinc_xx:1:buss|ffd3|dd~q\ & (((\d1|entradas|sinc_xx:0:buss|ffd3|dd~q\)))) # (!\d1|entradas|sinc_xx:1:buss|ffd3|dd~q\ & ((\d1|entradas|sinc_xx:0:buss|ffd3|dd~q\ & ((\d1|divisor|clk_2~q\))) # 
-- (!\d1|entradas|sinc_xx:0:buss|ffd3|dd~q\ & (\d1|divisor|clk_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|entradas|sinc_xx:1:buss|ffd3|dd~q\,
	datab => \d1|divisor|clk_1~q\,
	datac => \d1|entradas|sinc_xx:0:buss|ffd3|dd~q\,
	datad => \d1|divisor|clk_2~q\,
	combout => \d1|seleccionador|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\d1|seleccionador|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|seleccionador|Mux0~combout\ = LCELL((\d1|entradas|sinc_xx:1:buss|ffd3|dd~q\ & ((\d1|seleccionador|Mux0~0_combout\ & ((\d1|divisor|clk_5~q\))) # (!\d1|seleccionador|Mux0~0_combout\ & (\d1|divisor|clk_4~q\)))) # (!\d1|entradas|sinc_xx:1:buss|ffd3|dd~q\ 
-- & (((\d1|seleccionador|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|divisor|clk_4~q\,
	datab => \d1|divisor|clk_5~q\,
	datac => \d1|entradas|sinc_xx:1:buss|ffd3|dd~q\,
	datad => \d1|seleccionador|Mux0~0_combout\,
	combout => \d1|seleccionador|Mux0~combout\);

-- Location: CLKCTRL_G3
\d1|seleccionador|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d1|seleccionador|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d1|seleccionador|Mux0~clkctrl_outclk\);

-- Location: IOIBUF_X18_Y24_N15
\enviar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enviar,
	o => \enviar~input_o\);

-- Location: LCCOMB_X17_Y18_N20
\d2|d1|d1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Selector1~0_combout\ = (!\d2|d1|d1|stac.ini~q\ & !\enviar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|stac.ini~q\,
	datad => \enviar~input_o\,
	combout => \d2|d1|d1|Selector1~0_combout\);

-- Location: CLKCTRL_G6
\d2|d1|d1|pxst.send~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d2|d1|d1|pxst.send~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d2|d1|d1|pxst.send~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y18_N2
\d2|d1|d1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~0_combout\ = \d2|d1|d1|add_aux\(0) $ (VCC)
-- \d2|d1|d1|Add0~1\ = CARRY(\d2|d1|d1|add_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(0),
	datad => VCC,
	combout => \d2|d1|d1|Add0~0_combout\,
	cout => \d2|d1|d1|Add0~1\);

-- Location: IOIBUF_X16_Y24_N15
\select_msj[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(0),
	o => \select_msj[0]~input_o\);

-- Location: LCCOMB_X17_Y18_N10
\d2|d1|d1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Selector2~0_combout\ = (\d2|d1|d1|stac.send~q\) # ((\d2|d1|d1|stac.espera~q\ & !\d2|d2|d2|d1|ones~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|stac.send~q\,
	datac => \d2|d1|d1|stac.espera~q\,
	datad => \d2|d2|d2|d1|ones~2_combout\,
	combout => \d2|d1|d1|Selector2~0_combout\);

-- Location: FF_X17_Y18_N11
\d2|d1|d1|stac.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d1|d1|Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|stac.espera~q\);

-- Location: IOIBUF_X16_Y24_N8
\select_msj[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_msj(1),
	o => \select_msj[1]~input_o\);

-- Location: LCCOMB_X14_Y18_N4
\d2|d1|d1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~3_combout\ = (\d2|d1|d1|add_aux\(1) & (!\d2|d1|d1|Add0~1\)) # (!\d2|d1|d1|add_aux\(1) & ((\d2|d1|d1|Add0~1\) # (GND)))
-- \d2|d1|d1|Add0~4\ = CARRY((!\d2|d1|d1|Add0~1\) # (!\d2|d1|d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(1),
	datad => VCC,
	cin => \d2|d1|d1|Add0~1\,
	combout => \d2|d1|d1|Add0~3_combout\,
	cout => \d2|d1|d1|Add0~4\);

-- Location: LCCOMB_X14_Y18_N22
\d2|d1|d1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~5_combout\ = (\d2|d1|d1|stac.incremento~q\ & (((\d2|d1|d1|Add0~3_combout\)))) # (!\d2|d1|d1|stac.incremento~q\ & (\select_msj[0]~input_o\ $ ((\select_msj[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d2|d1|d1|Add0~3_combout\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|Add0~5_combout\);

-- Location: LCCOMB_X14_Y18_N30
\d2|d1|d1|add_aux[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(1) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~5_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(1),
	datac => \d2|d1|d1|Add0~5_combout\,
	datad => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	combout => \d2|d1|d1|add_aux\(1));

-- Location: LCCOMB_X14_Y18_N6
\d2|d1|d1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~6_combout\ = (\d2|d1|d1|add_aux\(2) & (\d2|d1|d1|Add0~4\ $ (GND))) # (!\d2|d1|d1|add_aux\(2) & (!\d2|d1|d1|Add0~4\ & VCC))
-- \d2|d1|d1|Add0~7\ = CARRY((\d2|d1|d1|add_aux\(2) & !\d2|d1|d1|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(2),
	datad => VCC,
	cin => \d2|d1|d1|Add0~4\,
	combout => \d2|d1|d1|Add0~6_combout\,
	cout => \d2|d1|d1|Add0~7\);

-- Location: LCCOMB_X14_Y18_N28
\d2|d1|d1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~8_combout\ = (\d2|d1|d1|stac.incremento~q\ & (\d2|d1|d1|Add0~6_combout\)) # (!\d2|d1|d1|stac.incremento~q\ & (((\select_msj[1]~input_o\) # (\select_msj[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|Add0~6_combout\,
	datab => \select_msj[1]~input_o\,
	datac => \select_msj[0]~input_o\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|Add0~8_combout\);

-- Location: LCCOMB_X14_Y18_N0
\d2|d1|d1|add_aux[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(2) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~8_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(2),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~8_combout\,
	combout => \d2|d1|d1|add_aux\(2));

-- Location: LCCOMB_X14_Y18_N8
\d2|d1|d1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~9_combout\ = (\d2|d1|d1|add_aux\(3) & (!\d2|d1|d1|Add0~7\)) # (!\d2|d1|d1|add_aux\(3) & ((\d2|d1|d1|Add0~7\) # (GND)))
-- \d2|d1|d1|Add0~10\ = CARRY((!\d2|d1|d1|Add0~7\) # (!\d2|d1|d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(3),
	datad => VCC,
	cin => \d2|d1|d1|Add0~7\,
	combout => \d2|d1|d1|Add0~9_combout\,
	cout => \d2|d1|d1|Add0~10\);

-- Location: LCCOMB_X16_Y18_N24
\d2|d1|d1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~11_combout\ = (\d2|d1|d1|stac.incremento~q\ & (((\d2|d1|d1|Add0~9_combout\)))) # (!\d2|d1|d1|stac.incremento~q\ & (\select_msj[1]~input_o\ & (!\select_msj[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[1]~input_o\,
	datab => \select_msj[0]~input_o\,
	datac => \d2|d1|d1|Add0~9_combout\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|Add0~11_combout\);

-- Location: LCCOMB_X16_Y18_N0
\d2|d1|d1|add_aux[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(3) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~11_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(3),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~11_combout\,
	combout => \d2|d1|d1|add_aux\(3));

-- Location: LCCOMB_X14_Y18_N10
\d2|d1|d1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~12_combout\ = (\d2|d1|d1|add_aux\(4) & (\d2|d1|d1|Add0~10\ $ (GND))) # (!\d2|d1|d1|add_aux\(4) & (!\d2|d1|d1|Add0~10\ & VCC))
-- \d2|d1|d1|Add0~13\ = CARRY((\d2|d1|d1|add_aux\(4) & !\d2|d1|d1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(4),
	datad => VCC,
	cin => \d2|d1|d1|Add0~10\,
	combout => \d2|d1|d1|Add0~12_combout\,
	cout => \d2|d1|d1|Add0~13\);

-- Location: LCCOMB_X14_Y18_N18
\d2|d1|d1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~14_combout\ = (\d2|d1|d1|stac.incremento~q\ & (((\d2|d1|d1|Add0~12_combout\)))) # (!\d2|d1|d1|stac.incremento~q\ & (!\select_msj[0]~input_o\ & (\select_msj[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_msj[0]~input_o\,
	datab => \select_msj[1]~input_o\,
	datac => \d2|d1|d1|Add0~12_combout\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|Add0~14_combout\);

-- Location: LCCOMB_X14_Y18_N26
\d2|d1|d1|add_aux[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(4) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~14_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(4),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~14_combout\,
	combout => \d2|d1|d1|add_aux\(4));

-- Location: LCCOMB_X14_Y18_N12
\d2|d1|d1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~15_combout\ = (\d2|d1|d1|add_aux\(5) & (!\d2|d1|d1|Add0~13\)) # (!\d2|d1|d1|add_aux\(5) & ((\d2|d1|d1|Add0~13\) # (GND)))
-- \d2|d1|d1|Add0~16\ = CARRY((!\d2|d1|d1|Add0~13\) # (!\d2|d1|d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(5),
	datad => VCC,
	cin => \d2|d1|d1|Add0~13\,
	combout => \d2|d1|d1|Add0~15_combout\,
	cout => \d2|d1|d1|Add0~16\);

-- Location: LCCOMB_X16_Y18_N16
\d2|d1|d1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~17_combout\ = (\d2|d1|d1|stac.incremento~q\ & (((\d2|d1|d1|Add0~15_combout\)))) # (!\d2|d1|d1|stac.incremento~q\ & ((\select_msj[1]~input_o\) # ((\select_msj[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|stac.incremento~q\,
	datab => \select_msj[1]~input_o\,
	datac => \select_msj[0]~input_o\,
	datad => \d2|d1|d1|Add0~15_combout\,
	combout => \d2|d1|d1|Add0~17_combout\);

-- Location: LCCOMB_X16_Y18_N28
\d2|d1|d1|add_aux[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(5) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~17_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(5),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~17_combout\,
	combout => \d2|d1|d1|add_aux\(5));

-- Location: LCCOMB_X14_Y18_N14
\d2|d1|d1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~18_combout\ = (\d2|d1|d1|add_aux\(6) & (\d2|d1|d1|Add0~16\ $ (GND))) # (!\d2|d1|d1|add_aux\(6) & (!\d2|d1|d1|Add0~16\ & VCC))
-- \d2|d1|d1|Add0~19\ = CARRY((\d2|d1|d1|add_aux\(6) & !\d2|d1|d1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(6),
	datad => VCC,
	cin => \d2|d1|d1|Add0~16\,
	combout => \d2|d1|d1|Add0~18_combout\,
	cout => \d2|d1|d1|Add0~19\);

-- Location: LCCOMB_X16_Y18_N2
\d2|d1|d1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~20_combout\ = (\d2|d1|d1|stac.incremento~q\ & (((\d2|d1|d1|Add0~18_combout\)))) # (!\d2|d1|d1|stac.incremento~q\ & (\select_msj[1]~input_o\ & (\select_msj[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|stac.incremento~q\,
	datab => \select_msj[1]~input_o\,
	datac => \select_msj[0]~input_o\,
	datad => \d2|d1|d1|Add0~18_combout\,
	combout => \d2|d1|d1|Add0~20_combout\);

-- Location: LCCOMB_X16_Y18_N22
\d2|d1|d1|add_aux[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(6) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~20_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|add_aux\(6),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~20_combout\,
	combout => \d2|d1|d1|add_aux\(6));

-- Location: LCCOMB_X14_Y18_N16
\d2|d1|d1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~21_combout\ = \d2|d1|d1|Add0~19\ $ (\d2|d1|d1|add_aux\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d2|d1|d1|add_aux\(7),
	cin => \d2|d1|d1|Add0~19\,
	combout => \d2|d1|d1|Add0~21_combout\);

-- Location: LCCOMB_X16_Y18_N12
\d2|d1|d1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~23_combout\ = (\d2|d1|d1|stac.incremento~q\ & \d2|d1|d1|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|stac.incremento~q\,
	datad => \d2|d1|d1|Add0~21_combout\,
	combout => \d2|d1|d1|Add0~23_combout\);

-- Location: LCCOMB_X16_Y18_N4
\d2|d1|d1|add_aux[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(7) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~23_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(7),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~23_combout\,
	combout => \d2|d1|d1|add_aux\(7));

-- Location: M9K_X15_Y18_N0
\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010006100184003A0",
	mem_init0 => X"01B4002000194006D000800061001B40061001B40020001A4004D000000004001B8003A001D0007200184004D00080006E001840053000800075001CC0020001840063001BC0074000800065001B00020000B0006F001A00063001B80061001A0006300080006F00190006F001D000200010400000001000450014C002000104004C0011400550010C0053001140020001C80065000C40020001BC0073001C800750010C0000000000004001BC0065001300020000980020001C8006500140003A001C8006F001C00020001BC006400184007400194006C001C0006D001BC0043000800034000E8004F0012400520013C00540013000520013C004200104004C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "transm_completo_2.transm_completo_20.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "msj_y_salida_apart:d2|msj_y_mem:d1|rom:d2|altsyncram:Mux6_rtl_0|altsyncram_6j11:auto_generated|ALTSYNCRAM",
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
	clk0 => \d1|seleccionador|Mux0~clkctrl_outclk\,
	portaaddr => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y18_N20
\d2|d2|d1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|Equal0~0_combout\ = (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\) # ((\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\) # ((\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	datab => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	datac => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \d2|d2|d1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y18_N18
\d2|d2|d1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|Equal0~1_combout\ = (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\) # ((\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\) # ((\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\) # (\d2|d2|d1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datab => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	datac => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	datad => \d2|d2|d1|Equal0~0_combout\,
	combout => \d2|d2|d1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y18_N6
\d2|d1|d1|pxst.incremento~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|pxst.incremento~0_combout\ = (\d2|d2|d2|d1|ones~2_combout\ & (\d2|d1|d1|stac.espera~q\ & \d2|d2|d1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|d1|ones~2_combout\,
	datac => \d2|d1|d1|stac.espera~q\,
	datad => \d2|d2|d1|Equal0~1_combout\,
	combout => \d2|d1|d1|pxst.incremento~0_combout\);

-- Location: FF_X16_Y18_N7
\d2|d1|d1|stac.incremento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~combout\,
	d => \d2|d1|d1|pxst.incremento~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|stac.incremento~q\);

-- Location: LCCOMB_X14_Y18_N24
\d2|d1|d1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Add0~2_combout\ = (\d2|d1|d1|stac.incremento~q\ & (\d2|d1|d1|Add0~0_combout\)) # (!\d2|d1|d1|stac.incremento~q\ & ((\select_msj[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|Add0~0_combout\,
	datac => \select_msj[0]~input_o\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|Add0~2_combout\);

-- Location: LCCOMB_X14_Y18_N20
\d2|d1|d1|add_aux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|add_aux\(0) = (GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & ((\d2|d1|d1|Add0~2_combout\))) # (!GLOBAL(\d2|d1|d1|pxst.send~clkctrl_outclk\) & (\d2|d1|d1|add_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d1|add_aux\(0),
	datac => \d2|d1|d1|pxst.send~clkctrl_outclk\,
	datad => \d2|d1|d1|Add0~2_combout\,
	combout => \d2|d1|d1|add_aux\(0));

-- Location: LCCOMB_X18_Y18_N8
\d2|d2|d1|paridad~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|paridad~0_combout\ = \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\ $ (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\ $ (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	datab => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	combout => \d2|d2|d1|paridad~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\d2|d2|d1|paridad~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d1|paridad~1_combout\ = \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\ $ (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\ $ (\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datac => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	combout => \d2|d2|d1|paridad~1_combout\);

-- Location: LCCOMB_X18_Y18_N6
\d2|d2|d2|d1|t:1:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & (\d2|d2|d1|paridad~0_combout\ $ (!\d2|d2|d1|paridad~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|d2|load~q\,
	datac => \d2|d2|d1|paridad~0_combout\,
	datad => \d2|d2|d1|paridad~1_combout\,
	combout => \d2|d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\);

-- Location: FF_X18_Y18_N7
\d2|d2|d2|d1|t:1:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:1:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X16_Y18_N30
\d2|d2|d2|d1|t:2:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d2|load~q\,
	datac => \d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \d2|d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\);

-- Location: FF_X16_Y18_N31
\d2|d2|d2|d1|t:2:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:2:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X16_Y18_N26
\d2|d2|d2|d1|t:3:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d2|load~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a1\,
	combout => \d2|d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\);

-- Location: FF_X16_Y18_N27
\d2|d2|d2|d1|t:3:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:3:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N0
\d2|d2|d2|d1|t:4:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\,
	datac => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \d2|d2|d2|d2|load~q\,
	combout => \d2|d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\);

-- Location: FF_X17_Y18_N1
\d2|d2|d2|d1|t:4:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:4:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X16_Y18_N8
\d2|d2|d2|d1|t:5:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d2|load~q\,
	datac => \d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a3\,
	combout => \d2|d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\);

-- Location: FF_X16_Y18_N9
\d2|d2|d2|d1|t:5:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:5:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N8
\d2|d2|d2|d1|t:6:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d2|load~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a4\,
	combout => \d2|d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\);

-- Location: FF_X17_Y18_N9
\d2|d2|d2|d1|t:6:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:6:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N14
\d2|d2|d2|d1|t:7:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d2|load~q\,
	datac => \d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a5\,
	combout => \d2|d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\);

-- Location: FF_X17_Y18_N15
\d2|d2|d2|d1|t:7:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:7:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N16
\d2|d2|d2|d1|ones~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|ones~0_combout\ = (!\d2|d2|d2|d1|t:10:t11:bitxul|dout~q\ & (!\d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\ & (!\d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\ & !\d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:10:t11:bitxul|dout~q\,
	datab => \d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\,
	datad => \d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\,
	combout => \d2|d2|d2|d1|ones~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\d2|d2|d2|d1|ones~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|ones~1_combout\ = (!\d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\ & (!\d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\ & (!\d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\ & !\d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:5:t1_10:bitx|dout~q\,
	datab => \d2|d2|d2|d1|t:6:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d1|t:3:t1_10:bitx|dout~q\,
	datad => \d2|d2|d2|d1|t:4:t1_10:bitx|dout~q\,
	combout => \d2|d2|d2|d1|ones~1_combout\);

-- Location: LCCOMB_X17_Y18_N18
\d2|d2|d2|d1|ones~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|ones~2_combout\ = (!\d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\ & (\d2|d2|d2|d1|ones~0_combout\ & (\d2|d2|d2|d1|ones~1_combout\ & !\d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d1|t:1:t1_10:bitx|dout~q\,
	datab => \d2|d2|d2|d1|ones~0_combout\,
	datac => \d2|d2|d2|d1|ones~1_combout\,
	datad => \d2|d2|d2|d1|t:2:t1_10:bitx|dout~q\,
	combout => \d2|d2|d2|d1|ones~2_combout\);

-- Location: LCCOMB_X16_Y18_N14
\d2|d1|d1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|Selector1~1_combout\ = (!\d2|d1|d1|Selector1~0_combout\ & (((\d2|d2|d1|Equal0~1_combout\) # (!\d2|d1|d1|stac.espera~q\)) # (!\d2|d2|d2|d1|ones~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|Selector1~0_combout\,
	datab => \d2|d2|d2|d1|ones~2_combout\,
	datac => \d2|d1|d1|stac.espera~q\,
	datad => \d2|d2|d1|Equal0~1_combout\,
	combout => \d2|d1|d1|Selector1~1_combout\);

-- Location: FF_X16_Y18_N15
\d2|d1|d1|stac.ini\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d1|d1|Selector1~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|stac.ini~q\);

-- Location: LCCOMB_X17_Y18_N30
\d2|d1|d1|pxst.asign~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|pxst.asign~0_combout\ = (!\d2|d1|d1|stac.ini~q\ & \enviar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|stac.ini~q\,
	datad => \enviar~input_o\,
	combout => \d2|d1|d1|pxst.asign~0_combout\);

-- Location: FF_X16_Y18_N11
\d2|d1|d1|stac.asign\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	asdata => \d2|d1|d1|pxst.asign~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|stac.asign~q\);

-- Location: LCCOMB_X16_Y18_N10
\d2|d1|d1|pxst.send\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|pxst.send~combout\ = (\d2|d1|d1|stac.asign~q\) # (\d2|d1|d1|stac.incremento~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2|d1|d1|stac.asign~q\,
	datad => \d2|d1|d1|stac.incremento~q\,
	combout => \d2|d1|d1|pxst.send~combout\);

-- Location: LCCOMB_X17_Y18_N4
\d2|d1|d1|stac.send~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d1|d1|stac.send~feeder_combout\ = \d2|d1|d1|pxst.send~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d2|d1|d1|pxst.send~combout\,
	combout => \d2|d1|d1|stac.send~feeder_combout\);

-- Location: FF_X17_Y18_N5
\d2|d1|d1|stac.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d1|d1|stac.send~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|stac.send~q\);

-- Location: FF_X17_Y18_N31
\d2|d1|d1|send_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	asdata => \d2|d1|d1|stac.send~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d1|d1|send_int~q\);

-- Location: LCCOMB_X17_Y18_N24
\d2|d2|d2|d2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d2|Selector1~0_combout\ = (\d2|d2|d2|d2|st.LD~q\) # ((!\d2|d2|d2|d1|ones~2_combout\ & \d2|d2|d2|d2|st.SND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|d1|ones~2_combout\,
	datac => \d2|d2|d2|d2|st.SND~q\,
	datad => \d2|d2|d2|d2|st.LD~q\,
	combout => \d2|d2|d2|d2|Selector1~0_combout\);

-- Location: FF_X17_Y18_N25
\d2|d2|d2|d2|st.SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d2|Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d2|st.SND~q\);

-- Location: LCCOMB_X17_Y18_N26
\d2|d2|d2|d2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d2|Selector0~0_combout\ = (\d2|d1|d1|send_int~q\ & (((!\d2|d2|d2|d1|ones~2_combout\)) # (!\d2|d2|d2|d2|st.SND~q\))) # (!\d2|d1|d1|send_int~q\ & (\d2|d2|d2|d2|st.ILDE~q\ & ((!\d2|d2|d2|d1|ones~2_combout\) # (!\d2|d2|d2|d2|st.SND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|send_int~q\,
	datab => \d2|d2|d2|d2|st.SND~q\,
	datac => \d2|d2|d2|d2|st.ILDE~q\,
	datad => \d2|d2|d2|d1|ones~2_combout\,
	combout => \d2|d2|d2|d2|Selector0~0_combout\);

-- Location: FF_X17_Y18_N27
\d2|d2|d2|d2|st.ILDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d2|Selector0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d2|st.ILDE~q\);

-- Location: LCCOMB_X17_Y18_N12
\d2|d2|d2|d2|px_st.LD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d2|px_st.LD~0_combout\ = (\d2|d1|d1|send_int~q\ & !\d2|d2|d2|d2|st.ILDE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d1|d1|send_int~q\,
	datac => \d2|d2|d2|d2|st.ILDE~q\,
	combout => \d2|d2|d2|d2|px_st.LD~0_combout\);

-- Location: FF_X17_Y18_N13
\d2|d2|d2|d2|st.LD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d2|px_st.LD~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d2|st.LD~q\);

-- Location: LCCOMB_X18_Y18_N16
\d2|d2|d2|d2|load~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d2|load~feeder_combout\ = \d2|d2|d2|d2|st.LD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2|d2|d2|d2|st.LD~q\,
	combout => \d2|d2|d2|d2|load~feeder_combout\);

-- Location: FF_X18_Y18_N17
\d2|d2|d2|d2|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d2|load~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d2|load~q\);

-- Location: LCCOMB_X17_Y18_N28
\d2|d2|d2|d1|t:8:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d2|load~q\ & ((!\d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\))) # (!\d2|d2|d2|d2|load~q\ & (\d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|d2|d2|d2|load~q\,
	datac => \d2|d2|d2|d1|t:7:t1_10:bitx|dout~q\,
	datad => \d2|d1|d2|Mux6_rtl_0|auto_generated|ram_block1a6\,
	combout => \d2|d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\);

-- Location: FF_X17_Y18_N29
\d2|d2|d2|d1|t:8:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:8:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N2
\d2|d2|d2|d1|t:9:t1_10:bitx|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\ = (\d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\) # (\d2|d2|d2|d2|load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|d1|t:8:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d2|load~q\,
	combout => \d2|d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\);

-- Location: FF_X17_Y18_N3
\d2|d2|d2|d1|t:9:t1_10:bitx|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:9:t1_10:bitx|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\);

-- Location: LCCOMB_X17_Y18_N6
\d2|d2|d2|d1|t:10:t11:bitxul|dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|d2|d2|d1|t:10:t11:bitxul|dout~0_combout\ = (\d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\) # (\d2|d2|d2|d2|load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d2|d2|d2|d1|t:9:t1_10:bitx|dout~q\,
	datac => \d2|d2|d2|d2|load~q\,
	combout => \d2|d2|d2|d1|t:10:t11:bitxul|dout~0_combout\);

-- Location: FF_X17_Y18_N7
\d2|d2|d2|d1|t:10:t11:bitxul|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d1|seleccionador|Mux0~clkctrl_outclk\,
	d => \d2|d2|d2|d1|t:10:t11:bitxul|dout~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|d2|d2|d1|t:10:t11:bitxul|dout~q\);

ww_aux_out_clk_int <= \aux_out_clk_int~output_o\;

ww_salida_serie <= \salida_serie~output_o\;
END structure;


