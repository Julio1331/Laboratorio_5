library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBtrama_y_reg is
end TBtrama_y_reg;

architecture bh of TBtrama_y_reg is

	signal tbsend: std_logic;
	signal tbrst: std_logic;
	signal tbdatos: std_logic_vector( 7 downto 0);
	signal tbsal_serie: std_logic;
	signal tbend_transmission: std_logic;
	signal tbend_trama: std_logic;
	signal tbclk: std_logic;
	signal cont: std_logic_vector(8 downto 0):= "000000000";
	
	component trama_y_reg is
			port(
					send: in std_logic;
					rst: in std_logic;
					datos: in std_logic_vector(7 downto 0);
					sal_serie: out std_logic;
					end_of_transmission: out std_logic;
					end_of_trama: out std_logic;
					clk: in std_logic
					);
	end component;
	
begin 

	dut: trama_y_reg port map(
										send => tbsend,
										rst => tbrst,
										datos => tbdatos,
										sal_serie => tbsal_serie,
										end_of_transmission => tbend_transmission,
										end_of_trama => tbend_trama,
										clk => tbclk
										);
send_datos_gen: process
	begin
		tbdatos <= cont (8 downto 1);
		tbsend <= cont (0);
		wait for 200 ms;
		cont <= cont + '1';
	end process send_datos_gen;
	
	clk_gener: process 
	begin
		tbclk <= '0';
		wait for 4.3 ms;
		tbclk <= '1';
		wait for 4.3 ms;
	end process clk_gener;
	
	reset_genr: process 
	begin
		tbrst <= '0';
		wait for 10 ms;
		tbrst <= '1';
		wait for 5000 ms;
	end process reset_genr;
end architecture;
										