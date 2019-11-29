library ieee;
use ieee.std_logic_1164.all;

entity transm_completo_2 is
	port(
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
end transm_completo_2;

architecture bh of transm_completo_2 is

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
				
	component msj_y_salida_apart is
		port(	
				enviar: in std_logic;
				select_msj: in std_logic_vector(1 downto 0);
				clk: in std_logic;
				reset: in std_logic;
				salida_serie: out std_logic	
				);
	end component;
	signal aux_clk: std_logic;
begin

	d1: generador port map(
									async_in => select_vel,
									reset_d => reset,
									salida => aux_clk,
									clk_50Mhz => clk_50Mhz
									);
									
	d2: msj_y_salida_apart port map(
												enviar =>enviar,
												select_msj => select_msj,
												clk => aux_clk,
												reset => reset,
												salida_serie => salida_serie
												);
	aux_out_clk_int <= aux_clk;
end architecture;
									