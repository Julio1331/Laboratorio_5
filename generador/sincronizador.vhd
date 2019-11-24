--!\file
--!\brief Descripcion de un Sincronizador de señales asincronicas con eliminador de sesgo
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE
library  ieee;
--!componente general std_logic
use      ieee.std_logic_1164.all;
--!componente general numeric standard
use 	   ieee.numeric_std.all;

--!\brief Sincronizador con eliminacion de Sesgo de reloj
--!
--!Funcionamiento de Sincronizador de Señales
--!sincroniza una entrada asincronica
--!con el respectivo reloj de entrada.
--!Posee reset activo en bajo
--!\image html sincronizador0.png "Modulo Sincronizador para una entrada."
--!\image latex sincronizador0.eps "Modulo Sincronizador para una entrada."
entity sincronizador is
	port (--entradas
			data_async : in std_logic; --!Entrada de datos Asincrinico
			clk_in : in std_logic; --! Entrada de señal de Reloj
			
			rst	: in std_logic; --! Entrada de Reset activo en bajo
			--salidas
			data_sync : out std_logic; --! Salida de dato Sincronizado
			clk_out : out std_logic --! Señal de reloj de Salida.
			

		);

end sincronizador;

--!/brief Arquitecctura del Sincronizador
--!
--!funcionamiento del Sincronizador con eliminacion de sesgo
--!\image html sincronizador.png "Vista interna del Modulo Sincronizador para una entrada.
architecture func of sincronizador is
--!Invocacion al componente Flip Flop D
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
--!Invocacion al componente Divisor de frecuencia.
	
	component divisorx2 is 
		port(
		--entradas
		clk_in : in std_logic;
		rst : in std_logic;		
		--salida
		o : out std_logic		
	);	
	end component;

	signal meta,clkn,clkn1 , data1: std_logic; --!Señales internas 
	
	begin
	ffd1 : ffd port map ( 
							q => meta,
							d => data_async,
							rst => rst,
							clk => clkn
			);
	ffd2 : ffd port map ( 
							q => data1,
							d => meta,
							rst => rst,
							clk => clkn1
			);
	div1 : divisorx2 port map (
							clk_in => clk_in,
							rst => rst,
							o =>	clkn
								
							);
	ffd3 : ffd port map (
							q => data_sync,
							d => data1,
							rst=> rst,
							clk => clk_in
							);
	clkn1 <= not clkn;
	clk_out <= clk_in;
	

end func;
