library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBtransmisor is 
end TBtransmisor;

architecture bh of TBtransmisor is
	
	signal tbenviar_msj: std_logic;
	signal tbselect_msj: std_logic_vector(1 downto 0);
	signal tbselect_baud: std_logic_vector(1 downto 0);
	signal tbsalida_serie: std_logic;
	signal tbreset: std_logic;
	signal tbclk: std_logic;
	signal cont: std_logic_vector(4 downto 0):= "00000";
	
	component transmisor is
			port (
					enviar_msj: in std_logic;
					select_msj: in std_logic_vector (1 downto 0);
					select_baud: in std_logic_vector(1 downto 0);
					salida_serie: out std_logic;
					reset: in std_logic;
					clk: in std_logic
					);
	end component;

begin
	dut: transmisor port map(
										enviar_msj => tbenviar_msj,
										select_msj => tbselect_msj,
										select_baud => tbselect_baud,
										salida_serie => tbsalida_serie,
										reset => tbreset,
										clk => tbreset
										);
	select_gener: process
	begin
		tbselect_baud <= "00";
		tbselect_msj <= "00";
		tbenviar_msj <= '0';
		wait for 10 ms;
		tbenviar_msj <= '1';
		wait for 20 ms;
		
--		tbselect_baud <= cont (4 downto 3);
--		tbselect_msj <= cont (2 downto 1);
--		tbenviar_msj <= cont(0);
--		wait for 10 ms;
--		cont <= cont + '1';
	end process select_gener;
	
--	pulsos_envio: process
--	begin
--		tbenviar_msj <= '0';
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
		wait for 20 ns;
		tbreset <= '1';
		wait for 20 ms;
	end process reset_genr;
end architecture;
	