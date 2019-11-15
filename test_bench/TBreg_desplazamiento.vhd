library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TBreg_desplazamiento is
end TBreg_desplazamiento;

architecture bh of TBreg_desplazamiento is

	
	signal tbd_in: std_logic_vector (10 downto 0);
	signal tbclk: std_logic;
	signal tbload: std_logic;
	signal tbreset_d: std_logic;
	signal tbs_in: std_logic;
	signal tbserial_out: std_logic;
	signal tbones: std_logic;
	
	signal cont: std_logic_vector(7 downto 0):= "00000000";
	
	component reg_desplazamiento
		port(
			d_in : in std_logic_vector (10 downto 0);
			clk : in std_logic;
			load : in std_logic;
			reset_d : in std_logic;
			s_in : in std_logic;
			serial_out : out std_logic;
			ones : out std_logic
			);
	end component;
begin
		dut: reg_desplazamiento port map(
													d_in => tbd_in,
													clk => tbclk,
													load => tbload,
													reset_d => tbreset_d,
													s_in => tbs_in,
													serial_out => tbserial_out,
													ones => tbones
													);
	gen_clk: process 
		begin	
			tbclk <= '1';
			wait for 4.735 us;
			tbclk <= '0';
			wait for 4.735 us;
	end process gen_clk;
	
	data_in: process
		begin	
			-- trama: start dato paridad_par stop (11bits) 
--			tbd_in <= "10101010111";
			tbd_in(10) <= '0';
			tbd_in(9 downto 2) <= cont;
			tbd_in(1) <= cont(0) xor cont(1) xor cont(2) xor cont(3) xor cont(4) xor cont(5) xor cont(6) xor cont(7);    
			tbd_in(0) <= '1';
			--	tbd_in <= cont;
			wait for 500 us;
			cont <= cont+1;

	end process data_in;
	
	ser_in: process 
		begin 
			tbs_in <= '1';
			wait for 500 us;
			tbs_in <= '1';
			wait for 500 us;
	end process ser_in;
	
	load_in: process
		begin	
			tbload <= '1';
			wait for 30 us;
			tbload <= '0';
			wait for 200 us;
	end process load_in;
	
	reset_in: process 
		begin	
			tbreset_d <= '1';
			wait for 10 ms;
			tbreset_d <= '0';
			wait for 20 us;
	end process reset_in;
end architecture;
	











