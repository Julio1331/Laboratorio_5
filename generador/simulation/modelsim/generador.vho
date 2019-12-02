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

-- DATE "12/01/2019 15:37:42"

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

ENTITY 	generador IS
    PORT (
	async_in : IN std_logic_vector(1 DOWNTO 0);
	reset_d : IN std_logic;
	salida : OUT std_logic;
	clk_50Mhz : IN std_logic
	);
END generador;

-- Design Ports Information
-- reset_d	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- async_in[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- async_in[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF generador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_async_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_reset_d : std_logic;
SIGNAL ww_salida : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_d~input_o\ : std_logic;
SIGNAL \salida~output_o\ : std_logic;
SIGNAL \async_in[1]~input_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor|cont5[0]~8_combout\ : std_logic;
SIGNAL \divisor|LessThan3~0_combout\ : std_logic;
SIGNAL \divisor|LessThan3~1_combout\ : std_logic;
SIGNAL \divisor|LessThan3~2_combout\ : std_logic;
SIGNAL \divisor|cont5[0]~9\ : std_logic;
SIGNAL \divisor|cont5[1]~10_combout\ : std_logic;
SIGNAL \divisor|cont5[1]~11\ : std_logic;
SIGNAL \divisor|cont5[2]~12_combout\ : std_logic;
SIGNAL \divisor|cont5[2]~13\ : std_logic;
SIGNAL \divisor|cont5[3]~14_combout\ : std_logic;
SIGNAL \divisor|cont5[3]~15\ : std_logic;
SIGNAL \divisor|cont5[4]~16_combout\ : std_logic;
SIGNAL \divisor|cont5[4]~17\ : std_logic;
SIGNAL \divisor|cont5[5]~18_combout\ : std_logic;
SIGNAL \divisor|cont5[5]~19\ : std_logic;
SIGNAL \divisor|cont5[6]~20_combout\ : std_logic;
SIGNAL \divisor|cont5[6]~21\ : std_logic;
SIGNAL \divisor|cont5[7]~22_combout\ : std_logic;
SIGNAL \divisor|clk_5~0_combout\ : std_logic;
SIGNAL \divisor|clk_5~q\ : std_logic;
SIGNAL \divisor|cont4[0]~11_combout\ : std_logic;
SIGNAL \divisor|cont4[2]~16\ : std_logic;
SIGNAL \divisor|cont4[3]~17_combout\ : std_logic;
SIGNAL \divisor|cont4[3]~18\ : std_logic;
SIGNAL \divisor|cont4[4]~19_combout\ : std_logic;
SIGNAL \divisor|cont4[4]~20\ : std_logic;
SIGNAL \divisor|cont4[5]~21_combout\ : std_logic;
SIGNAL \divisor|cont4[5]~22\ : std_logic;
SIGNAL \divisor|cont4[6]~23_combout\ : std_logic;
SIGNAL \divisor|cont4[6]~24\ : std_logic;
SIGNAL \divisor|cont4[7]~25_combout\ : std_logic;
SIGNAL \divisor|cont4[7]~26\ : std_logic;
SIGNAL \divisor|cont4[8]~27_combout\ : std_logic;
SIGNAL \divisor|cont4[8]~28\ : std_logic;
SIGNAL \divisor|cont4[9]~29_combout\ : std_logic;
SIGNAL \divisor|cont4[9]~30\ : std_logic;
SIGNAL \divisor|cont4[10]~31_combout\ : std_logic;
SIGNAL \divisor|LessThan2~2_combout\ : std_logic;
SIGNAL \divisor|LessThan2~1_combout\ : std_logic;
SIGNAL \divisor|LessThan2~3_combout\ : std_logic;
SIGNAL \divisor|cont4[0]~12\ : std_logic;
SIGNAL \divisor|cont4[1]~13_combout\ : std_logic;
SIGNAL \divisor|cont4[1]~14\ : std_logic;
SIGNAL \divisor|cont4[2]~15_combout\ : std_logic;
SIGNAL \divisor|LessThan2~0_combout\ : std_logic;
SIGNAL \divisor|clk_4~0_combout\ : std_logic;
SIGNAL \divisor|clk_4~q\ : std_logic;
SIGNAL \divisor|cont2[0]~12_combout\ : std_logic;
SIGNAL \divisor|cont2[10]~33\ : std_logic;
SIGNAL \divisor|cont2[11]~34_combout\ : std_logic;
SIGNAL \divisor|LessThan1~2_combout\ : std_logic;
SIGNAL \divisor|LessThan1~0_combout\ : std_logic;
SIGNAL \divisor|LessThan1~3_combout\ : std_logic;
SIGNAL \divisor|cont2[0]~13\ : std_logic;
SIGNAL \divisor|cont2[1]~14_combout\ : std_logic;
SIGNAL \divisor|cont2[1]~15\ : std_logic;
SIGNAL \divisor|cont2[2]~16_combout\ : std_logic;
SIGNAL \divisor|cont2[2]~17\ : std_logic;
SIGNAL \divisor|cont2[3]~18_combout\ : std_logic;
SIGNAL \divisor|cont2[3]~19\ : std_logic;
SIGNAL \divisor|cont2[4]~20_combout\ : std_logic;
SIGNAL \divisor|cont2[4]~21\ : std_logic;
SIGNAL \divisor|cont2[5]~22_combout\ : std_logic;
SIGNAL \divisor|cont2[5]~23\ : std_logic;
SIGNAL \divisor|cont2[6]~24_combout\ : std_logic;
SIGNAL \divisor|cont2[6]~25\ : std_logic;
SIGNAL \divisor|cont2[7]~26_combout\ : std_logic;
SIGNAL \divisor|cont2[7]~27\ : std_logic;
SIGNAL \divisor|cont2[8]~28_combout\ : std_logic;
SIGNAL \divisor|cont2[8]~29\ : std_logic;
SIGNAL \divisor|cont2[9]~30_combout\ : std_logic;
SIGNAL \divisor|cont2[9]~31\ : std_logic;
SIGNAL \divisor|cont2[10]~32_combout\ : std_logic;
SIGNAL \divisor|LessThan1~1_combout\ : std_logic;
SIGNAL \divisor|clk_2~0_combout\ : std_logic;
SIGNAL \divisor|clk_2~q\ : std_logic;
SIGNAL \divisor|cont1[0]~13_combout\ : std_logic;
SIGNAL \divisor|cont1[10]~34\ : std_logic;
SIGNAL \divisor|cont1[11]~35_combout\ : std_logic;
SIGNAL \divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \divisor|cont1[0]~14\ : std_logic;
SIGNAL \divisor|cont1[1]~15_combout\ : std_logic;
SIGNAL \divisor|cont1[1]~16\ : std_logic;
SIGNAL \divisor|cont1[2]~17_combout\ : std_logic;
SIGNAL \divisor|cont1[2]~18\ : std_logic;
SIGNAL \divisor|cont1[3]~19_combout\ : std_logic;
SIGNAL \divisor|cont1[3]~20\ : std_logic;
SIGNAL \divisor|cont1[4]~21_combout\ : std_logic;
SIGNAL \divisor|cont1[4]~22\ : std_logic;
SIGNAL \divisor|cont1[5]~23_combout\ : std_logic;
SIGNAL \divisor|cont1[5]~24\ : std_logic;
SIGNAL \divisor|cont1[6]~25_combout\ : std_logic;
SIGNAL \divisor|cont1[6]~26\ : std_logic;
SIGNAL \divisor|cont1[7]~27_combout\ : std_logic;
SIGNAL \divisor|cont1[7]~28\ : std_logic;
SIGNAL \divisor|cont1[8]~29_combout\ : std_logic;
SIGNAL \divisor|cont1[8]~30\ : std_logic;
SIGNAL \divisor|cont1[9]~31_combout\ : std_logic;
SIGNAL \divisor|cont1[9]~32\ : std_logic;
SIGNAL \divisor|cont1[10]~33_combout\ : std_logic;
SIGNAL \divisor|cont1[11]~36\ : std_logic;
SIGNAL \divisor|cont1[12]~37_combout\ : std_logic;
SIGNAL \divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \divisor|clk_1~0_combout\ : std_logic;
SIGNAL \divisor|clk_1~q\ : std_logic;
SIGNAL \async_in[0]~input_o\ : std_logic;
SIGNAL \seleccionador|Mux0~0_combout\ : std_logic;
SIGNAL \seleccionador|Mux0~1_combout\ : std_logic;
SIGNAL \divisor|cont5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \divisor|cont1\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \divisor|cont2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \divisor|cont4\ : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_async_in <= async_in;
ww_reset_d <= reset_d;
salida <= ww_salida;
ww_clk_50Mhz <= clk_50Mhz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\salida~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seleccionador|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \salida~output_o\);

-- Location: IOIBUF_X7_Y24_N1
\async_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_async_in(1),
	o => \async_in[1]~input_o\);

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

-- Location: LCCOMB_X8_Y17_N12
\divisor|cont5[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[0]~8_combout\ = \divisor|cont5\(0) $ (VCC)
-- \divisor|cont5[0]~9\ = CARRY(\divisor|cont5\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(0),
	datad => VCC,
	combout => \divisor|cont5[0]~8_combout\,
	cout => \divisor|cont5[0]~9\);

-- Location: LCCOMB_X8_Y17_N28
\divisor|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan3~0_combout\ = (!\divisor|cont5\(0) & (!\divisor|cont5\(1) & (!\divisor|cont5\(5) & !\divisor|cont5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(0),
	datab => \divisor|cont5\(1),
	datac => \divisor|cont5\(5),
	datad => \divisor|cont5\(2),
	combout => \divisor|LessThan3~0_combout\);

-- Location: LCCOMB_X8_Y17_N6
\divisor|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan3~1_combout\ = ((!\divisor|cont5\(5) & ((!\divisor|cont5\(3)) # (!\divisor|cont5\(4))))) # (!\divisor|cont5\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(5),
	datab => \divisor|cont5\(6),
	datac => \divisor|cont5\(4),
	datad => \divisor|cont5\(3),
	combout => \divisor|LessThan3~1_combout\);

-- Location: LCCOMB_X8_Y17_N0
\divisor|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan3~2_combout\ = (!\divisor|LessThan3~0_combout\ & (\divisor|cont5\(7) & !\divisor|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|LessThan3~0_combout\,
	datac => \divisor|cont5\(7),
	datad => \divisor|LessThan3~1_combout\,
	combout => \divisor|LessThan3~2_combout\);

-- Location: FF_X8_Y17_N13
\divisor|cont5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[0]~8_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(0));

-- Location: LCCOMB_X8_Y17_N14
\divisor|cont5[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[1]~10_combout\ = (\divisor|cont5\(1) & (!\divisor|cont5[0]~9\)) # (!\divisor|cont5\(1) & ((\divisor|cont5[0]~9\) # (GND)))
-- \divisor|cont5[1]~11\ = CARRY((!\divisor|cont5[0]~9\) # (!\divisor|cont5\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont5\(1),
	datad => VCC,
	cin => \divisor|cont5[0]~9\,
	combout => \divisor|cont5[1]~10_combout\,
	cout => \divisor|cont5[1]~11\);

-- Location: FF_X8_Y17_N15
\divisor|cont5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[1]~10_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(1));

-- Location: LCCOMB_X8_Y17_N16
\divisor|cont5[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[2]~12_combout\ = (\divisor|cont5\(2) & (\divisor|cont5[1]~11\ $ (GND))) # (!\divisor|cont5\(2) & (!\divisor|cont5[1]~11\ & VCC))
-- \divisor|cont5[2]~13\ = CARRY((\divisor|cont5\(2) & !\divisor|cont5[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont5\(2),
	datad => VCC,
	cin => \divisor|cont5[1]~11\,
	combout => \divisor|cont5[2]~12_combout\,
	cout => \divisor|cont5[2]~13\);

-- Location: FF_X8_Y17_N17
\divisor|cont5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[2]~12_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(2));

-- Location: LCCOMB_X8_Y17_N18
\divisor|cont5[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[3]~14_combout\ = (\divisor|cont5\(3) & (!\divisor|cont5[2]~13\)) # (!\divisor|cont5\(3) & ((\divisor|cont5[2]~13\) # (GND)))
-- \divisor|cont5[3]~15\ = CARRY((!\divisor|cont5[2]~13\) # (!\divisor|cont5\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont5\(3),
	datad => VCC,
	cin => \divisor|cont5[2]~13\,
	combout => \divisor|cont5[3]~14_combout\,
	cout => \divisor|cont5[3]~15\);

-- Location: FF_X8_Y17_N19
\divisor|cont5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[3]~14_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(3));

-- Location: LCCOMB_X8_Y17_N20
\divisor|cont5[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[4]~16_combout\ = (\divisor|cont5\(4) & (\divisor|cont5[3]~15\ $ (GND))) # (!\divisor|cont5\(4) & (!\divisor|cont5[3]~15\ & VCC))
-- \divisor|cont5[4]~17\ = CARRY((\divisor|cont5\(4) & !\divisor|cont5[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont5\(4),
	datad => VCC,
	cin => \divisor|cont5[3]~15\,
	combout => \divisor|cont5[4]~16_combout\,
	cout => \divisor|cont5[4]~17\);

-- Location: FF_X8_Y17_N21
\divisor|cont5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[4]~16_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(4));

-- Location: LCCOMB_X8_Y17_N22
\divisor|cont5[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[5]~18_combout\ = (\divisor|cont5\(5) & (!\divisor|cont5[4]~17\)) # (!\divisor|cont5\(5) & ((\divisor|cont5[4]~17\) # (GND)))
-- \divisor|cont5[5]~19\ = CARRY((!\divisor|cont5[4]~17\) # (!\divisor|cont5\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(5),
	datad => VCC,
	cin => \divisor|cont5[4]~17\,
	combout => \divisor|cont5[5]~18_combout\,
	cout => \divisor|cont5[5]~19\);

-- Location: FF_X8_Y17_N23
\divisor|cont5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[5]~18_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(5));

-- Location: LCCOMB_X8_Y17_N24
\divisor|cont5[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[6]~20_combout\ = (\divisor|cont5\(6) & (\divisor|cont5[5]~19\ $ (GND))) # (!\divisor|cont5\(6) & (!\divisor|cont5[5]~19\ & VCC))
-- \divisor|cont5[6]~21\ = CARRY((\divisor|cont5\(6) & !\divisor|cont5[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont5\(6),
	datad => VCC,
	cin => \divisor|cont5[5]~19\,
	combout => \divisor|cont5[6]~20_combout\,
	cout => \divisor|cont5[6]~21\);

-- Location: FF_X8_Y17_N25
\divisor|cont5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[6]~20_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(6));

-- Location: LCCOMB_X8_Y17_N26
\divisor|cont5[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont5[7]~22_combout\ = \divisor|cont5\(7) $ (\divisor|cont5[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(7),
	cin => \divisor|cont5[6]~21\,
	combout => \divisor|cont5[7]~22_combout\);

-- Location: FF_X8_Y17_N27
\divisor|cont5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont5[7]~22_combout\,
	sclr => \divisor|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont5\(7));

-- Location: LCCOMB_X8_Y17_N4
\divisor|clk_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clk_5~0_combout\ = \divisor|clk_5~q\ $ (((\divisor|cont5\(7) & (!\divisor|LessThan3~0_combout\ & !\divisor|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont5\(7),
	datab => \divisor|LessThan3~0_combout\,
	datac => \divisor|clk_5~q\,
	datad => \divisor|LessThan3~1_combout\,
	combout => \divisor|clk_5~0_combout\);

-- Location: FF_X8_Y17_N5
\divisor|clk_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|clk_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clk_5~q\);

-- Location: LCCOMB_X5_Y17_N6
\divisor|cont4[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[0]~11_combout\ = \divisor|cont4\(0) $ (VCC)
-- \divisor|cont4[0]~12\ = CARRY(\divisor|cont4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(0),
	datad => VCC,
	combout => \divisor|cont4[0]~11_combout\,
	cout => \divisor|cont4[0]~12\);

-- Location: LCCOMB_X5_Y17_N10
\divisor|cont4[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[2]~15_combout\ = (\divisor|cont4\(2) & (\divisor|cont4[1]~14\ $ (GND))) # (!\divisor|cont4\(2) & (!\divisor|cont4[1]~14\ & VCC))
-- \divisor|cont4[2]~16\ = CARRY((\divisor|cont4\(2) & !\divisor|cont4[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(2),
	datad => VCC,
	cin => \divisor|cont4[1]~14\,
	combout => \divisor|cont4[2]~15_combout\,
	cout => \divisor|cont4[2]~16\);

-- Location: LCCOMB_X5_Y17_N12
\divisor|cont4[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[3]~17_combout\ = (\divisor|cont4\(3) & (!\divisor|cont4[2]~16\)) # (!\divisor|cont4\(3) & ((\divisor|cont4[2]~16\) # (GND)))
-- \divisor|cont4[3]~18\ = CARRY((!\divisor|cont4[2]~16\) # (!\divisor|cont4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(3),
	datad => VCC,
	cin => \divisor|cont4[2]~16\,
	combout => \divisor|cont4[3]~17_combout\,
	cout => \divisor|cont4[3]~18\);

-- Location: FF_X5_Y17_N13
\divisor|cont4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[3]~17_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(3));

-- Location: LCCOMB_X5_Y17_N14
\divisor|cont4[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[4]~19_combout\ = (\divisor|cont4\(4) & (\divisor|cont4[3]~18\ $ (GND))) # (!\divisor|cont4\(4) & (!\divisor|cont4[3]~18\ & VCC))
-- \divisor|cont4[4]~20\ = CARRY((\divisor|cont4\(4) & !\divisor|cont4[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(4),
	datad => VCC,
	cin => \divisor|cont4[3]~18\,
	combout => \divisor|cont4[4]~19_combout\,
	cout => \divisor|cont4[4]~20\);

-- Location: FF_X5_Y17_N15
\divisor|cont4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[4]~19_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(4));

-- Location: LCCOMB_X5_Y17_N16
\divisor|cont4[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[5]~21_combout\ = (\divisor|cont4\(5) & (!\divisor|cont4[4]~20\)) # (!\divisor|cont4\(5) & ((\divisor|cont4[4]~20\) # (GND)))
-- \divisor|cont4[5]~22\ = CARRY((!\divisor|cont4[4]~20\) # (!\divisor|cont4\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(5),
	datad => VCC,
	cin => \divisor|cont4[4]~20\,
	combout => \divisor|cont4[5]~21_combout\,
	cout => \divisor|cont4[5]~22\);

-- Location: FF_X5_Y17_N17
\divisor|cont4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[5]~21_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(5));

-- Location: LCCOMB_X5_Y17_N18
\divisor|cont4[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[6]~23_combout\ = (\divisor|cont4\(6) & (\divisor|cont4[5]~22\ $ (GND))) # (!\divisor|cont4\(6) & (!\divisor|cont4[5]~22\ & VCC))
-- \divisor|cont4[6]~24\ = CARRY((\divisor|cont4\(6) & !\divisor|cont4[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(6),
	datad => VCC,
	cin => \divisor|cont4[5]~22\,
	combout => \divisor|cont4[6]~23_combout\,
	cout => \divisor|cont4[6]~24\);

-- Location: FF_X5_Y17_N19
\divisor|cont4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[6]~23_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(6));

-- Location: LCCOMB_X5_Y17_N20
\divisor|cont4[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[7]~25_combout\ = (\divisor|cont4\(7) & (!\divisor|cont4[6]~24\)) # (!\divisor|cont4\(7) & ((\divisor|cont4[6]~24\) # (GND)))
-- \divisor|cont4[7]~26\ = CARRY((!\divisor|cont4[6]~24\) # (!\divisor|cont4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(7),
	datad => VCC,
	cin => \divisor|cont4[6]~24\,
	combout => \divisor|cont4[7]~25_combout\,
	cout => \divisor|cont4[7]~26\);

-- Location: FF_X5_Y17_N21
\divisor|cont4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[7]~25_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(7));

-- Location: LCCOMB_X5_Y17_N22
\divisor|cont4[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[8]~27_combout\ = (\divisor|cont4\(8) & (\divisor|cont4[7]~26\ $ (GND))) # (!\divisor|cont4\(8) & (!\divisor|cont4[7]~26\ & VCC))
-- \divisor|cont4[8]~28\ = CARRY((\divisor|cont4\(8) & !\divisor|cont4[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(8),
	datad => VCC,
	cin => \divisor|cont4[7]~26\,
	combout => \divisor|cont4[8]~27_combout\,
	cout => \divisor|cont4[8]~28\);

-- Location: FF_X5_Y17_N23
\divisor|cont4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[8]~27_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(8));

-- Location: LCCOMB_X5_Y17_N24
\divisor|cont4[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[9]~29_combout\ = (\divisor|cont4\(9) & (!\divisor|cont4[8]~28\)) # (!\divisor|cont4\(9) & ((\divisor|cont4[8]~28\) # (GND)))
-- \divisor|cont4[9]~30\ = CARRY((!\divisor|cont4[8]~28\) # (!\divisor|cont4\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(9),
	datad => VCC,
	cin => \divisor|cont4[8]~28\,
	combout => \divisor|cont4[9]~29_combout\,
	cout => \divisor|cont4[9]~30\);

-- Location: FF_X5_Y17_N25
\divisor|cont4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[9]~29_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(9));

-- Location: LCCOMB_X5_Y17_N26
\divisor|cont4[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[10]~31_combout\ = \divisor|cont4\(10) $ (!\divisor|cont4[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(10),
	cin => \divisor|cont4[9]~30\,
	combout => \divisor|cont4[10]~31_combout\);

-- Location: FF_X5_Y17_N27
\divisor|cont4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[10]~31_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(10));

-- Location: LCCOMB_X5_Y17_N0
\divisor|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan2~2_combout\ = ((!\divisor|cont4\(8) & !\divisor|cont4\(9))) # (!\divisor|cont4\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(8),
	datac => \divisor|cont4\(10),
	datad => \divisor|cont4\(9),
	combout => \divisor|LessThan2~2_combout\);

-- Location: LCCOMB_X5_Y17_N28
\divisor|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan2~1_combout\ = (!\divisor|cont4\(5) & (!\divisor|cont4\(6) & (!\divisor|cont4\(9) & !\divisor|cont4\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(5),
	datab => \divisor|cont4\(6),
	datac => \divisor|cont4\(9),
	datad => \divisor|cont4\(7),
	combout => \divisor|LessThan2~1_combout\);

-- Location: LCCOMB_X5_Y17_N2
\divisor|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan2~3_combout\ = (!\divisor|LessThan2~2_combout\ & ((!\divisor|LessThan2~1_combout\) # (!\divisor|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|LessThan2~2_combout\,
	datac => \divisor|LessThan2~0_combout\,
	datad => \divisor|LessThan2~1_combout\,
	combout => \divisor|LessThan2~3_combout\);

-- Location: FF_X5_Y17_N7
\divisor|cont4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[0]~11_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(0));

-- Location: LCCOMB_X5_Y17_N8
\divisor|cont4[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont4[1]~13_combout\ = (\divisor|cont4\(1) & (!\divisor|cont4[0]~12\)) # (!\divisor|cont4\(1) & ((\divisor|cont4[0]~12\) # (GND)))
-- \divisor|cont4[1]~14\ = CARRY((!\divisor|cont4[0]~12\) # (!\divisor|cont4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont4\(1),
	datad => VCC,
	cin => \divisor|cont4[0]~12\,
	combout => \divisor|cont4[1]~13_combout\,
	cout => \divisor|cont4[1]~14\);

-- Location: FF_X5_Y17_N9
\divisor|cont4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[1]~13_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(1));

-- Location: FF_X5_Y17_N11
\divisor|cont4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont4[2]~15_combout\,
	sclr => \divisor|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont4\(2));

-- Location: LCCOMB_X5_Y17_N30
\divisor|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan2~0_combout\ = ((!\divisor|cont4\(3) & ((!\divisor|cont4\(1)) # (!\divisor|cont4\(2))))) # (!\divisor|cont4\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont4\(2),
	datab => \divisor|cont4\(1),
	datac => \divisor|cont4\(4),
	datad => \divisor|cont4\(3),
	combout => \divisor|LessThan2~0_combout\);

-- Location: LCCOMB_X5_Y17_N4
\divisor|clk_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clk_4~0_combout\ = \divisor|clk_4~q\ $ (((!\divisor|LessThan2~2_combout\ & ((!\divisor|LessThan2~1_combout\) # (!\divisor|LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan2~0_combout\,
	datab => \divisor|LessThan2~1_combout\,
	datac => \divisor|clk_4~q\,
	datad => \divisor|LessThan2~2_combout\,
	combout => \divisor|clk_4~0_combout\);

-- Location: FF_X5_Y17_N5
\divisor|clk_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|clk_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clk_4~q\);

-- Location: LCCOMB_X9_Y17_N2
\divisor|cont2[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[0]~12_combout\ = \divisor|cont2\(0) $ (VCC)
-- \divisor|cont2[0]~13\ = CARRY(\divisor|cont2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(0),
	datad => VCC,
	combout => \divisor|cont2[0]~12_combout\,
	cout => \divisor|cont2[0]~13\);

-- Location: LCCOMB_X9_Y17_N22
\divisor|cont2[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[10]~32_combout\ = (\divisor|cont2\(10) & (\divisor|cont2[9]~31\ $ (GND))) # (!\divisor|cont2\(10) & (!\divisor|cont2[9]~31\ & VCC))
-- \divisor|cont2[10]~33\ = CARRY((\divisor|cont2\(10) & !\divisor|cont2[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(10),
	datad => VCC,
	cin => \divisor|cont2[9]~31\,
	combout => \divisor|cont2[10]~32_combout\,
	cout => \divisor|cont2[10]~33\);

-- Location: LCCOMB_X9_Y17_N24
\divisor|cont2[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[11]~34_combout\ = \divisor|cont2[10]~33\ $ (\divisor|cont2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor|cont2\(11),
	cin => \divisor|cont2[10]~33\,
	combout => \divisor|cont2[11]~34_combout\);

-- Location: FF_X9_Y17_N25
\divisor|cont2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[11]~34_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(11));

-- Location: LCCOMB_X9_Y17_N0
\divisor|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~2_combout\ = ((!\divisor|cont2\(9) & !\divisor|cont2\(10))) # (!\divisor|cont2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(9),
	datac => \divisor|cont2\(10),
	datad => \divisor|cont2\(11),
	combout => \divisor|LessThan1~2_combout\);

-- Location: LCCOMB_X9_Y17_N28
\divisor|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~0_combout\ = ((!\divisor|cont2\(4) & ((!\divisor|cont2\(3)) # (!\divisor|cont2\(2))))) # (!\divisor|cont2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(2),
	datab => \divisor|cont2\(5),
	datac => \divisor|cont2\(3),
	datad => \divisor|cont2\(4),
	combout => \divisor|LessThan1~0_combout\);

-- Location: LCCOMB_X9_Y17_N30
\divisor|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~3_combout\ = (!\divisor|LessThan1~2_combout\ & ((!\divisor|LessThan1~0_combout\) # (!\divisor|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|LessThan1~2_combout\,
	datac => \divisor|LessThan1~1_combout\,
	datad => \divisor|LessThan1~0_combout\,
	combout => \divisor|LessThan1~3_combout\);

-- Location: FF_X9_Y17_N3
\divisor|cont2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[0]~12_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(0));

-- Location: LCCOMB_X9_Y17_N4
\divisor|cont2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[1]~14_combout\ = (\divisor|cont2\(1) & (!\divisor|cont2[0]~13\)) # (!\divisor|cont2\(1) & ((\divisor|cont2[0]~13\) # (GND)))
-- \divisor|cont2[1]~15\ = CARRY((!\divisor|cont2[0]~13\) # (!\divisor|cont2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(1),
	datad => VCC,
	cin => \divisor|cont2[0]~13\,
	combout => \divisor|cont2[1]~14_combout\,
	cout => \divisor|cont2[1]~15\);

-- Location: FF_X9_Y17_N5
\divisor|cont2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[1]~14_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(1));

-- Location: LCCOMB_X9_Y17_N6
\divisor|cont2[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[2]~16_combout\ = (\divisor|cont2\(2) & (\divisor|cont2[1]~15\ $ (GND))) # (!\divisor|cont2\(2) & (!\divisor|cont2[1]~15\ & VCC))
-- \divisor|cont2[2]~17\ = CARRY((\divisor|cont2\(2) & !\divisor|cont2[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(2),
	datad => VCC,
	cin => \divisor|cont2[1]~15\,
	combout => \divisor|cont2[2]~16_combout\,
	cout => \divisor|cont2[2]~17\);

-- Location: FF_X9_Y17_N7
\divisor|cont2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[2]~16_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(2));

-- Location: LCCOMB_X9_Y17_N8
\divisor|cont2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[3]~18_combout\ = (\divisor|cont2\(3) & (!\divisor|cont2[2]~17\)) # (!\divisor|cont2\(3) & ((\divisor|cont2[2]~17\) # (GND)))
-- \divisor|cont2[3]~19\ = CARRY((!\divisor|cont2[2]~17\) # (!\divisor|cont2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(3),
	datad => VCC,
	cin => \divisor|cont2[2]~17\,
	combout => \divisor|cont2[3]~18_combout\,
	cout => \divisor|cont2[3]~19\);

-- Location: FF_X9_Y17_N9
\divisor|cont2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[3]~18_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(3));

-- Location: LCCOMB_X9_Y17_N10
\divisor|cont2[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[4]~20_combout\ = (\divisor|cont2\(4) & (\divisor|cont2[3]~19\ $ (GND))) # (!\divisor|cont2\(4) & (!\divisor|cont2[3]~19\ & VCC))
-- \divisor|cont2[4]~21\ = CARRY((\divisor|cont2\(4) & !\divisor|cont2[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(4),
	datad => VCC,
	cin => \divisor|cont2[3]~19\,
	combout => \divisor|cont2[4]~20_combout\,
	cout => \divisor|cont2[4]~21\);

-- Location: FF_X9_Y17_N11
\divisor|cont2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[4]~20_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(4));

-- Location: LCCOMB_X9_Y17_N12
\divisor|cont2[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[5]~22_combout\ = (\divisor|cont2\(5) & (!\divisor|cont2[4]~21\)) # (!\divisor|cont2\(5) & ((\divisor|cont2[4]~21\) # (GND)))
-- \divisor|cont2[5]~23\ = CARRY((!\divisor|cont2[4]~21\) # (!\divisor|cont2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(5),
	datad => VCC,
	cin => \divisor|cont2[4]~21\,
	combout => \divisor|cont2[5]~22_combout\,
	cout => \divisor|cont2[5]~23\);

-- Location: FF_X9_Y17_N13
\divisor|cont2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[5]~22_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(5));

-- Location: LCCOMB_X9_Y17_N14
\divisor|cont2[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[6]~24_combout\ = (\divisor|cont2\(6) & (\divisor|cont2[5]~23\ $ (GND))) # (!\divisor|cont2\(6) & (!\divisor|cont2[5]~23\ & VCC))
-- \divisor|cont2[6]~25\ = CARRY((\divisor|cont2\(6) & !\divisor|cont2[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(6),
	datad => VCC,
	cin => \divisor|cont2[5]~23\,
	combout => \divisor|cont2[6]~24_combout\,
	cout => \divisor|cont2[6]~25\);

-- Location: FF_X9_Y17_N15
\divisor|cont2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[6]~24_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(6));

-- Location: LCCOMB_X9_Y17_N16
\divisor|cont2[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[7]~26_combout\ = (\divisor|cont2\(7) & (!\divisor|cont2[6]~25\)) # (!\divisor|cont2\(7) & ((\divisor|cont2[6]~25\) # (GND)))
-- \divisor|cont2[7]~27\ = CARRY((!\divisor|cont2[6]~25\) # (!\divisor|cont2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(7),
	datad => VCC,
	cin => \divisor|cont2[6]~25\,
	combout => \divisor|cont2[7]~26_combout\,
	cout => \divisor|cont2[7]~27\);

-- Location: FF_X9_Y17_N17
\divisor|cont2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[7]~26_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(7));

-- Location: LCCOMB_X9_Y17_N18
\divisor|cont2[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[8]~28_combout\ = (\divisor|cont2\(8) & (\divisor|cont2[7]~27\ $ (GND))) # (!\divisor|cont2\(8) & (!\divisor|cont2[7]~27\ & VCC))
-- \divisor|cont2[8]~29\ = CARRY((\divisor|cont2\(8) & !\divisor|cont2[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(8),
	datad => VCC,
	cin => \divisor|cont2[7]~27\,
	combout => \divisor|cont2[8]~28_combout\,
	cout => \divisor|cont2[8]~29\);

-- Location: FF_X9_Y17_N19
\divisor|cont2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[8]~28_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(8));

-- Location: LCCOMB_X9_Y17_N20
\divisor|cont2[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont2[9]~30_combout\ = (\divisor|cont2\(9) & (!\divisor|cont2[8]~29\)) # (!\divisor|cont2\(9) & ((\divisor|cont2[8]~29\) # (GND)))
-- \divisor|cont2[9]~31\ = CARRY((!\divisor|cont2[8]~29\) # (!\divisor|cont2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont2\(9),
	datad => VCC,
	cin => \divisor|cont2[8]~29\,
	combout => \divisor|cont2[9]~30_combout\,
	cout => \divisor|cont2[9]~31\);

-- Location: FF_X9_Y17_N21
\divisor|cont2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[9]~30_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(9));

-- Location: FF_X9_Y17_N23
\divisor|cont2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont2[10]~32_combout\,
	sclr => \divisor|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont2\(10));

-- Location: LCCOMB_X9_Y17_N26
\divisor|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~1_combout\ = (!\divisor|cont2\(10) & (!\divisor|cont2\(8) & (!\divisor|cont2\(6) & !\divisor|cont2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont2\(10),
	datab => \divisor|cont2\(8),
	datac => \divisor|cont2\(6),
	datad => \divisor|cont2\(7),
	combout => \divisor|LessThan1~1_combout\);

-- Location: LCCOMB_X8_Y17_N8
\divisor|clk_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clk_2~0_combout\ = \divisor|clk_2~q\ $ (((!\divisor|LessThan1~2_combout\ & ((!\divisor|LessThan1~0_combout\) # (!\divisor|LessThan1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan1~1_combout\,
	datab => \divisor|LessThan1~2_combout\,
	datac => \divisor|clk_2~q\,
	datad => \divisor|LessThan1~0_combout\,
	combout => \divisor|clk_2~0_combout\);

-- Location: FF_X8_Y17_N9
\divisor|clk_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|clk_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clk_2~q\);

-- Location: LCCOMB_X7_Y17_N4
\divisor|cont1[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[0]~13_combout\ = \divisor|cont1\(0) $ (VCC)
-- \divisor|cont1[0]~14\ = CARRY(\divisor|cont1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(0),
	datad => VCC,
	combout => \divisor|cont1[0]~13_combout\,
	cout => \divisor|cont1[0]~14\);

-- Location: LCCOMB_X7_Y17_N24
\divisor|cont1[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[10]~33_combout\ = (\divisor|cont1\(10) & (\divisor|cont1[9]~32\ $ (GND))) # (!\divisor|cont1\(10) & (!\divisor|cont1[9]~32\ & VCC))
-- \divisor|cont1[10]~34\ = CARRY((\divisor|cont1\(10) & !\divisor|cont1[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(10),
	datad => VCC,
	cin => \divisor|cont1[9]~32\,
	combout => \divisor|cont1[10]~33_combout\,
	cout => \divisor|cont1[10]~34\);

-- Location: LCCOMB_X7_Y17_N26
\divisor|cont1[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[11]~35_combout\ = (\divisor|cont1\(11) & (!\divisor|cont1[10]~34\)) # (!\divisor|cont1\(11) & ((\divisor|cont1[10]~34\) # (GND)))
-- \divisor|cont1[11]~36\ = CARRY((!\divisor|cont1[10]~34\) # (!\divisor|cont1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(11),
	datad => VCC,
	cin => \divisor|cont1[10]~34\,
	combout => \divisor|cont1[11]~35_combout\,
	cout => \divisor|cont1[11]~36\);

-- Location: FF_X7_Y17_N27
\divisor|cont1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[11]~35_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(11));

-- Location: LCCOMB_X7_Y17_N30
\divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~1_combout\ = (!\divisor|cont1\(9) & (!\divisor|cont1\(7) & (!\divisor|cont1\(11) & !\divisor|cont1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(9),
	datab => \divisor|cont1\(7),
	datac => \divisor|cont1\(11),
	datad => \divisor|cont1\(8),
	combout => \divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y17_N0
\divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~0_combout\ = ((!\divisor|cont1\(5) & ((!\divisor|cont1\(3)) # (!\divisor|cont1\(4))))) # (!\divisor|cont1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(4),
	datab => \divisor|cont1\(6),
	datac => \divisor|cont1\(5),
	datad => \divisor|cont1\(3),
	combout => \divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y17_N6
\divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~3_combout\ = (!\divisor|LessThan0~2_combout\ & ((!\divisor|LessThan0~0_combout\) # (!\divisor|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~1_combout\,
	datac => \divisor|LessThan0~0_combout\,
	datad => \divisor|LessThan0~2_combout\,
	combout => \divisor|LessThan0~3_combout\);

-- Location: FF_X7_Y17_N5
\divisor|cont1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[0]~13_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(0));

-- Location: LCCOMB_X7_Y17_N6
\divisor|cont1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[1]~15_combout\ = (\divisor|cont1\(1) & (!\divisor|cont1[0]~14\)) # (!\divisor|cont1\(1) & ((\divisor|cont1[0]~14\) # (GND)))
-- \divisor|cont1[1]~16\ = CARRY((!\divisor|cont1[0]~14\) # (!\divisor|cont1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(1),
	datad => VCC,
	cin => \divisor|cont1[0]~14\,
	combout => \divisor|cont1[1]~15_combout\,
	cout => \divisor|cont1[1]~16\);

-- Location: FF_X7_Y17_N7
\divisor|cont1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[1]~15_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(1));

-- Location: LCCOMB_X7_Y17_N8
\divisor|cont1[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[2]~17_combout\ = (\divisor|cont1\(2) & (\divisor|cont1[1]~16\ $ (GND))) # (!\divisor|cont1\(2) & (!\divisor|cont1[1]~16\ & VCC))
-- \divisor|cont1[2]~18\ = CARRY((\divisor|cont1\(2) & !\divisor|cont1[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(2),
	datad => VCC,
	cin => \divisor|cont1[1]~16\,
	combout => \divisor|cont1[2]~17_combout\,
	cout => \divisor|cont1[2]~18\);

-- Location: FF_X7_Y17_N9
\divisor|cont1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[2]~17_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(2));

-- Location: LCCOMB_X7_Y17_N10
\divisor|cont1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[3]~19_combout\ = (\divisor|cont1\(3) & (!\divisor|cont1[2]~18\)) # (!\divisor|cont1\(3) & ((\divisor|cont1[2]~18\) # (GND)))
-- \divisor|cont1[3]~20\ = CARRY((!\divisor|cont1[2]~18\) # (!\divisor|cont1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(3),
	datad => VCC,
	cin => \divisor|cont1[2]~18\,
	combout => \divisor|cont1[3]~19_combout\,
	cout => \divisor|cont1[3]~20\);

-- Location: FF_X7_Y17_N11
\divisor|cont1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[3]~19_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(3));

-- Location: LCCOMB_X7_Y17_N12
\divisor|cont1[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[4]~21_combout\ = (\divisor|cont1\(4) & (\divisor|cont1[3]~20\ $ (GND))) # (!\divisor|cont1\(4) & (!\divisor|cont1[3]~20\ & VCC))
-- \divisor|cont1[4]~22\ = CARRY((\divisor|cont1\(4) & !\divisor|cont1[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(4),
	datad => VCC,
	cin => \divisor|cont1[3]~20\,
	combout => \divisor|cont1[4]~21_combout\,
	cout => \divisor|cont1[4]~22\);

-- Location: FF_X7_Y17_N13
\divisor|cont1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[4]~21_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(4));

-- Location: LCCOMB_X7_Y17_N14
\divisor|cont1[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[5]~23_combout\ = (\divisor|cont1\(5) & (!\divisor|cont1[4]~22\)) # (!\divisor|cont1\(5) & ((\divisor|cont1[4]~22\) # (GND)))
-- \divisor|cont1[5]~24\ = CARRY((!\divisor|cont1[4]~22\) # (!\divisor|cont1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(5),
	datad => VCC,
	cin => \divisor|cont1[4]~22\,
	combout => \divisor|cont1[5]~23_combout\,
	cout => \divisor|cont1[5]~24\);

-- Location: FF_X7_Y17_N15
\divisor|cont1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[5]~23_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(5));

-- Location: LCCOMB_X7_Y17_N16
\divisor|cont1[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[6]~25_combout\ = (\divisor|cont1\(6) & (\divisor|cont1[5]~24\ $ (GND))) # (!\divisor|cont1\(6) & (!\divisor|cont1[5]~24\ & VCC))
-- \divisor|cont1[6]~26\ = CARRY((\divisor|cont1\(6) & !\divisor|cont1[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(6),
	datad => VCC,
	cin => \divisor|cont1[5]~24\,
	combout => \divisor|cont1[6]~25_combout\,
	cout => \divisor|cont1[6]~26\);

-- Location: FF_X7_Y17_N17
\divisor|cont1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[6]~25_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(6));

-- Location: LCCOMB_X7_Y17_N18
\divisor|cont1[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[7]~27_combout\ = (\divisor|cont1\(7) & (!\divisor|cont1[6]~26\)) # (!\divisor|cont1\(7) & ((\divisor|cont1[6]~26\) # (GND)))
-- \divisor|cont1[7]~28\ = CARRY((!\divisor|cont1[6]~26\) # (!\divisor|cont1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(7),
	datad => VCC,
	cin => \divisor|cont1[6]~26\,
	combout => \divisor|cont1[7]~27_combout\,
	cout => \divisor|cont1[7]~28\);

-- Location: FF_X7_Y17_N19
\divisor|cont1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[7]~27_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(7));

-- Location: LCCOMB_X7_Y17_N20
\divisor|cont1[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[8]~29_combout\ = (\divisor|cont1\(8) & (\divisor|cont1[7]~28\ $ (GND))) # (!\divisor|cont1\(8) & (!\divisor|cont1[7]~28\ & VCC))
-- \divisor|cont1[8]~30\ = CARRY((\divisor|cont1\(8) & !\divisor|cont1[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(8),
	datad => VCC,
	cin => \divisor|cont1[7]~28\,
	combout => \divisor|cont1[8]~29_combout\,
	cout => \divisor|cont1[8]~30\);

-- Location: FF_X7_Y17_N21
\divisor|cont1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[8]~29_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(8));

-- Location: LCCOMB_X7_Y17_N22
\divisor|cont1[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[9]~31_combout\ = (\divisor|cont1\(9) & (!\divisor|cont1[8]~30\)) # (!\divisor|cont1\(9) & ((\divisor|cont1[8]~30\) # (GND)))
-- \divisor|cont1[9]~32\ = CARRY((!\divisor|cont1[8]~30\) # (!\divisor|cont1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|cont1\(9),
	datad => VCC,
	cin => \divisor|cont1[8]~30\,
	combout => \divisor|cont1[9]~31_combout\,
	cout => \divisor|cont1[9]~32\);

-- Location: FF_X7_Y17_N23
\divisor|cont1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[9]~31_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(9));

-- Location: FF_X7_Y17_N25
\divisor|cont1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[10]~33_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(10));

-- Location: LCCOMB_X7_Y17_N28
\divisor|cont1[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|cont1[12]~37_combout\ = \divisor|cont1[11]~36\ $ (!\divisor|cont1\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor|cont1\(12),
	cin => \divisor|cont1[11]~36\,
	combout => \divisor|cont1[12]~37_combout\);

-- Location: FF_X7_Y17_N29
\divisor|cont1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|cont1[12]~37_combout\,
	sclr => \divisor|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|cont1\(12));

-- Location: LCCOMB_X7_Y17_N2
\divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~2_combout\ = ((!\divisor|cont1\(10) & !\divisor|cont1\(11))) # (!\divisor|cont1\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|cont1\(10),
	datac => \divisor|cont1\(11),
	datad => \divisor|cont1\(12),
	combout => \divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y17_N24
\divisor|clk_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clk_1~0_combout\ = \divisor|clk_1~q\ $ (((!\divisor|LessThan0~2_combout\ & ((!\divisor|LessThan0~1_combout\) # (!\divisor|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~2_combout\,
	datab => \divisor|LessThan0~0_combout\,
	datac => \divisor|clk_1~q\,
	datad => \divisor|LessThan0~1_combout\,
	combout => \divisor|clk_1~0_combout\);

-- Location: FF_X6_Y17_N25
\divisor|clk_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \divisor|clk_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clk_1~q\);

-- Location: IOIBUF_X9_Y24_N8
\async_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_async_in(0),
	o => \async_in[0]~input_o\);

-- Location: LCCOMB_X8_Y17_N30
\seleccionador|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seleccionador|Mux0~0_combout\ = (\async_in[1]~input_o\ & (((\async_in[0]~input_o\)))) # (!\async_in[1]~input_o\ & ((\async_in[0]~input_o\ & (\divisor|clk_2~q\)) # (!\async_in[0]~input_o\ & ((\divisor|clk_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \async_in[1]~input_o\,
	datab => \divisor|clk_2~q\,
	datac => \divisor|clk_1~q\,
	datad => \async_in[0]~input_o\,
	combout => \seleccionador|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y17_N10
\seleccionador|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seleccionador|Mux0~1_combout\ = (\async_in[1]~input_o\ & ((\seleccionador|Mux0~0_combout\ & (\divisor|clk_5~q\)) # (!\seleccionador|Mux0~0_combout\ & ((\divisor|clk_4~q\))))) # (!\async_in[1]~input_o\ & (((\seleccionador|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \async_in[1]~input_o\,
	datab => \divisor|clk_5~q\,
	datac => \divisor|clk_4~q\,
	datad => \seleccionador|Mux0~0_combout\,
	combout => \seleccionador|Mux0~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\reset_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_d,
	o => \reset_d~input_o\);

ww_salida <= \salida~output_o\;
END structure;


