library ieee;
use ieee.std_logic_1164.all;
use work.my_pack.all;

entity data_11 is
	port(
			datos_in: in std_logic_vector (7 downto 0);
			datos_out: out std_logic_vector (10 downto 0);
			serial_out: out std_logic
			);
end data_11;

architecture bh of data_11 is
	signal aux_out: std_logic_vector(10 downto 0);
begin	
	gen_data: process (datos_in)
	begin
		aux_out(10) <= '0';
		aux_out(9 downto 2) <= datos_in;
		aux_out(1) <= parity(datos_in);
		aux_out(0) <= '1';
	end process gen_data;
	
	datos_out <= aux_out;
	serial_out <= '1';
end architecture;
