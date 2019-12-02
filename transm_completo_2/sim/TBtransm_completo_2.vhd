library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBtransm_completo_2 is 
end TBtransm_completo_2;

architecture bh of TBtransm_completo_2 is
	
	signal tbenviar: std_logic;
	signal tbselect_msj: std_logic_vector(1 downto 0);
	signal tbselect_vel: std_logic_vector(1 downto 0);
	signal tbsalida_serie: std_logic ;
	signal tbreset: std_logic;
	signal tbclk: std_logic;
	signal tbaux_out_clk_int: std_logic := '0';
	signal cont: std_logic_vector(4 downto 0):= "11110";
	
	component transmisor is
			port (
			--******************** entrada de prueba
			aux_out_clk_int: out std_logic;
			--********************+
					select_msj: in std_logic_vector(1 downto 0);
					select_vel: in std_logic_vector(1 downto 0);
					enviar: in std_logic;
					salida_serie: out std_logic;
					reset: in std_logic;
					clk_50Mhz: in std_logic
					);
	end component;

begin
	dut: transmisor port map(
										aux_out_clk_int => tbaux_out_clk_int,
										enviar => tbenviar,
										select_msj => tbselect_msj,
										select_vel => tbselect_vel,
										salida_serie => tbsalida_serie,
										reset => tbreset,
										clk_50Mhz => tbclk
										);
	select_gener: process
	begin
--		tbselect_baud <= "00";
--		tbselect_msj <= "00";
--		tbenviar <= '0';
--		wait for 10 ms;
--		tbenviar <= '1';
--		wait for 20 ms;
		
		tbselect_vel <= cont (4 downto 3);
		tbselect_msj <= cont (2 downto 1);
		tbenviar <= cont(0);
		wait for 10 ms;
		cont <= cont + '1';
	end process select_gener;
	
--	pulsos_envio: process
--	begin
--		tbenviar <= '0';
--		wait for 
		
	clk_gener: process 
	begin
		tbclk <= '0';
		wait for 10 ns;
		tbclk <= '1';
		wait for 10 ns;
	end process clk_gener;
	
	reset_genr: process 
	begin
		tbreset <= '0';
		wait for 20 ms;
		tbreset <= '1';
		wait for 20000 ms;
	end process reset_genr;
end architecture;
	