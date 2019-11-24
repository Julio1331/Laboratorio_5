--!\file
--!\brief Descripcion de un Decodificador de BCD a 7 Segmentos
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE y componentes
library IEEE;
--!componente general std_logic
use IEEE.STD_LOGIC_1164.ALL;
--!componente general unsigned
use ieee.std_logic_unsigned.all;
--!componente general numeric standard
use ieee.numeric_std.all;

--!\brief Modulo de seleccion de frecuencias.
--!
--!Modulo Interno. Modulo combinacional multiplexor de seleccion de frecuencias
--!posee 5 entradas para las diferentes frecuencias, una salida y
--!un vector de 3 bits para la seleccion de frecuencias
--!\image html Seleccionador_de_Frecuencias.png "Esquema del modulo multiplexor de seleccion de Frecuencias."
--!\image latex Seleccionador_de_Frecuencias.eps "Esquema del modulo multiplexor de seleccion de Frecuencias."
entity selfrecuencias is
port (
	--entradas de relojes
	ck1 	: 	in std_logic;	--!Entrada para el reloj sel = 001
	ck2	:	in std_logic;	--!Entrada para el reloj sel = 010
	--ck3	:	in std_logic;	--!Entrada para el reloj sel = 011
	ck4	:	in std_logic;	--!Entrada para el reloj sel = 100
	ck5	:	in std_logic;	--!Entrada para el reloj sel = 101
	
	-- entrada de seleccion
	sel_in		: 	in	std_logic_vector(1 downto 0); --!Vector de Entrada de seleccion de 3 bits.
	
	--salida 
	salida	:	out	std_logic	--!Salida multiplexada.
);
end selfrecuencias; 


--!Arquitectura de Funcionamiento del selecctor.
architecture func of selfrecuencias is				
begin
		with sel_in select
			salida	<= ck1 when "00",
							ck2 when "01",
							--ck3 when "011",
							ck4 when "10",
							ck5 when "11",
							'0' when others;
					
end architecture;