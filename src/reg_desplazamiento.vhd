library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reg_desplazamiento is
	generic (buss : natural :=11);
	port(
			d_in : in std_logic_vector (buss-1 downto 0);
			clk : in std_logic;
			load : in std_logic;
			reset_d : in std_logic;
			s_in : in std_logic;
			serial_out : out std_logic;
			--parallel_out : out std_logic_vector (buss-1 downto 0)
			ones : out std_logic
			);
end entity;

architecture func of reg_desplazamiento is
	component registro is
		port (
			load: in std_logic;
			carry: in std_logic;
			din: in std_logic;
			clk: in std_logic;
			reset_d : in std_logic;
			dout : out std_logic
			);
	end component;
	signal d_int : std_logic_vector(buss-1 downto 0);

begin

		t: for i in d_int'range generate
			t0 : if (i=0) generate
				bitx0 : registro port map (carry => s_in,
													load => load,
													clk => clk,
													reset_d => reset_d,
													dout => d_int(i),
													din => d_in(i)
													);
				
			end generate t0;
			t1_10 : if (i>0 and i<d_int'length-1) generate
				bitx : registro port map (	carry => d_int(i-1),
												load => load,
												clk => clk,
												reset_d => reset_d,
												dout => d_int(i),
												din => d_in(i) );
			end generate t1_10;
			
			t11 : if (i=d_int'length-1) generate
				bitx : registro port map (	carry => d_int(i-1),
												load => load,
												clk => clk,
												reset_d => reset_d,
												dout => d_int(i),
												din => d_in(i) );
			end generate t11;
		end generate t;
		
	serial_out <= d_int(d_int'length-1);
	ones <= d_int(0) and d_int(1) and d_int(2) and d_int(3) and d_int(4) and d_int(5) and
			  d_int(6) and d_int(7) and d_int(8) and d_int(9) and d_int(10);
						
end architecture;