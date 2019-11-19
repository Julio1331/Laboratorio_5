library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity mea_salida is
	port(
			send : in std_logic;-- señal de comienzo de transmision 
			EOT : in std_logic; 
			reset_d : in std_logic;
			reset_d_out : out std_logic;
			load : out std_logic;	
			clk : in std_logic
	);	
end entity;

architecture mea of mea_salida is

		type mea is (ILDE, LD, SND);

		signal px_st, st : mea;


begin
		actual: process(clk, reset_d)
		begin
			if (reset_d = '0') then
				st <= ILDE;
			else
				if(rising_edge(clk)) then
					st <= px_st;
				end if;
			end if;
		end process actual;

		proximo : process(st, send, EOT)
		begin
			case st is
				when ILDE =>
					--if( rising_edge(send)) then
					if (send = '1') then
						px_st <= LD;
					else
						--px_st <= ILDE;
					end if;
				when LD =>
					px_st <= SND;
				when SND =>
					if (EOT = '0') then
						px_st <= SND;
					else
						px_st <= ILDE;
					end if;
				when others => px_st <= ILDE;
			end case;
		end process proximo;
		
		salidas : process (clk, reset_d)
		begin
				if(reset_d = '0')then
					reset_d_out <= '0';
				else
					reset_d_out <= '1';
					if (rising_edge(clk)) then
						case st is
							when ILDE => load <= '0';
							when LD=> load <='1';
							when SND => load <= '0';
							when others => load <= '0';
							
--							when ILDE => reset_d_out <= '0'; load <= '0';
--							when LD=> reset_d_out <= '1'; load <='1';
--							when SND => reset_d_out <= '1'; load <= '0';
--							when others => reset_d_out <= '0'; load <= '0';
						end case;
					end if;
				end if;
		end process salidas;
								
		
end architecture;