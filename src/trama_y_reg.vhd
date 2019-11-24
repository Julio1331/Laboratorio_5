library ieee;
use ieee.std_logic_1164.all;
--contiene el disp que forma la trama y la que controla el registro 
--las entradas son el clk y los datos desde la memoria, la salida es la salida serie
--total y las señales de control de fin de trama y fin de transmision
entity trama_y_reg is
	port(
			send: in std_logic;
			rst: in std_logic;
			datos: in std_logic_vector(7 downto 0);
			sal_serie: out std_logic;
			end_of_transmition: out std_logic;
			end_of_trama: out std_logic;
			clk: in std_logic
			);
end trama_y_reg;

architecture bh of trama_y_reg is
	
	
	component data_11 is
		port(
				datos_in: in std_logic_vector (7 downto 0);
				datos_out: out std_logic_vector (10 downto 0);
				serial_out: out std_logic;
				eot: out std_logic
				);
	end component;
	
	component mef_registro is
		port(
				snd : in std_logic;-- señal de comienzo de transmision 
				reset : in std_logic;
				clk : in std_logic;
				data_in : in std_logic_vector (10 downto 0);--asignada
				serial_in : in std_logic;
				serial_out : out std_logic;
				end_of_tram : out std_logic
				);
	end component;
	
	signal trama: std_logic_vector(10 downto 0);
	signal ser_out: std_logic;
begin	
	d1: data_11 port map( 
								datos_in => datos,
								datos_out => trama,
								serial_out => ser_out,
								eot => end_of_transmition
								);
	
	d2: mef_registro port map(
										snd => send,
										reset => rst,
										clk => clk,
										data_in => trama,
										serial_in => ser_out,
										serial_out => sal_serie,
										end_of_tram => end_of_trama
										);
end architecture;