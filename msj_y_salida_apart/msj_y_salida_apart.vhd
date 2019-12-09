--este despositivo comprende la seleccion del mensaje, armado de la trama 
-- y transmision del mismo sin el control del tiempo  y ni selector de velocidad
library ieee;
use ieee.std_logic_1164.all;

entity msj_y_salida_apart is
	port(	
			enviar: in std_logic;
			select_msj: in std_logic_vector(1 downto 0);
			select_vel: in std_logic_vector(1 downto 0);
			cts: out std_logic;
			rts: out std_logic;
			clk: in std_logic;
			reset: in std_logic;
			salida_serie: out std_logic	
			);
			
end msj_y_salida_apart;

architecture bh of msj_y_salida_apart is 
	 
	component msj_y_mem
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
	
	component trama_y_reg 
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
	
	component generador_2
		port(
			sel_vel: in std_logic_vector(1 downto 0);
			clk_out: out std_logic;
			rst: in std_logic;
			clk_50MHz: in std_logic
			);
	end component;
	
	signal aux_end_transm: std_logic;
	signal aux_end_trama: std_logic;
	signal aux_msj: std_logic_vector(7 downto 0);
	signal aux_send: std_logic;
	signal auxclk_int: std_logic;
	signal aux_rts_cts: std_logic;
	
begin 
	d1: msj_y_mem port map( 
									enviar => enviar,
									select_msj => select_msj,
									end_transmission => aux_end_transm,
									end_trama => aux_end_trama,
									msj_out => aux_msj,
									send_interno => aux_send,
									clk => auxclk_int,
									reset_in => reset
									);
									
	d2: trama_y_reg port map(
										send => aux_send,
										rst => reset,
										datos => aux_msj,
										sal_serie => salida_serie,
										end_of_transmission => aux_end_transm,
										end_of_trama => aux_end_trama,
										clk => auxclk_int
										);
	d3: generador_2 port map(
										sel_vel => select_vel,
										clk_out => auxclk_int,
										rst => reset,
										clk_50MHz => clk
										);
	rts <= aux_rts_cts;
	cts <= aux_rts_cts;
end architecture;





----este despositivo comprende la seleccion del mensaje, armado de la trama 
---- y transmision del mismo sin el control del tiempo  y ni selector de velocidad
--library ieee;
--use ieee.std_logic_1164.all;
--
--entity msj_y_salida_apart is
--	port(	
--			enviar: in std_logic;
--			select_msj: in std_logic_vector(1 downto 0);
--			clk: in std_logic;
--			reset: in std_logic;
--			salida_serie: out std_logic	
--			);
--			
--end msj_y_salida_apart;
--
--architecture bh of msj_y_salida_apart is 
--	 
--	component msj_y_mem
--		port( 
--				enviar: in std_logic;
--				select_msj: in std_logic_vector(1 downto 0);
--				end_transmission: in std_logic;
--				end_trama: in std_logic;
--				msj_out: out std_logic_vector(7 downto 0);
--				send_interno: out std_logic;
--				clk: in std_logic;
--				reset_in: in std_logic
--				);
--	end component;
--	
--	component trama_y_reg 
--		port(
--			send: in std_logic;
--			rst: in std_logic;
--			datos: in std_logic_vector(7 downto 0);
--			sal_serie: out std_logic;
--			end_of_transmission: out std_logic;
--			end_of_trama: out std_logic;
--			clk: in std_logic
--			);
--	end component;
--	
--	signal aux_end_transm: std_logic;
--	signal aux_end_trama: std_logic;
--	signal aux_msj: std_logic_vector(7 downto 0);
--	signal aux_send: std_logic;
--	
--begin 
--	d1: msj_y_mem port map( 
--									enviar => enviar,
--									select_msj => select_msj,
--									end_transmission => aux_end_transm,
--									end_trama => aux_end_trama,
--									msj_out => aux_msj,
--									send_interno => aux_send,
--									clk => clk,
--									reset_in => reset
--									);
--									
--	d2: trama_y_reg port map(
--										send => aux_send,
--										rst => reset,
--										datos => aux_msj,
--										sal_serie => salida_serie,
--										end_of_transmission => aux_end_transm,
--										end_of_trama => aux_end_trama,
--										clk => clk
--										);
--end architecture;