library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TBmef_registro is
end TBMef_registro;

architecture bh of TBMef_registro is
	
	signal tbsnd: std_logic;
	signal tbreset: std_logic;
	signal tbclk: std_logic;
	signal tbdata_in: std_logic_vector (10 downto 0);
	signal tbserial_in: std_logic;
	signal tbserial_out: std_logic;
	signal cont: std_logic_vector(7 downto 0):= "00000000";
	
	component mef_registro 
			port(
			snd : in std_logic;-- señal de comienzo de transmision 
			reset : in std_logic;
			clk : in std_logic;
			data_in : in std_logic_vector (10 downto 0);--asignada
			serial_in : in std_logic;
			serial_out : out std_logic
			);
	end component;
begin	
	dut: mef_registro port map(
										snd => tbsnd,
										reset => tbreset,
										clk => tbclk,
										data_in => tbdata_in,
										serial_in => tbserial_in,
										serial_out => tbserial_out
										);
										
	clk_gen: process
		begin	
			tbclk <= '1';
			wait for 4.735 us;
			tbclk <= '0';
			wait for 4.735 us;
	end process clk_gen;
	
	rst_gen: process
		begin
		tbreset <= '0';
		wait for 10 us;
		tbreset <= '1';
		wait for 800 ms;
	end process rst_gen;
	
	send_gen: process
		begin	
		tbsnd <= '0';
		wait for 210 us;
		--wait for 150 us;
		tbsnd <= '1';
		wait for 210 us;
		--wait for 30 us;
	end process send_gen;
	
	
	data_gen: process
		begin	
			-- trama: start dato paridad_par stop (11bits) 
			tbdata_in(10) <= '0';
			tbdata_in(9 downto 2) <= cont;
			tbdata_in(1) <= cont(0) xor cont(1) xor cont(2) xor cont(3) xor cont(4) xor cont(5) xor cont(6) xor cont(7);    
			tbdata_in(0) <= '1';
			wait for 300 us;
			cont <= cont+1;
	end process data_gen;
	
	ser_in_gen: process
		begin
		tbserial_in <= '1';
		wait for 10 us;
		tbserial_in <= '1';
		wait for 10 us;
	end process ser_in_gen;
end architecture;
	