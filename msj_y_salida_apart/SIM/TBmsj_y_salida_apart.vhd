library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBmsj_y_salida_apart is 
end TBmsj_y_salida_apart;

architecture bh of TBmsj_y_salida_apart is
	
	signal tbenviar: std_logic;
	signal tbselect_msj: std_logic_vector(1 downto 0);
	signal tbselect_vel: std_logic_vector(1 downto 0);
	signal tbsalida_serie: std_logic ;
	signal tbreset: std_logic;
	signal tbclk: std_logic;
	--signal tbaux_out_clk_int: std_logic := '0';
	signal cont: std_logic_vector(4 downto 0):= "11110";
	
	component msj_y_salida_apart is
			port(	
			enviar: in std_logic;
			select_msj: in std_logic_vector(1 downto 0);
			select_vel: in std_logic_vector(1 downto 0);
			clk: in std_logic;
			reset: in std_logic;
			salida_serie: out std_logic	
			);
	end component;

begin
	dut: msj_y_salida_apart port map(
										--aux_out_clk_int => tbaux_out_clk_int,
										enviar => tbenviar,
										select_msj => tbselect_msj,
										select_vel => tbselect_vel,
										salida_serie => tbsalida_serie,
										reset => tbreset,
										clk => tbclk
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
		wait for 100 ms;
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









--library ieee;
--use ieee.std_logic_1164.all;
--
--entity TBmsj_y_salida_apart is
--end TBmsj_y_salida_apart;
--
--architecture bh of TBmsj_y_salida_apart is
--	
--	signal tbenviar: std_logic;
--	signal tbselect_msj: std_logic_vector(1 downto 0);
--	signal tbclk: std_logic;
--	signal tbreset: std_logic;
--	signal tbsalida_serie: std_logic;
--	
--	component msj_y_salida_apart 
--		port(	
--				enviar: in std_logic;
--				select_msj: in std_logic_vector(1 downto 0);
--				clk: in std_logic;
--				reset: in std_logic;
--				salida_serie: out std_logic	
--				);
--	end component;
--begin
--	
--		dut: msj_y_salida_apart port map( 
--													enviar => tbenviar,
--													select_msj => tbselect_msj,
--													clk => tbclk,
--													reset => tbreset,
--													salida_serie => tbsalida_serie
--													);
--			
--	process
--	begin 
--		tbenviar <= '1';
--		wait for 100 ms;
--		tbenviar <= '0';
--		wait for 4000 ms;
--	end process;
--	select_m: process
--	begin
--			tbselect_msj <= "00";
--			wait for 3000 ms;
--			tbselect_msj <= "01";
--			wait for 3000 ms;
--			tbselect_msj <= "10";
--			wait for 3000 ms;
--			tbselect_msj <= "11";
--			wait for 3000 ms;
--	end process select_m;
--	clk_gener: process 
--	begin
--		tbclk <= '0';
--		wait for 5 ms;
--		tbclk <= '1';
--		wait for 5 ms;
--	end process clk_gener;
--	
--	reset_genr: process 
--	begin
--		tbreset <= '0';
--		wait for 20 ms;
--		tbreset <= '1';
--		wait for 20000 ms;
--	end process reset_genr;
--end architecture;
