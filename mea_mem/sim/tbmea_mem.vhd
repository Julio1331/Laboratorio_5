library ieee;
use ieee.std_logic_1164.all;

entity tbmea_mem is
end tbmea_mem;

architecture bh of tbmea_mem is

	signal tbsend_us: std_logic;
	signal tbend_transmission: std_logic;
	signal tbend_trama: std_logic;
	signal tbadd_0: std_logic_vector(7 downto 0);
	signal tbsend_int:std_logic; 
	signal tbadd_out: std_logic_vector(7 downto 0);
	signal tbclk: std_logic;
	signal tbreset: std_logic;
	
	component mea_mem is
		port(
			send_us: in std_logic;--send dado por el usuario
			end_transmission: in std_logic;
			end_trama: in std_logic;
			add_0: in std_logic_vector(7 downto 0);--direccion puntero de cada msj
			send_int: out std_logic;--send interno entre las maquinas
			add_out: out std_logic_vector(7 downto 0);--direccion de salida a la memoria
			clk: in std_logic;
			reset: in std_logic
			);
	end component;
	
begin
	dut: mea_mem port map(
									send_us => tbsend_us,
									end_transmission => tbend_transmission,
									end_trama => tbend_trama,
									add_0 => tbadd_0,
									send_int => tbsend_int,
									add_out => tbadd_out,
									clk => tbclk,
									reset => tbreset
									);
	gen_clk: process
	begin
		tbclk <= '1';
		wait for 4.73 us;
		tbclk <= '0';
		wait for 4.73 us;
	end process gen_clk;
	
	rst: process
	begin	
		tbreset <= '0';
		wait for 1 us;
		tbreset <= '1';
		wait for 900 us;
	end process rst;	
	
	add_gen: process 
	begin	
		tbadd_0 <= "00000000";
		wait for 200 us;
		tbadd_0 <= "00001111";
		wait for 200 us;
	end process add_gen;
	
									


	send_gend: process
	begin	 
		tbsend_us <= '1';
		wait for 100 us;
		tbsend_us <= '0';
		wait for 200 us;
	end process send_gend;
	fin_trama: process
	begin	
		tbend_trama <= '0';
		wait for 40 us;
		tbend_trama <= '1';
		wait for 10 us;
	end process fin_trama;
	
	fin_transm: process
	begin
		tbend_transmission <= '0';
		wait for 100 us;
		tbend_transmission <= '1';
		wait for 20 us;
	end process fin_transm;
end architecture;
	