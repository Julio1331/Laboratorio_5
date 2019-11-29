library ieee;
use ieee.std_logic_1164.all;

entity TBmsj_y_mem is
end TBmsj_y_mem;

architecture bh of TBmsj_y_mem is

	signal tbenviar: std_logic;
	signal tbselect_msj: std_logic_vector(1 downto 0);
	signal tbend_transmission: std_logic;
	signal tbend_trama: std_logic;
	signal tbmsj_out: std_logic_vector (7 downto 0);
	signal tbsend_interno: std_logic;
	signal tbclk: std_logic;
	signal tbreset_in: std_logic;
	
	component msj_y_mem is
		port( 
				enviar: in std_logic;
				select_msj: in std_logic_vector(1 downto 0);
				end_transmission: in std_logic;
				end_trama: in std_logic;
				msj_out: out std_logic_vector(7 downto 0);
				send_interno: out std_logic;
				clk: in std_logic;
				reset_in: in std_logic
				);
	end component;
	
begin

	dut: msj_y_mem port map(
									enviar => tbenviar,
									select_msj => tbselect_msj,
									end_transmission => tbend_transmission,
									end_trama => tbend_trama,
									msj_out => tbmsj_out,
									send_interno => tbsend_interno,
									clk => tbclk,
									reset_in => tbreset_in
									);
	envio_gen: process 
	begin	
		tbenviar <= '0';
		wait for 200 ms;
		tbenviar <= '1';
		wait for 10 ms;
	end process envio_gen;
	
	end_trama_gen: process
	begin
		tbend_trama <= '0';
		wait for 50 ms;
		tbend_trama <= '1';
		wait for 3 ms;
	end process end_trama_gen;
	
	end_transm_gen: process
	begin 
		tbend_transmission <= '0';
		wait for 190 ms;
		tbend_transmission <= '1';
		wait for 20 ms;
	end process end_transm_gen;
	
	sel: process
	begin
		tbselect_msj <= "00";
		wait for 500 ms;
		tbselect_msj <= "00";
		wait for 500 ms;
	end process sel;

	clk_gener: process 
	begin
		tbclk <= '0';
		wait for 1 ms;
		tbclk <= '1';
		wait for 1 ms;
	end process clk_gener;
	
	reset_genr: process 
	begin
		tbreset_in <= '0';
		wait for 20 ms;
		tbreset_in <= '1';
		wait for 20000 ms;
	end process reset_genr;
end architecture;

--	
--	aviso: process (tbenviar)
--	begin 
--		if(rising_edge(tbenviar)) then
--			flag <= '1';
--		end if;
--	end process aviso;
--	
--	end_gen: process (tbclk)
--	begin
--		if flag = '1' and rising_edge(tbclk) then 
--			cont1 <= cont1 + '1';
--		end if;
--		if cont1 = "" then 
--			tbend_trama <= '1';
--			wait for 5 ms;
--		else 
--			tbend_trama <= '0';
--			wait for 5 ms;
--		end if;
--		if cont1 = 