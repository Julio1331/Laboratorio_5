library ieee;
use ieee.std_logic_1164.all;

entity tbmux_entradas is
end tbmux_entradas;

architecture bh of tbmux_entradas is
	signal tbsel_msj: std_logic_vector(1 downto 0);
	signal tbadd_out: std_logic_vector(7 downto 0);
	component mux_entradas
			port(
					sel_msj : in std_logic_vector(1 downto 0);
					add_out : out std_logic_vector(7 downto 0)
					);		
	end component;
	
begin	
	dut: mux_entradas port map(
										sel_msj => tbsel_msj,
										add_out => tbadd_out
										);
	sel_gen: process
		begin
		tbsel_msj <= "00";
		wait for 20 us;
		tbsel_msj <= "01";
		wait for 20 us;
		tbsel_msj <= "10";
		wait for 20 us;
		tbsel_msj <= "11";
		wait for 20 us;
	end process sel_gen;
end architecture;