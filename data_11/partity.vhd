library ieee;
use ieee.std_logic_1164.all;


package my_pack is
	function parity(data: in std_logic_vector)return std_logic;
end package;

package body my_pack is
	function parity(data: in std_logic_vector)return std_logic is
	variable paridad: std_logic;
	begin
		paridad := data(0) xor data(1) xor data(2) xor data(3) xor data(4) xor data(5) xor data(6) xor data(7); 
		return paridad;
	end function;
end package body;
