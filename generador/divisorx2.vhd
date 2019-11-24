--!\file
--!\brief Descripcion de un Divisor de Frecuencias /2
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE
library  ieee;
--!componente general std_logic
use      ieee.std_logic_1164.all;
--!componente general numeric standard
use 	   ieee.numeric_std.all;

--!\brief divisor de frecuencias en 2
--!
--!Funcionamiento de Divisor de frecuencias:
--!Divide la frecuencia de un reloj de entrada en 2
--!\image html divisor.png "Modulo divisor n=2 de frecuencia de reloj."
--!\image latex divisor.eps "Modulo divisor n=2 de frecuencia de reloj."
entity divisorx2 is	
	
	port(
		--entradas
		clk_in : in std_logic; --!Entrada de reloj
		rst : in std_logic; --! Entrada de señal de reset activa en bajo
		--salida
		o : out std_logic --! Salida de señal

		
	);	
	end divisorx2;	
	
--!/brief Arquitecctura del Divisor de Frecuencia
--!
--!Funcionamiento del Divisor de Frecuencia

architecture func of divisorx2 is
	--!Instaciacion del componente Flip Flop D
	component ffd is
	port(
		--entradas
		clk : in std_logic;
		d : in std_logic;
		rst : in std_logic;
		--salida
		q : out std_logic;
		q_d : out std_logic
		
	);
	end component;

--!Señal interna q1
signal q1 : std_logic;

begin

	ffd1 : ffd port map (
						clk => clk_in,
						q_d => q1,
						rst => rst,
						d => q1, 
						q => o
	);
	
	
end func;
