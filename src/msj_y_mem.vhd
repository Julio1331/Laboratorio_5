--este dispositivo elige el msj a transmitir lo direcciona en la memoria y lo pone
--a la salida, tambien se encarga de ir direccionando segun corresponda el dato 
--que se debe transmitir segun los valores que tomen las entradas de fin de trama 
--y fin de transmision 
library ieee;
use ieee.std_logic_1164.all;

entity msj_y_mem is
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
end msj_y_mem;

architecture bh of msj_y_mem is 
	
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
	
	component ROM is
			port (
					clk		:in std_logic;
					address 	:in std_logic_vector(7 downto 0);
					data_out	:out std_logic_vector(7 downto 0)
					);
	end component;
	
	component mux_entradas
			port(
					sel_msj : in std_logic_vector(1 downto 0);
					add_out : out std_logic_vector(7 downto 0)
					);
	end component;
	signal aux_buff_msj: std_logic_vector(7 downto 0);
	signal aux_addres: std_logic_vector(7 downto 0);
begin 
	d1: mea_mem port map(
								send_us => enviar,
								end_transmission => end_transmission,
								end_trama => end_trama,
								add_0 => aux_buff_msj,
								send_int => send_interno,
								add_out => aux_addres,
								clk => clk,
								reset => reset_in
								);
				
	d2: ROM port map(
							clk => clk,
							address => aux_addres,
							data_out => msj_out
							);
						
	d3: mux_entradas port map(
										sel_msj => select_msj,
										add_out => aux_buff_msj
										);
end architecture;