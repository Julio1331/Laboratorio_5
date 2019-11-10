library  ieee;
use      ieee.std_logic_1164.all;

entity TBmea_salida is
end TBmea_salida;

architecture bh of TBmea_salida is
		
		signal tbsend: std_logic;
		signal tbEOT: std_logic;
		signal tbreset_d: std_logic;
		signal tbreset_d_out: std_logic;
		signal tbload: std_logic;
		signal tbclk: std_logic;

component mea_salida 
		port(
			send : in std_logic;
			EOT : in std_logic;
			reset_d : in std_logic;
			reset_d_out : out std_logic;
			load : out std_logic;	
			clk : in std_logic
			);	
end component;
begin 
	dut: mea_salida port map(
										send => tbsend,
										EOT => tbEOT,
										reset_d => tbreset_d,
										reset_d_out => tbreset_d_out,
										load => tbload,
										clk => tbclk
										);
 gen_clk: process
	begin
		tbclk <= '1';
		wait for 4.73 us;
		tbclk <= '0';
		wait for 4.73 us;
end process gen_clk;

send_EOT: process
	begin	
		tbsend <= '1';
		wait for 20 us;
		tbsend <= '0';
		wait for 140 us;
		
		tbEOT <= '1';
		wait for 100 us;
		tbEOT <= '0';
		wait for 60 us;
end process send_EOT;

rst: process
	begin	
		tbreset_d <= '0';
		wait for 1 us;
		tbreset_d <= '1';
		wait for 400 us;
end process rst;	
end architecture;