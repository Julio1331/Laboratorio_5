--!\file
--!\brief Descripcion de un Flip-Flop D
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE
library  ieee;
--!componente general std_logic
use      ieee.std_logic_1164.all;
--!componente general numeric standard
use 	   ieee.numeric_std.all;


--!\brief Flip-Flop D
--!
--!Funcionamiento de un Flip-Flop D  con salida q y q_d (q negado)
--!y rst reset activo en bajo
--!\image html ffd.png "Modulo Flip-Flop D."
--!\image latex ffd.eps "Modulo Flip-Flop D."
entity ffd is	
	port(
		--entradas
		clk : in std_logic; --! Señal de reloj de entrada, por flanco ascendente
		d : in std_logic; --! Señal de entrada de dato
		rst : in std_logic; --! Señal asincronica de reset, activa en bajo
		--salida
		q : out std_logic; --! Señal de salida q
		q_d : out std_logic --! Señal de salida q negada.		
	);	
	end ffd;	
	
--!/brief Arquitecctura del Flip FlopD
--!
--!funcionamiento del Flip Flop D
--!Realizado con un process con señales clk, dd , d y rst sensibles.`process(clk,d,dd,rst)`
architecture func of ffd is
--!Señal interna dd.
signal dd : std_logic;
begin
--!Proceso sensible a las entradas de reloj y reset. 
	process (clk, d,dd, rst) --!Proceso de funcionamiento de un Flip-Flop D. 
	begin
		if (rst = '0') then
			dd <='0';
		else
			if rising_edge(clk) then
				dd <= d;			
			end if;
		end if;	
		q_d <= (not dd);
		q <= dd;
	end process;
end func;
