library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity registro is
	port (
			load: in std_logic;
			carry: in std_logic;
			din: in std_logic;
			clk: in std_logic;
			reset_d : in std_logic;
			dout : out std_logic
			);
end registro;

architecture bh of registro is
	signal s3: std_logic;
begin
	process (clk, load, reset_d)
		begin
		if (reset_d='0') then
			dout <='1';--1
		else
			if(rising_edge(clk))then
				if(load = '1') then
					dout <= din;
				else 
					dout <= carry;
				end if;
				--dout <= s3;
			end if;
		end if;
	end process;
end architecture;