--!\file
--!\brief Modulo decodificador de datos para displays.
--!\authors Leotta Gaston \n Pereyra Julio

--!Librerias IEEE y componentes
library  ieee;
--!componente general std_logic
use      ieee.std_logic_1164.all;
--!componente general numeric standard
use 	   ieee.numeric_std.all;


--!\brief Modulo para la representacion de datos de Frecuencias en display
--!
--!fdisplay, es un modulo interno, que permite la representacion de las frecuencias.
--!Representa en dos displays 7 segmentos, una frecuencia determinada por la seleccion de un usuario
--!configurada en las entradas sincronizadas de seleccion.
--!Fdisplay posee dos vectores de salida de 7 bits cada una, que codifican los valores de frecuencias en 
--!codigo 7 segmentos. 
--!Este modulo se representa de forma combinacional, teniendo una entrada de reset activa en bajo y 
--!una entrada de seleccion de 3 bits para la seleccion de las diferentes frecuencias pre-establecidas.
--!0.1hz - 0.5hz - 1hz - 2hz - 5hz.
--!\image html SalidaDisplay.png "Modulo para la visualizacion de frecuencias en display 7 Segmentos."
--!\image latex SalidaDisplay.eps "Modulo para la visualizacion de frecuencias en display 7 Segmentos."
entity fdisplay is
port(
	--salidas
	display1 : out std_logic_vector (6 downto 0); --!Salida a display para la Unidad,
	display2 : out std_logic_vector (6 downto 0); --!Salida a display para la Decena,
	
	--entradas
	sel_frec : in std_logic_vector (2 downto 0); --!Vector de entrada de seleccion de 3 bits.
	reset : in std_logic	--!Entrada asincronica de reset. Activa en bajo. Apaga los displays mientras sea asertiva.
);
end entity;


--!Descripcion del funcionamiento del fdisplay.
architecture func of fdisplay is 
	--!Modulo interno decodificador de BCD a 7 segmentos.
	component decoBCD7Seg is
	port (
				--in
					data : in std_logic_vector (3 downto 0);	--!Vector de entradas de 4 bits de datos BCD.
				--out
					dataout : out std_logic_vector(6 downto 0) --!Vector de salidas de 7 bits para display de 7 segmentos.
	);
	end component;

	--!señales internas utilizadas.
	signal data1, data2 : std_logic_vector (3 downto 0);	--!Señales interna 
	signal data11, data22 : std_logic_vector (3 downto 0); --!Señales interna
	
	
begin
		unidad : decoBCD7Seg port map(
			dataout => display1,	data => data1	
		);
		
		decena : decoBCD7Seg port map(
			dataout => display2,	data => data2
		);
		
		with reset select
				data1 <= data11 when '1',
							"1111" when others;
		with reset select
				data2 <= data22 when '1',
							"1111" when others;							
							
		
		with sel_frec select
				data22 	<= "0000" when "001",
							 "0000" when "010",
							 "1010" when others; --esto apaga los displays
							
		with sel_frec select
				data11 <= x"1" when "001", 
							 x"5" when "010",
							 x"1"	when "011",
							 x"2" when "100",
							 x"5" when "101",
							 x"a" when others; --esto apaga los displays.
end func;