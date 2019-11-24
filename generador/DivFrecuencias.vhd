--!\file
--!\brief Descripcion de un Divisor de Frecuencias
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE
library IEEE;
--!componente general std_logic
use IEEE.STD_LOGIC_1164.ALL;
--!componente general unsigned
use ieee.std_logic_unsigned.all;
--!componente general numeric standard
use ieee.numeric_std.all;


--!\brief Divisor de frecuencias a partir de reloj de 50Mhz
--!
--!Este es un modulo interno principal, que permite generar las frecuencias de 0.1Hz, 0.5Hz, 1Hz, 2Hz y 5Hz
--!a partir de un reloj de 50Mhz.
--!\image html DivisorFrecuencias.png "Modulo Kernel del divisor de frecuencias."
--!\image latex DivisorFrecuencias.eps "Modulo Kernel del divisor de frecuencias."
entity divfrecuencias is
port (
	--entrada de 50mhz
	clk50mhz		: 	in STD_LOGIC; --!Entrada de reloj principal
	
	--diferentes salidas de reloj
	clk1		:	out STD_LOGIC; --!Salida de reloj   4800
	clk2		:	out STD_LOGIC;	--!Salida de reloj   9600
	--clk3		:	out STD_LOGIC;	--!Salida de reloj  14400
	clk4		:	out STD_LOGIC;	--!Salida de reloj  19200
	clk5		:	out STD_LOGIC	--!Salida de reloj 115200
	
);
end divfrecuencias;


--!/brief Arquitectura del funcionamiento deldivisor de Frecuencias.
--!
--!Este divisor utiliza diferentes contadores, que se utilizan para generar los diferentes relojes.
--!Cada desborda a una determinada cuenta maxima, calculada para hacer exacta el periodo de frecuencia.
--!
architecture func of divfrecuencias is
	constant max_cont1		: integer := 5208;--25000000; --!maximo establecido para 4800 era 1Hz
	constant max_cont2		: integer := 2604;  --!maximo establecido para 9600
	--constant max_cont3		: integer := 50000000;  --!maximo establecido para 14400
	constant max_cont4		: integer := 1302;  --!maximo establecido para 19200
	constant max_cont5		: integer := 217;  --!maximo establecido para 115200
	
	signal cont1	: integer range 0 to max_cont1; --!contador para   4800
	signal cont2	: integer range 0 to max_cont2; --!contador para   9600
	--signal cont3	: integer range 0 to max_cont3; --!contador para  14400
	signal cont4	: integer range 0 to max_cont4; --!contador para  19200
	signal cont5	: integer range 0 to max_cont5; --!contador para 115200
		
	signal clk_1	: STD_LOGIC := '0';	--!señal interna para el rejoj de   4800
	signal clk_2	: STD_LOGIC := '0';	--!señal interna para el rejoj de   9600
	--signal clk_3	: STD_LOGIC := '0';	--!señal interna para el rejoj de  14400
	signal clk_4	: STD_LOGIC := '0';	--!señal interna para el rejoj de  19200
	signal clk_5	: STD_LOGIC := '0';	--!señal interna para el rejoj de 115200

	
begin

	--generacion de 4800
	gen_clock_1: process(clk50mhz, clk_1, cont1)	
	begin
		if clk50mhz'event and clk50mhz='1' then  
			if cont1 < max_cont1 then 
				cont1 <= cont1+1;
			else
				clk_1 <= not clk_1;
				cont1 <= 0;
			end if;
		end if;
	end process;
	
	--generacion de 9600Hz
	gen_clock_2: process(clk50mhz, clk_2, cont2)	
	begin
		if rising_edge(clk50mhz) then
			if cont2 < max_cont2 then 
				cont2 <= cont2 + 1;
			else
				clk_2 <= not clk_2;
				cont2 <= 0;
			end if;
		end if;
	end process;
	
	--generacion de 1Hz
--	gen_clock_3: process(clk50mhz, clk_3, cont3)	
--	begin
--		if rising_edge(clk50mhz) then
--			if cont3 < max_cont3 then 
--				cont3 <= cont3 + 1;
--			else
--				clk_3 <= not clk_3;
--				cont3 <= 0;
--			end if;
--		end if;
--	end process;
	
	
	--generacion de 19600
	gen_clock_4: process(clk50mhz, clk_4, cont4)	
	begin
		if rising_edge(clk50mhz) then
			if cont4 < max_cont4 then 
				cont4 <= cont4 + 1;
			else
				clk_4 <= not clk_4;
				cont4 <= 0;
			end if;
		end if;
	end process;


	--generacion de 38400
	gen_clock_5: process(clk50mhz, clk_5, cont5)	
	begin
		if rising_edge(clk50mhz) then
			if cont5 < max_cont5 then 
				cont5 <= cont5 + 1;
			else
				clk_5 <= not clk_5;
				cont5 <= 0;
			end if;
		end if;
	end process;	
		
	
	clk1 	<= clk_1;
	clk2	<= clk_2;
	--clk3 	<= clk_3;
	clk4 	<= clk_4;
	clk5 	<= clk_5;
	
end func;
