library ieee;
use ieee.std_logic_1164.all;
use work.my_pack.all;
--este dispositivo selecciona la direccion de memoria del mensaje a transmitir
--en funcion de las entradas de seleccion.
entity data_11 is
	port(
			datos_in: in std_logic_vector (7 downto 0);
			datos_out: out std_logic_vector (10 downto 0);
			serial_out: out std_logic;
			eot: out std_logic
			);
end data_11;

architecture bh of data_11 is
	signal aux_out: std_logic_vector(10 downto 0);
	signal eotrans: std_logic;
begin	
	gen_data: process (datos_in)
	begin
		aux_out(10) <= '0';
		aux_out(9 downto 2) <= datos_in;
		aux_out(1) <= parity(datos_in);
		aux_out(0) <= '1';
		if (datos_in = "00000100") then
			eotrans <= '1';
		else 
			eotrans <= '0';
		end if;
	end process gen_data;
	
	datos_out <= aux_out;
	serial_out <= '1';
	eot <= eotrans;
end architecture;
