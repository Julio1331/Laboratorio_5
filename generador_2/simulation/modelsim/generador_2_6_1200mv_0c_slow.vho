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

-- DATE "12/01/2019 18:45:34"

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

ENTITY 	generador_2 IS
    PORT (
	sel_vel : IN std_logic_vector(1 DOWNTO 0);
	clk_out : OUT std_logic;
	rst : IN std_logic;
	clk_50MHz : IN std_logic
	);
END generador_2;

-- Design Ports Information
-- clk_out	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_vel[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_vel[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF generador_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel_vel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \cont115200[0]~8_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \cont115200[0]~9\ : std_logic;
SIGNAL \cont115200[1]~10_combout\ : std_logic;
SIGNAL \cont115200[1]~11\ : std_logic;
SIGNAL \cont115200[2]~12_combout\ : std_logic;
SIGNAL \cont115200[2]~13\ : std_logic;
SIGNAL \cont115200[3]~14_combout\ : std_logic;
SIGNAL \cont115200[3]~15\ : std_logic;
SIGNAL \cont115200[4]~16_combout\ : std_logic;
SIGNAL \cont115200[4]~17\ : std_logic;
SIGNAL \cont115200[5]~18_combout\ : std_logic;
SIGNAL \cont115200[5]~19\ : std_logic;
SIGNAL \cont115200[6]~20_combout\ : std_logic;
SIGNAL \cont115200[6]~21\ : std_logic;
SIGNAL \cont115200[7]~22_combout\ : std_logic;
SIGNAL \clk_115200~0_combout\ : std_logic;
SIGNAL \clk_115200~q\ : std_logic;
SIGNAL \cont4800[0]~13_combout\ : std_logic;
SIGNAL \cont4800[0]~14\ : std_logic;
SIGNAL \cont4800[1]~15_combout\ : std_logic;
SIGNAL \cont4800[1]~16\ : std_logic;
SIGNAL \cont4800[2]~17_combout\ : std_logic;
SIGNAL \cont4800[2]~18\ : std_logic;
SIGNAL \cont4800[3]~19_combout\ : std_logic;
SIGNAL \cont4800[3]~20\ : std_logic;
SIGNAL \cont4800[4]~21_combout\ : std_logic;
SIGNAL \cont4800[4]~22\ : std_logic;
SIGNAL \cont4800[5]~23_combout\ : std_logic;
SIGNAL \cont4800[5]~24\ : std_logic;
SIGNAL \cont4800[6]~25_combout\ : std_logic;
SIGNAL \cont4800[6]~26\ : std_logic;
SIGNAL \cont4800[7]~27_combout\ : std_logic;
SIGNAL \cont4800[7]~28\ : std_logic;
SIGNAL \cont4800[8]~29_combout\ : std_logic;
SIGNAL \cont4800[8]~30\ : std_logic;
SIGNAL \cont4800[9]~31_combout\ : std_logic;
SIGNAL \cont4800[9]~32\ : std_logic;
SIGNAL \cont4800[10]~33_combout\ : std_logic;
SIGNAL \cont4800[10]~34\ : std_logic;
SIGNAL \cont4800[11]~35_combout\ : std_logic;
SIGNAL \cont4800[11]~36\ : std_logic;
SIGNAL \cont4800[12]~37_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \clk_4800~0_combout\ : std_logic;
SIGNAL \clk_4800~q\ : std_logic;
SIGNAL \sel_vel[1]~input_o\ : std_logic;
SIGNAL \sel_vel[0]~input_o\ : std_logic;
SIGNAL \cont9600[0]~12_combout\ : std_logic;
SIGNAL \cont9600[0]~13\ : std_logic;
SIGNAL \cont9600[1]~14_combout\ : std_logic;
SIGNAL \cont9600[1]~15\ : std_logic;
SIGNAL \cont9600[2]~16_combout\ : std_logic;
SIGNAL \cont9600[2]~17\ : std_logic;
SIGNAL \cont9600[3]~18_combout\ : std_logic;
SIGNAL \cont9600[3]~19\ : std_logic;
SIGNAL \cont9600[4]~20_combout\ : std_logic;
SIGNAL \cont9600[4]~21\ : std_logic;
SIGNAL \cont9600[5]~22_combout\ : std_logic;
SIGNAL \cont9600[5]~23\ : std_logic;
SIGNAL \cont9600[6]~24_combout\ : std_logic;
SIGNAL \cont9600[6]~25\ : std_logic;
SIGNAL \cont9600[7]~26_combout\ : std_logic;
SIGNAL \cont9600[7]~27\ : std_logic;
SIGNAL \cont9600[8]~28_combout\ : std_logic;
SIGNAL \cont9600[8]~29\ : std_logic;
SIGNAL \cont9600[9]~30_combout\ : std_logic;
SIGNAL \cont9600[9]~31\ : std_logic;
SIGNAL \cont9600[10]~32_combout\ : std_logic;
SIGNAL \cont9600[10]~33\ : std_logic;
SIGNAL \cont9600[11]~34_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \clk_9600~0_combout\ : std_logic;
SIGNAL \clk_9600~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cont38400[0]~10_combout\ : std_logic;
SIGNAL \cont38400[0]~11\ : std_logic;
SIGNAL \cont38400[1]~12_combout\ : std_logic;
SIGNAL \cont38400[1]~13\ : std_logic;
SIGNAL \cont38400[2]~14_combout\ : std_logic;
SIGNAL \cont38400[2]~15\ : std_logic;
SIGNAL \cont38400[3]~16_combout\ : std_logic;
SIGNAL \cont38400[3]~17\ : std_logic;
SIGNAL \cont38400[4]~18_combout\ : std_logic;
SIGNAL \cont38400[4]~19\ : std_logic;
SIGNAL \cont38400[5]~20_combout\ : std_logic;
SIGNAL \cont38400[5]~21\ : std_logic;
SIGNAL \cont38400[6]~22_combout\ : std_logic;
SIGNAL \cont38400[6]~23\ : std_logic;
SIGNAL \cont38400[7]~24_combout\ : std_logic;
SIGNAL \cont38400[7]~25\ : std_logic;
SIGNAL \cont38400[8]~26_combout\ : std_logic;
SIGNAL \cont38400[8]~27\ : std_logic;
SIGNAL \cont38400[9]~28_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \clk_38400~0_combout\ : std_logic;
SIGNAL \clk_38400~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL cont115200 : std_logic_vector(7 DOWNTO 0);
SIGNAL cont4800 : std_logic_vector(12 DOWNTO 0);
SIGNAL cont9600 : std_logic_vector(11 DOWNTO 0);
SIGNAL cont38400 : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sel_vel <= sel_vel;
clk_out <= ww_clk_out;
ww_rst <= rst;
ww_clk_50MHz <= clk_50MHz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N2
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G2
\clk_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y21_N12
\cont115200[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[0]~8_combout\ = cont115200(0) $ (VCC)
-- \cont115200[0]~9\ = CARRY(cont115200(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont115200(0),
	datad => VCC,
	combout => \cont115200[0]~8_combout\,
	cout => \cont115200[0]~9\);

-- Location: LCCOMB_X17_Y21_N6
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((!cont115200(5) & ((!cont115200(4)) # (!cont115200(3))))) # (!cont115200(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont115200(6),
	datab => cont115200(3),
	datac => cont115200(5),
	datad => cont115200(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y21_N4
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (cont115200(7) & !\LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont115200(7),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: FF_X17_Y21_N13
\cont115200[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[0]~8_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(0));

-- Location: LCCOMB_X17_Y21_N14
\cont115200[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[1]~10_combout\ = (cont115200(1) & (!\cont115200[0]~9\)) # (!cont115200(1) & ((\cont115200[0]~9\) # (GND)))
-- \cont115200[1]~11\ = CARRY((!\cont115200[0]~9\) # (!cont115200(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont115200(1),
	datad => VCC,
	cin => \cont115200[0]~9\,
	combout => \cont115200[1]~10_combout\,
	cout => \cont115200[1]~11\);

-- Location: FF_X17_Y21_N15
\cont115200[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[1]~10_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(1));

-- Location: LCCOMB_X17_Y21_N16
\cont115200[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[2]~12_combout\ = (cont115200(2) & (\cont115200[1]~11\ $ (GND))) # (!cont115200(2) & (!\cont115200[1]~11\ & VCC))
-- \cont115200[2]~13\ = CARRY((cont115200(2) & !\cont115200[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont115200(2),
	datad => VCC,
	cin => \cont115200[1]~11\,
	combout => \cont115200[2]~12_combout\,
	cout => \cont115200[2]~13\);

-- Location: FF_X17_Y21_N17
\cont115200[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[2]~12_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(2));

-- Location: LCCOMB_X17_Y21_N18
\cont115200[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[3]~14_combout\ = (cont115200(3) & (!\cont115200[2]~13\)) # (!cont115200(3) & ((\cont115200[2]~13\) # (GND)))
-- \cont115200[3]~15\ = CARRY((!\cont115200[2]~13\) # (!cont115200(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont115200(3),
	datad => VCC,
	cin => \cont115200[2]~13\,
	combout => \cont115200[3]~14_combout\,
	cout => \cont115200[3]~15\);

-- Location: FF_X17_Y21_N19
\cont115200[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[3]~14_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(3));

-- Location: LCCOMB_X17_Y21_N20
\cont115200[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[4]~16_combout\ = (cont115200(4) & (\cont115200[3]~15\ $ (GND))) # (!cont115200(4) & (!\cont115200[3]~15\ & VCC))
-- \cont115200[4]~17\ = CARRY((cont115200(4) & !\cont115200[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont115200(4),
	datad => VCC,
	cin => \cont115200[3]~15\,
	combout => \cont115200[4]~16_combout\,
	cout => \cont115200[4]~17\);

-- Location: FF_X17_Y21_N21
\cont115200[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[4]~16_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(4));

-- Location: LCCOMB_X17_Y21_N22
\cont115200[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[5]~18_combout\ = (cont115200(5) & (!\cont115200[4]~17\)) # (!cont115200(5) & ((\cont115200[4]~17\) # (GND)))
-- \cont115200[5]~19\ = CARRY((!\cont115200[4]~17\) # (!cont115200(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont115200(5),
	datad => VCC,
	cin => \cont115200[4]~17\,
	combout => \cont115200[5]~18_combout\,
	cout => \cont115200[5]~19\);

-- Location: FF_X17_Y21_N23
\cont115200[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[5]~18_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(5));

-- Location: LCCOMB_X17_Y21_N24
\cont115200[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[6]~20_combout\ = (cont115200(6) & (\cont115200[5]~19\ $ (GND))) # (!cont115200(6) & (!\cont115200[5]~19\ & VCC))
-- \cont115200[6]~21\ = CARRY((cont115200(6) & !\cont115200[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont115200(6),
	datad => VCC,
	cin => \cont115200[5]~19\,
	combout => \cont115200[6]~20_combout\,
	cout => \cont115200[6]~21\);

-- Location: FF_X17_Y21_N25
\cont115200[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[6]~20_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(6));

-- Location: LCCOMB_X17_Y21_N26
\cont115200[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont115200[7]~22_combout\ = cont115200(7) $ (\cont115200[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont115200(7),
	cin => \cont115200[6]~21\,
	combout => \cont115200[7]~22_combout\);

-- Location: FF_X17_Y21_N27
\cont115200[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont115200[7]~22_combout\,
	sclr => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont115200(7));

-- Location: LCCOMB_X17_Y21_N10
\clk_115200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_115200~0_combout\ = \clk_115200~q\ $ (((cont115200(7) & !\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont115200(7),
	datac => \clk_115200~q\,
	datad => \LessThan3~0_combout\,
	combout => \clk_115200~0_combout\);

-- Location: FF_X17_Y21_N11
clk_115200 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_115200~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_115200~q\);

-- Location: LCCOMB_X18_Y21_N4
\cont4800[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[0]~13_combout\ = cont4800(0) $ (VCC)
-- \cont4800[0]~14\ = CARRY(cont4800(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(0),
	datad => VCC,
	combout => \cont4800[0]~13_combout\,
	cout => \cont4800[0]~14\);

-- Location: FF_X18_Y21_N5
\cont4800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[0]~13_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(0));

-- Location: LCCOMB_X18_Y21_N6
\cont4800[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[1]~15_combout\ = (cont4800(1) & (!\cont4800[0]~14\)) # (!cont4800(1) & ((\cont4800[0]~14\) # (GND)))
-- \cont4800[1]~16\ = CARRY((!\cont4800[0]~14\) # (!cont4800(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(1),
	datad => VCC,
	cin => \cont4800[0]~14\,
	combout => \cont4800[1]~15_combout\,
	cout => \cont4800[1]~16\);

-- Location: FF_X18_Y21_N7
\cont4800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[1]~15_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(1));

-- Location: LCCOMB_X18_Y21_N8
\cont4800[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[2]~17_combout\ = (cont4800(2) & (\cont4800[1]~16\ $ (GND))) # (!cont4800(2) & (!\cont4800[1]~16\ & VCC))
-- \cont4800[2]~18\ = CARRY((cont4800(2) & !\cont4800[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(2),
	datad => VCC,
	cin => \cont4800[1]~16\,
	combout => \cont4800[2]~17_combout\,
	cout => \cont4800[2]~18\);

-- Location: FF_X18_Y21_N9
\cont4800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[2]~17_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(2));

-- Location: LCCOMB_X18_Y21_N10
\cont4800[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[3]~19_combout\ = (cont4800(3) & (!\cont4800[2]~18\)) # (!cont4800(3) & ((\cont4800[2]~18\) # (GND)))
-- \cont4800[3]~20\ = CARRY((!\cont4800[2]~18\) # (!cont4800(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(3),
	datad => VCC,
	cin => \cont4800[2]~18\,
	combout => \cont4800[3]~19_combout\,
	cout => \cont4800[3]~20\);

-- Location: FF_X18_Y21_N11
\cont4800[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[3]~19_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(3));

-- Location: LCCOMB_X18_Y21_N12
\cont4800[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[4]~21_combout\ = (cont4800(4) & (\cont4800[3]~20\ $ (GND))) # (!cont4800(4) & (!\cont4800[3]~20\ & VCC))
-- \cont4800[4]~22\ = CARRY((cont4800(4) & !\cont4800[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(4),
	datad => VCC,
	cin => \cont4800[3]~20\,
	combout => \cont4800[4]~21_combout\,
	cout => \cont4800[4]~22\);

-- Location: FF_X18_Y21_N13
\cont4800[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[4]~21_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(4));

-- Location: LCCOMB_X18_Y21_N14
\cont4800[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[5]~23_combout\ = (cont4800(5) & (!\cont4800[4]~22\)) # (!cont4800(5) & ((\cont4800[4]~22\) # (GND)))
-- \cont4800[5]~24\ = CARRY((!\cont4800[4]~22\) # (!cont4800(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont4800(5),
	datad => VCC,
	cin => \cont4800[4]~22\,
	combout => \cont4800[5]~23_combout\,
	cout => \cont4800[5]~24\);

-- Location: FF_X18_Y21_N15
\cont4800[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[5]~23_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(5));

-- Location: LCCOMB_X18_Y21_N16
\cont4800[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[6]~25_combout\ = (cont4800(6) & (\cont4800[5]~24\ $ (GND))) # (!cont4800(6) & (!\cont4800[5]~24\ & VCC))
-- \cont4800[6]~26\ = CARRY((cont4800(6) & !\cont4800[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont4800(6),
	datad => VCC,
	cin => \cont4800[5]~24\,
	combout => \cont4800[6]~25_combout\,
	cout => \cont4800[6]~26\);

-- Location: FF_X18_Y21_N17
\cont4800[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[6]~25_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(6));

-- Location: LCCOMB_X18_Y21_N18
\cont4800[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[7]~27_combout\ = (cont4800(7) & (!\cont4800[6]~26\)) # (!cont4800(7) & ((\cont4800[6]~26\) # (GND)))
-- \cont4800[7]~28\ = CARRY((!\cont4800[6]~26\) # (!cont4800(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont4800(7),
	datad => VCC,
	cin => \cont4800[6]~26\,
	combout => \cont4800[7]~27_combout\,
	cout => \cont4800[7]~28\);

-- Location: FF_X18_Y21_N19
\cont4800[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[7]~27_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(7));

-- Location: LCCOMB_X18_Y21_N20
\cont4800[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[8]~29_combout\ = (cont4800(8) & (\cont4800[7]~28\ $ (GND))) # (!cont4800(8) & (!\cont4800[7]~28\ & VCC))
-- \cont4800[8]~30\ = CARRY((cont4800(8) & !\cont4800[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont4800(8),
	datad => VCC,
	cin => \cont4800[7]~28\,
	combout => \cont4800[8]~29_combout\,
	cout => \cont4800[8]~30\);

-- Location: FF_X18_Y21_N21
\cont4800[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[8]~29_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(8));

-- Location: LCCOMB_X18_Y21_N22
\cont4800[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[9]~31_combout\ = (cont4800(9) & (!\cont4800[8]~30\)) # (!cont4800(9) & ((\cont4800[8]~30\) # (GND)))
-- \cont4800[9]~32\ = CARRY((!\cont4800[8]~30\) # (!cont4800(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(9),
	datad => VCC,
	cin => \cont4800[8]~30\,
	combout => \cont4800[9]~31_combout\,
	cout => \cont4800[9]~32\);

-- Location: FF_X18_Y21_N23
\cont4800[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[9]~31_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(9));

-- Location: LCCOMB_X18_Y21_N24
\cont4800[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[10]~33_combout\ = (cont4800(10) & (\cont4800[9]~32\ $ (GND))) # (!cont4800(10) & (!\cont4800[9]~32\ & VCC))
-- \cont4800[10]~34\ = CARRY((cont4800(10) & !\cont4800[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont4800(10),
	datad => VCC,
	cin => \cont4800[9]~32\,
	combout => \cont4800[10]~33_combout\,
	cout => \cont4800[10]~34\);

-- Location: FF_X18_Y21_N25
\cont4800[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[10]~33_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(10));

-- Location: LCCOMB_X18_Y21_N26
\cont4800[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[11]~35_combout\ = (cont4800(11) & (!\cont4800[10]~34\)) # (!cont4800(11) & ((\cont4800[10]~34\) # (GND)))
-- \cont4800[11]~36\ = CARRY((!\cont4800[10]~34\) # (!cont4800(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(11),
	datad => VCC,
	cin => \cont4800[10]~34\,
	combout => \cont4800[11]~35_combout\,
	cout => \cont4800[11]~36\);

-- Location: FF_X18_Y21_N27
\cont4800[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[11]~35_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(11));

-- Location: LCCOMB_X18_Y21_N28
\cont4800[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont4800[12]~37_combout\ = \cont4800[11]~36\ $ (!cont4800(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont4800(12),
	cin => \cont4800[11]~36\,
	combout => \cont4800[12]~37_combout\);

-- Location: FF_X18_Y21_N29
\cont4800[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont4800[12]~37_combout\,
	sclr => \LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont4800(12));

-- Location: LCCOMB_X18_Y21_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!cont4800(3) & (((!cont4800(0)) # (!cont4800(2))) # (!cont4800(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(1),
	datab => cont4800(2),
	datac => cont4800(0),
	datad => cont4800(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y21_N30
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (cont4800(6) & ((cont4800(5)) # ((cont4800(4) & !\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(4),
	datab => cont4800(6),
	datac => cont4800(5),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y21_N24
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (cont4800(8)) # ((cont4800(9)) # ((cont4800(7)) # (\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(8),
	datab => cont4800(9),
	datac => cont4800(7),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y21_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (cont4800(12) & ((cont4800(11)) # ((cont4800(10) & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont4800(12),
	datab => cont4800(10),
	datac => cont4800(11),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X17_Y21_N30
\clk_4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_4800~0_combout\ = \clk_4800~q\ $ (\LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_4800~q\,
	datad => \LessThan1~3_combout\,
	combout => \clk_4800~0_combout\);

-- Location: FF_X17_Y21_N31
clk_4800 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_4800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_4800~q\);

-- Location: IOIBUF_X16_Y24_N15
\sel_vel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_vel(1),
	o => \sel_vel[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\sel_vel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_vel(0),
	o => \sel_vel[0]~input_o\);

-- Location: LCCOMB_X16_Y21_N2
\cont9600[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[0]~12_combout\ = cont9600(0) $ (VCC)
-- \cont9600[0]~13\ = CARRY(cont9600(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont9600(0),
	datad => VCC,
	combout => \cont9600[0]~12_combout\,
	cout => \cont9600[0]~13\);

-- Location: FF_X16_Y21_N3
\cont9600[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[0]~12_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(0));

-- Location: LCCOMB_X16_Y21_N4
\cont9600[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[1]~14_combout\ = (cont9600(1) & (!\cont9600[0]~13\)) # (!cont9600(1) & ((\cont9600[0]~13\) # (GND)))
-- \cont9600[1]~15\ = CARRY((!\cont9600[0]~13\) # (!cont9600(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(1),
	datad => VCC,
	cin => \cont9600[0]~13\,
	combout => \cont9600[1]~14_combout\,
	cout => \cont9600[1]~15\);

-- Location: FF_X16_Y21_N5
\cont9600[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[1]~14_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(1));

-- Location: LCCOMB_X16_Y21_N6
\cont9600[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[2]~16_combout\ = (cont9600(2) & (\cont9600[1]~15\ $ (GND))) # (!cont9600(2) & (!\cont9600[1]~15\ & VCC))
-- \cont9600[2]~17\ = CARRY((cont9600(2) & !\cont9600[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(2),
	datad => VCC,
	cin => \cont9600[1]~15\,
	combout => \cont9600[2]~16_combout\,
	cout => \cont9600[2]~17\);

-- Location: FF_X16_Y21_N7
\cont9600[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[2]~16_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(2));

-- Location: LCCOMB_X16_Y21_N8
\cont9600[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[3]~18_combout\ = (cont9600(3) & (!\cont9600[2]~17\)) # (!cont9600(3) & ((\cont9600[2]~17\) # (GND)))
-- \cont9600[3]~19\ = CARRY((!\cont9600[2]~17\) # (!cont9600(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(3),
	datad => VCC,
	cin => \cont9600[2]~17\,
	combout => \cont9600[3]~18_combout\,
	cout => \cont9600[3]~19\);

-- Location: FF_X16_Y21_N9
\cont9600[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[3]~18_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(3));

-- Location: LCCOMB_X16_Y21_N10
\cont9600[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[4]~20_combout\ = (cont9600(4) & (\cont9600[3]~19\ $ (GND))) # (!cont9600(4) & (!\cont9600[3]~19\ & VCC))
-- \cont9600[4]~21\ = CARRY((cont9600(4) & !\cont9600[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(4),
	datad => VCC,
	cin => \cont9600[3]~19\,
	combout => \cont9600[4]~20_combout\,
	cout => \cont9600[4]~21\);

-- Location: FF_X16_Y21_N11
\cont9600[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[4]~20_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(4));

-- Location: LCCOMB_X16_Y21_N12
\cont9600[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[5]~22_combout\ = (cont9600(5) & (!\cont9600[4]~21\)) # (!cont9600(5) & ((\cont9600[4]~21\) # (GND)))
-- \cont9600[5]~23\ = CARRY((!\cont9600[4]~21\) # (!cont9600(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(5),
	datad => VCC,
	cin => \cont9600[4]~21\,
	combout => \cont9600[5]~22_combout\,
	cout => \cont9600[5]~23\);

-- Location: FF_X16_Y21_N13
\cont9600[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[5]~22_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(5));

-- Location: LCCOMB_X16_Y21_N14
\cont9600[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[6]~24_combout\ = (cont9600(6) & (\cont9600[5]~23\ $ (GND))) # (!cont9600(6) & (!\cont9600[5]~23\ & VCC))
-- \cont9600[6]~25\ = CARRY((cont9600(6) & !\cont9600[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(6),
	datad => VCC,
	cin => \cont9600[5]~23\,
	combout => \cont9600[6]~24_combout\,
	cout => \cont9600[6]~25\);

-- Location: FF_X16_Y21_N15
\cont9600[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[6]~24_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(6));

-- Location: LCCOMB_X16_Y21_N16
\cont9600[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[7]~26_combout\ = (cont9600(7) & (!\cont9600[6]~25\)) # (!cont9600(7) & ((\cont9600[6]~25\) # (GND)))
-- \cont9600[7]~27\ = CARRY((!\cont9600[6]~25\) # (!cont9600(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(7),
	datad => VCC,
	cin => \cont9600[6]~25\,
	combout => \cont9600[7]~26_combout\,
	cout => \cont9600[7]~27\);

-- Location: FF_X16_Y21_N17
\cont9600[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[7]~26_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(7));

-- Location: LCCOMB_X16_Y21_N18
\cont9600[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[8]~28_combout\ = (cont9600(8) & (\cont9600[7]~27\ $ (GND))) # (!cont9600(8) & (!\cont9600[7]~27\ & VCC))
-- \cont9600[8]~29\ = CARRY((cont9600(8) & !\cont9600[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(8),
	datad => VCC,
	cin => \cont9600[7]~27\,
	combout => \cont9600[8]~28_combout\,
	cout => \cont9600[8]~29\);

-- Location: FF_X16_Y21_N19
\cont9600[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[8]~28_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(8));

-- Location: LCCOMB_X16_Y21_N20
\cont9600[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[9]~30_combout\ = (cont9600(9) & (!\cont9600[8]~29\)) # (!cont9600(9) & ((\cont9600[8]~29\) # (GND)))
-- \cont9600[9]~31\ = CARRY((!\cont9600[8]~29\) # (!cont9600(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont9600(9),
	datad => VCC,
	cin => \cont9600[8]~29\,
	combout => \cont9600[9]~30_combout\,
	cout => \cont9600[9]~31\);

-- Location: FF_X16_Y21_N21
\cont9600[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[9]~30_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(9));

-- Location: LCCOMB_X16_Y21_N22
\cont9600[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[10]~32_combout\ = (cont9600(10) & (\cont9600[9]~31\ $ (GND))) # (!cont9600(10) & (!\cont9600[9]~31\ & VCC))
-- \cont9600[10]~33\ = CARRY((cont9600(10) & !\cont9600[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(10),
	datad => VCC,
	cin => \cont9600[9]~31\,
	combout => \cont9600[10]~32_combout\,
	cout => \cont9600[10]~33\);

-- Location: FF_X16_Y21_N23
\cont9600[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[10]~32_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(10));

-- Location: LCCOMB_X16_Y21_N24
\cont9600[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont9600[11]~34_combout\ = \cont9600[10]~33\ $ (cont9600(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont9600(11),
	cin => \cont9600[10]~33\,
	combout => \cont9600[11]~34_combout\);

-- Location: FF_X16_Y21_N25
\cont9600[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont9600[11]~34_combout\,
	sclr => \LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont9600(11));

-- Location: LCCOMB_X16_Y21_N30
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!cont9600(2) & ((!cont9600(1)) # (!cont9600(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont9600(0),
	datac => cont9600(1),
	datad => cont9600(2),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X16_Y21_N0
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!cont9600(4) & ((\LessThan0~9_combout\) # (!cont9600(3))))) # (!cont9600(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(5),
	datab => cont9600(3),
	datac => \LessThan0~9_combout\,
	datad => cont9600(4),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y21_N26
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!cont9600(8) & (!cont9600(7) & (!cont9600(6) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(8),
	datab => cont9600(7),
	datac => cont9600(6),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y21_N28
\LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = (cont9600(11) & ((cont9600(10)) # ((cont9600(9) & !\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont9600(9),
	datab => cont9600(11),
	datac => \LessThan0~3_combout\,
	datad => cont9600(10),
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X17_Y21_N28
\clk_9600~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_9600~0_combout\ = \clk_9600~q\ $ (\LessThan0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_9600~q\,
	datad => \LessThan0~26_combout\,
	combout => \clk_9600~0_combout\);

-- Location: FF_X17_Y21_N29
clk_9600 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_9600~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_9600~q\);

-- Location: LCCOMB_X17_Y21_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel_vel[1]~input_o\ & (((\sel_vel[0]~input_o\)))) # (!\sel_vel[1]~input_o\ & ((\sel_vel[0]~input_o\ & ((\clk_9600~q\))) # (!\sel_vel[0]~input_o\ & (\clk_4800~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_4800~q\,
	datab => \sel_vel[1]~input_o\,
	datac => \sel_vel[0]~input_o\,
	datad => \clk_9600~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y22_N8
\cont38400[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[0]~10_combout\ = cont38400(0) $ (VCC)
-- \cont38400[0]~11\ = CARRY(cont38400(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont38400(0),
	datad => VCC,
	combout => \cont38400[0]~10_combout\,
	cout => \cont38400[0]~11\);

-- Location: FF_X17_Y22_N9
\cont38400[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[0]~10_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(0));

-- Location: LCCOMB_X17_Y22_N10
\cont38400[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[1]~12_combout\ = (cont38400(1) & (!\cont38400[0]~11\)) # (!cont38400(1) & ((\cont38400[0]~11\) # (GND)))
-- \cont38400[1]~13\ = CARRY((!\cont38400[0]~11\) # (!cont38400(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(1),
	datad => VCC,
	cin => \cont38400[0]~11\,
	combout => \cont38400[1]~12_combout\,
	cout => \cont38400[1]~13\);

-- Location: FF_X17_Y22_N11
\cont38400[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[1]~12_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(1));

-- Location: LCCOMB_X17_Y22_N12
\cont38400[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[2]~14_combout\ = (cont38400(2) & (\cont38400[1]~13\ $ (GND))) # (!cont38400(2) & (!\cont38400[1]~13\ & VCC))
-- \cont38400[2]~15\ = CARRY((cont38400(2) & !\cont38400[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(2),
	datad => VCC,
	cin => \cont38400[1]~13\,
	combout => \cont38400[2]~14_combout\,
	cout => \cont38400[2]~15\);

-- Location: FF_X17_Y22_N13
\cont38400[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[2]~14_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(2));

-- Location: LCCOMB_X17_Y22_N14
\cont38400[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[3]~16_combout\ = (cont38400(3) & (!\cont38400[2]~15\)) # (!cont38400(3) & ((\cont38400[2]~15\) # (GND)))
-- \cont38400[3]~17\ = CARRY((!\cont38400[2]~15\) # (!cont38400(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont38400(3),
	datad => VCC,
	cin => \cont38400[2]~15\,
	combout => \cont38400[3]~16_combout\,
	cout => \cont38400[3]~17\);

-- Location: FF_X17_Y22_N15
\cont38400[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[3]~16_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(3));

-- Location: LCCOMB_X17_Y22_N16
\cont38400[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[4]~18_combout\ = (cont38400(4) & (\cont38400[3]~17\ $ (GND))) # (!cont38400(4) & (!\cont38400[3]~17\ & VCC))
-- \cont38400[4]~19\ = CARRY((cont38400(4) & !\cont38400[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont38400(4),
	datad => VCC,
	cin => \cont38400[3]~17\,
	combout => \cont38400[4]~18_combout\,
	cout => \cont38400[4]~19\);

-- Location: FF_X17_Y22_N17
\cont38400[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[4]~18_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(4));

-- Location: LCCOMB_X17_Y22_N18
\cont38400[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[5]~20_combout\ = (cont38400(5) & (!\cont38400[4]~19\)) # (!cont38400(5) & ((\cont38400[4]~19\) # (GND)))
-- \cont38400[5]~21\ = CARRY((!\cont38400[4]~19\) # (!cont38400(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont38400(5),
	datad => VCC,
	cin => \cont38400[4]~19\,
	combout => \cont38400[5]~20_combout\,
	cout => \cont38400[5]~21\);

-- Location: FF_X17_Y22_N19
\cont38400[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[5]~20_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(5));

-- Location: LCCOMB_X17_Y22_N20
\cont38400[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[6]~22_combout\ = (cont38400(6) & (\cont38400[5]~21\ $ (GND))) # (!cont38400(6) & (!\cont38400[5]~21\ & VCC))
-- \cont38400[6]~23\ = CARRY((cont38400(6) & !\cont38400[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont38400(6),
	datad => VCC,
	cin => \cont38400[5]~21\,
	combout => \cont38400[6]~22_combout\,
	cout => \cont38400[6]~23\);

-- Location: FF_X17_Y22_N21
\cont38400[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[6]~22_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(6));

-- Location: LCCOMB_X17_Y22_N22
\cont38400[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[7]~24_combout\ = (cont38400(7) & (!\cont38400[6]~23\)) # (!cont38400(7) & ((\cont38400[6]~23\) # (GND)))
-- \cont38400[7]~25\ = CARRY((!\cont38400[6]~23\) # (!cont38400(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(7),
	datad => VCC,
	cin => \cont38400[6]~23\,
	combout => \cont38400[7]~24_combout\,
	cout => \cont38400[7]~25\);

-- Location: FF_X17_Y22_N23
\cont38400[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[7]~24_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(7));

-- Location: LCCOMB_X17_Y22_N24
\cont38400[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[8]~26_combout\ = (cont38400(8) & (\cont38400[7]~25\ $ (GND))) # (!cont38400(8) & (!\cont38400[7]~25\ & VCC))
-- \cont38400[8]~27\ = CARRY((cont38400(8) & !\cont38400[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont38400(8),
	datad => VCC,
	cin => \cont38400[7]~25\,
	combout => \cont38400[8]~26_combout\,
	cout => \cont38400[8]~27\);

-- Location: FF_X17_Y22_N25
\cont38400[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[8]~26_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(8));

-- Location: LCCOMB_X17_Y22_N26
\cont38400[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont38400[9]~28_combout\ = cont38400(9) $ (\cont38400[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(9),
	cin => \cont38400[8]~27\,
	combout => \cont38400[9]~28_combout\);

-- Location: FF_X17_Y22_N27
\cont38400[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cont38400[9]~28_combout\,
	sclr => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont38400(9));

-- Location: LCCOMB_X17_Y22_N2
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!cont38400(4) & (((!cont38400(2) & !cont38400(1))) # (!cont38400(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(2),
	datab => cont38400(4),
	datac => cont38400(3),
	datad => cont38400(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y22_N28
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!cont38400(5) & (!cont38400(8) & (!cont38400(6) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(5),
	datab => cont38400(8),
	datac => cont38400(6),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X17_Y22_N6
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (cont38400(9) & (!\LessThan2~1_combout\ & ((cont38400(8)) # (cont38400(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont38400(9),
	datab => cont38400(8),
	datac => cont38400(7),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X17_Y22_N4
\clk_38400~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_38400~0_combout\ = \clk_38400~q\ $ (\LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_38400~q\,
	datad => \LessThan2~2_combout\,
	combout => \clk_38400~0_combout\);

-- Location: FF_X17_Y22_N5
clk_38400 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_38400~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_38400~q\);

-- Location: LCCOMB_X17_Y21_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\clk_115200~q\) # ((!\sel_vel[1]~input_o\)))) # (!\Mux0~0_combout\ & (((\sel_vel[1]~input_o\ & \clk_38400~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_115200~q\,
	datab => \Mux0~0_combout\,
	datac => \sel_vel[1]~input_o\,
	datad => \clk_38400~q\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X1_Y24_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_clk_out <= \clk_out~output_o\;
END structure;


