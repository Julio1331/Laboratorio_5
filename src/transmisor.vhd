library ieee;
use ieee.std_logic_1164.all;

entity transmisor is
		port (
				enviar_msj: in std_logic;
				select_msj: in std_logic_vector (1 downto 0);
				select_baud: in std_logic_vector(1 downto 0);
				salida_serie: out std_logic;
				reset: in std_logic;
				clk: in std_logic
				);
end transmisor;

architecture bh of transmisor is
	
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
	
	component generador is
		port (
				--entradas de seleccion
				async_in 	: in std_logic_vector (1 downto 0); --!Vector de 3 bits de entradas asincronicas
				reset_d		: in std_logic; --!Entrada de reset activo en bajo 
				--salida de frecuencia
				salida 		: out std_logic; --!Salida de frecuencia
				--entrada de 50MHZ
				clk_50Mhz 	: in std_logic --!Entrada de reloj de 50Mhz.
				);
	end component;

	signal aux_end_transmission: std_logic;
	signal aux_end_trama: std_logic;
	signal aux_msj: std_logic_vector(7 downto 0);
	signal aux_send_interno: std_logic;
	signal aux_clk: std_logic;
	
begin
	d1: msj_y_mem port map (
										enviar => enviar_msj,
										select_msj => select_msj,
										end_transmission => aux_end_transmission,
										end_trama => aux_end_trama,
										msj_out => aux_msj,
										send_interno => aux_send_interno,
										clk => aux_clk,
										reset_in => reset
										);
	d2: trama_y_reg port map (
										send => aux_send_interno,
										rst => reset,
										datos => aux_msj,
										sal_serie => salida_serie,
										end_of_transmission => aux_end_transmission,
										end_of_trama => aux_end_trama,
										clk => aux_clk
										);
	d3: generador port map(
									async_in => select_baud,
									reset_d => reset,
									salida => aux_clk,
									clk_50Mhz => clk
									);
end architecture;										
										