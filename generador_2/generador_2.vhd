library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity generador_2 is
	port(
			sel_vel: in std_logic_vector(1 downto 0);
			clk_out: out std_logic;
			rst: in std_logic;
			clk_50MHz: in std_logic
			);
end generador_2;

architecture bh of generador_2 is
-- el calculo es 9600^-1/(2*5mzh^-1)=cantidad de pulsos por semiperiodo
--	para 9600hz el periodo es de 104.16666 useg pero con el de 50MHz solo se puede lograr de 104.16

	--9600 4800 38400 115200
	constant max_c9600 : natural := 2603;
	constant max_c4800 : natural := 5207;
	constant max_c38400: natural := 650;--651
	constant max_c115200: natural := 216;
	
	signal cont9600 : natural range 0 to max_c9600;
	signal cont4800 : natural range 0 to max_c4800;
	signal cont38400 : natural range 0 to max_c38400;
	signal cont115200 : natural range 0 to max_c115200;
	
	signal clk_9600 : std_logic := '0';
	signal clk_4800 : std_logic := '0';
	signal clk_38400 : std_logic := '0';
	signal clk_115200 : std_logic := '0';
	
begin	
	gen_clock_9600: process(clk_50MHz)	
	begin
		if rising_edge(clk_50MHz) then  
			if cont9600 < max_c9600 then 
				cont9600 <= cont9600+1;
			else
				clk_9600 <= not clk_9600;
				cont9600 <= 0;
			end if;
		end if;
	end process gen_clock_9600;
	
	gen_clock_4800: process(clk_50MHz)	
	begin
		if rising_edge(clk_50MHz) then  
			if cont4800 < max_c4800 then 
				cont4800 <= cont4800+1;
			else
				clk_4800 <= not clk_4800;
				cont4800 <= 0;
			end if;
		end if;
	end process;
	
	gen_clock_38400: process(clk_50MHz)	
	begin
		if rising_edge(clk_50MHz) then  
			if cont38400 < max_c38400 then 
				cont38400 <= cont38400+1;
			else
				clk_38400 <= not clk_38400;
				cont38400 <= 0;
			end if;
		end if;
	end process;
	
	gen_clock_115200: process(clk_50MHz)	
	begin
		if rising_edge(clk_50MHz) then  
			if cont115200 < max_c115200 then 
				cont115200 <= cont115200+1;
			else
				clk_115200 <= not clk_115200;
				cont115200 <= 0;
			end if;
		end if;
	end process;
	
	select_out: process(sel_vel, clk_4800, clk_9600, clk_38400, clk_115200)
	begin 
		case sel_vel is
				when "00" => clk_out <= clk_4800;
				when "01" => clk_out <= clk_9600;
				when "10" => clk_out <= clk_38400;
				when "11" => clk_out <= clk_115200;
				when others => clk_out <= clk_4800;
		end case;
	end process;
	
end architecture;
	
			