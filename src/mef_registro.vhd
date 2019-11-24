library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--dispositivo formado por el registro de desplazamiento y la mef que controla dicho
--registro, las entradas van conectadas al dispositivo que amrma la trama para transmitir

entity mef_registro is
	generic (buss : natural :=11);
	port(
			snd : in std_logic;-- señal de comienzo de transmision 
			reset : in std_logic;
			clk : in std_logic;
			data_in : in std_logic_vector (buss-1 downto 0);--asignada
			serial_in : in std_logic;
			serial_out : out std_logic;
			end_of_tram : out std_logic
			);
end mef_registro;

architecture bh of mef_registro is
	component reg_desplazamiento is
			port(	
					d_in : in std_logic_vector (buss-1 downto 0);
					clk : in std_logic;
					load : in std_logic;
					reset_d : in std_logic;
					s_in : in std_logic;
					serial_out : out std_logic;
					ones : out std_logic
					);
	end component;
	
	component mea_salida is
			port(
					send : in std_logic;-- señal de comienzo de transmision 
					EOT : in std_logic; 
					reset_d : in std_logic;
					reset_d_out : out std_logic;
					load : out std_logic;	
					clk : in std_logic
				);
	end component;
	
	signal sig_load: std_logic;
	signal ones_to_eot: std_logic;
	signal to_reset: std_logic;
begin
	d1: reg_desplazamiento port map(
												d_in => data_in,
												clk => clk,
												load => sig_load,
												reset_d => to_reset,
												s_in => serial_in,
												serial_out => serial_out,
												ones => ones_to_eot
												);
	d2: mea_salida port map(
									send => snd,
									EOT => ones_to_eot,
									reset_d => reset,
									reset_d_out => to_reset,
									load => sig_load,
									clk => clk
									);
	end_of_tram <= ones_to_eot;
end architecture;
			
			