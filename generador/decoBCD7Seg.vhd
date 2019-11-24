--!\file
--!\brief Descripcion de un Decodificador de BCD a 7 Segmentos
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE y componentes.
library  ieee;
--!componente general std_logic
use      ieee.std_logic_1164.all;
--!componente general numeric standard
use 	   ieee.numeric_std.all;

--!\brief Entidad Decodificador BCD a 7 Segmentos.
--!
--!Este modulo posee un vector de 4 bits de entradas para numeros en BCD
--!y un vector de 7 bits de salida, de señales codificadas para displays de 7 segmentos.
--!Es un modulo combinacional.
entity decobcd7seg is 
	port (
				--in
					data : in std_logic_vector (3 downto 0); --!Vector de entrada de 4 bits de datos.
				--out
					dataout : out std_logic_vector(6 downto 0) --!Vector de salida de datos de 7 bits. 
	);
end decobcd7seg;

--!Arquitectura de funcionamiento del decodificador. 
architecture func of decobcd7seg is

begin
	with data select
			dataout <=	"1000000" when x"0",
							"1111001" when x"1",
							"0100100" when x"2",
							"0110000" when x"3",
							"0011001" when x"4",
							"0010010" when x"5",
							"0000010" when x"6",
							"1111000" when x"7",
							"0000000" when x"8",
							"0011000" when x"9",
							(others => '1') when others;
end func;

	