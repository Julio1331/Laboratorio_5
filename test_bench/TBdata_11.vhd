library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity TBdata_11 is
end TBdata_11;

architecture bh of TBdata_11 is

	signal tbdatos_in: std_logic_vector(7 downto 0):= "00000000";
	signal tbdatos_out: std_logic_vector(10 downto 0);
	signal tbserial_out: std_logic;
	signal aux_datos: std_logic_vector(7 downto 0) := "00000000";
	component data_11 
			port(
					datos_in: in std_logic_vector (7 downto 0);
					datos_out: out std_logic_vector (10 downto 0);
					serial_out: out std_logic
			);
	end component;
begin

	dut: data_11 port map(
									datos_in => tbdatos_in,
									datos_out => tbdatos_out,
									serial_out => tbserial_out
									);
	gen_datos: process 
	begin	
		aux_datos <= aux_datos + '1';
		tbdatos_in <= aux_datos;
		wait for 20 us;
	end process gen_datos;
	
end architecture;
	
	
	
	
	
	