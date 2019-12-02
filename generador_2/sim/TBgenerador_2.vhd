library ieee;
use ieee.std_logic_1164.all;

entity TBgenerador_2 is
end TBgenerador_2;

architecture bh of TBgenerador_2 is

	signal tbsel_vel: std_logic_vector(1 downto 0);
	signal tbclk_out: std_logic := '0';
	signal tbrst: std_logic;
	signal tbclk_50mhz: std_logic;
	
	component generador_2 is
		port(
			sel_vel: in std_logic_vector(1 downto 0);
			clk_out: out std_logic;
			rst: in std_logic;
			clk_50MHz: in std_logic
			);
	end component;
	
begin 
	dut: generador_2 port map(
										sel_vel => tbsel_vel,
										clk_out => tbclk_out,
										rst => tbrst,
										clk_50mhz => tbclk_50mhz
										);
	gen_clk: process
	begin
		tbclk_50mhz <= '0';
		wait for 10 ns;
		tbclk_50mhz <= '1';
		wait for 10 ns;
	end process gen_clk;
	gen_rst: process
	begin
		tbrst <= '0';
		wait for 40 ns;
		tbrst <= '1';
		wait for 1000 ms;
	end process gen_rst;
	
	gen_ent: process
	begin
		tbsel_vel <= "00";
		wait for 10 ms;
		tbsel_vel <= "01";
		wait for 10 ms;
		tbsel_vel <= "10";
		wait for 10 ms;
		tbsel_vel <= "11";
		wait for 10 ms;
	end process gen_ent;
end architecture;