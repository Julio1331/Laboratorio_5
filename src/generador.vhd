--!\file
--!\brief Descripcion del Generador General de Frecuencias basado en reloj de 50Mhz.
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE y componentes
library IEEE;
--!componente general std_logic
use IEEE.STD_LOGIC_1164.ALL;


--!\brief Top Level del sistema Generador de Frecuencias a partir de un reloj de 50Mhz.
--!
--!El sistema posee un conjunto de 3 entradas asincronicas para la seleccion de frecuencia,
--!una entrada de reset activa en bajo, una entrada para el reloj de 50Mhz,
--!una salida de reloj cuya frecuencia sera la seleccionada por las entradas asincronicas y
--!un conjunto de salidas para display de 7 segmentos, que permite indicar la frecuencia seleccionada.
--!\image html generador.png "Esquema interno del Generador de frecuencias."
--!\image latex generador.eps "Esquema interno del Generador de frecuencias."
entity generador is 
port (
	--entradas de seleccion
	async_in 	: in std_logic_vector (1 downto 0); --!Vector de 3 bits de entradas asincronicas
	reset_d		: in std_logic; --!Entrada de reset activo en bajo 
	
	--salida de frecuencia
	salida 		: out std_logic; --!Salida de frecuencia
	
	--entrada de 50MHZ
	clk_50Mhz 	: in std_logic --!Entrada de reloj de 50Mhz.
);
end entity;

--!\brief Funcionamiento del generador, instanciacion de componentes y conexion de señales.
--!
--!implemetancion de componentes.
architecture func of generador is
--!Señales internas
signal sinc_signls : std_logic_vector (1 downto 0); --!señales internas de señales.
signal frecs : std_logic_vector (4 downto 0);	--!señales internas de frecuencias.

--!Declaracion del componente sincX3 para la sincronizacion de las señales de entrada.
		--
--!Declaracion del componente divfrecuencias para la division y generacion de frecuencias internas
		component divfrecuencias
			port (
				--entrada de 50mhz
				clk50mhz	: 	in STD_LOGIC;
				
				--diferentes salidas de reloj
				clk1	:	out STD_LOGIC;
				clk2	:	out STD_LOGIC;
				--clk3	:	out STD_LOGIC;
				clk4	:	out STD_LOGIC;
				clk5	:	out STD_LOGIC
			);
		end component;
--!Declaracion del componente de seleccion de frecuencias Multiplexor
		component selFrecuencias
		port (
			--entradas de relojes
			ck1 	: 	in std_logic;	--sel = 001
			ck2	:	in std_logic;	--sel = 010
			--ck3	:	in std_logic;	--sel = 011
			ck4	:	in std_logic;	--sel = 100
			ck5	:	in std_logic;	--sel = 101
			
			-- entrada de seleccion
			sel_in		: 	in	std_logic_vector(1 downto 0);
			
			--salida 
			salida	:	out	std_logic	
		);
		end component;
--!Declaracion del componente de salida para la visualizacion de las frecuencias en display

			
begin
	
	seleccionador : selFrecuencias port map (
		ck1    => frecs(0),
		ck2    => frecs(1),
		--ck3    => frecs(2),
		ck4    => frecs(3),
		ck5    => frecs(4),
		sel_in => async_in,
		salida => salida
	);
	
	
	divisor : divfrecuencias port map(
		clk50mhz =>clk_50Mhz, 
		clk1   => frecs(0),
		clk2   => frecs(1),
		--clk3   => frecs(2),
		clk4   => frecs(3),
		clk5   => frecs(4)		
	);
end func;



--*********************************************************--

--entity generador is 
--port (
--	--entradas de seleccion
--	async_in 	: in std_logic_vector (1 downto 0); --!Vector de 3 bits de entradas asincronicas
--	reset_d		: in std_logic; --!Entrada de reset activo en bajo 
--	
--	--salida de frecuencia
--	salida 		: out std_logic; --!Salida de frecuencia
--	
--	--entrada de 50MHZ
--	clk_50Mhz 	: in std_logic --!Entrada de reloj de 50Mhz.
--);
--end entity;
--
----!\brief Funcionamiento del generador, instanciacion de componentes y conexion de señales.
----!
----!implemetancion de componentes.
--architecture func of generador is
----!Señales internas
--signal sinc_signls : std_logic_vector (1 downto 0); --!señales internas de señales.
--signal frecs : std_logic_vector (4 downto 0);	--!señales internas de frecuencias.
--
----!Declaracion del componente sincX3 para la sincronizacion de las señales de entrada.
--		component sincX3
--			generic (ancho: integer:=2);
--			port (
--				--entrada de reloj
--				clk_in : in std_logic; --entrada a los 0,1Hz
--				
--				--vector de entradas asincronicas
--				async_in : in std_logic_vector(ancho-1 downto 0);
--				
--				--reset
--				reset : in std_logic;
--				
--				--vector de salidas asincronicas
--				sync_out : out std_logic_vector(ancho-1 downto 0)
--			);
--		end component;
----!Declaracion del componente divfrecuencias para la division y generacion de frecuencias internas
--		component divfrecuencias
--			port (
--				--entrada de 50mhz
--				clk50mhz	: 	in STD_LOGIC;
--				
--				--diferentes salidas de reloj
--				clk1	:	out STD_LOGIC;
--				clk2	:	out STD_LOGIC;
--				--clk3	:	out STD_LOGIC;
--				clk4	:	out STD_LOGIC;
--				clk5	:	out STD_LOGIC
--			);
--		end component;
----!Declaracion del componente de seleccion de frecuencias Multiplexor
--		component selFrecuencias
--		port (
--			--entradas de relojes
--			ck1 	: 	in std_logic;	--sel = 001
--			ck2	:	in std_logic;	--sel = 010
--			--ck3	:	in std_logic;	--sel = 011
--			ck4	:	in std_logic;	--sel = 100
--			ck5	:	in std_logic;	--sel = 101
--			
--			-- entrada de seleccion
--			sel_in		: 	in	std_logic_vector(1 downto 0);
--			
--			--salida 
--			salida	:	out	std_logic	
--		);
--		end component;
----!Declaracion del componente de salida para la visualizacion de las frecuencias en display
--
--			
--begin
--	
--	seleccionador : selFrecuencias port map (
--		ck1    => frecs(0),
--		ck2    => frecs(1),
--		--ck3    => frecs(2),
--		ck4    => frecs(3),
--		ck5    => frecs(4),
--		sel_in => sinc_signls,
--		salida => salida
--	);
--	
--	entradas : sincX3 port map (
--		async_in => async_in, 
--		clk_in 	=> clk_50Mhz, 
--		reset 	=> reset_d, 
--		sync_out => sinc_signls	
--	);
--	
--	divisor : divfrecuencias port map(
--		clk50mhz =>clk_50Mhz, 
--		clk1   => frecs(0),
--		clk2   => frecs(1),
--		--clk3   => frecs(2),
--		clk4   => frecs(3),
--		clk5   => frecs(4)		
--	);
--end func;