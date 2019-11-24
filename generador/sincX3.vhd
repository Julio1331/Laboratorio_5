--!\file
--!\brief Descripcion de la entrada Sincronizadora de señales asincronicas para tres señales de entrada en paralelo
--!\authors Leotta Gaston \n Pereyra Julio

--!Biblioteca IEEE y componentes utilizados.
library IEEE;
--!componente general std_logic
use IEEE.STD_LOGIC_1164.ALL;
--!componente general unsigned
use ieee.std_logic_unsigned.all;
--!componente general numeric standard
use ieee.numeric_std.all;


--!\brief sincX3 es un Dispositivo de sincronizacion de tres entradas en paralelo
--!
--!sincX3 posee una entrada de reloj para la sincronizacion, 
--!un conjunto de entradas para datos asincronicos y salidas syncronicas, 3 en este caso.
--!Tambien posee un reset asincronico activo en bajo
--!\image html sincronizadorx3.png "Modulo sincronizador para 3 entradas asincronicas."
--!\image latex sincronizadorx3.eps "Modulo sincronizador para 3 entradas asincronicas."
entity sincX3 is
generic (ancho: integer:=2); --!ancho de bus para la entrada de datos.
port (
	--entrada de reloj
	clk_in : in std_logic; --!entrada a reloj	
	--vector de entradas asincronicas
	async_in : in std_logic_vector(ancho-1 downto 0); --!Vector de entrada de señales asincronicas	
	--reset
	reset : in std_logic;  --!Reset activo en bajo	
	--vector de salidas asincronicas
	sync_out : out std_logic_vector(ancho-1 downto 0) --!Vector de salidas sincronizadas
);
end entity;
--!\brief modulo de entradas sincronizadas para 3 bits
--!
--!Funcionamiento del modulo de entradas sincronizadas de 3 bits.
architecture func of sincX3 is
	--!Instanciaci´on de un modulo sincronizador simple.
	component sincronizador is
		port (--entradas
			data_async : in std_logic; --!Entrada de datos Asincrinico
			clk_in : in std_logic;		--! Entrada de señal de Reloj	
			rst	: in std_logic;		--! Entrada de Reset activo en bajo
			--salidas
			data_sync : out std_logic;	--! Salida de dato Sincronizado
			clk_out : out std_logic		--! Señal de reloj de Salida.
		);
	end component;

begin
	sinc_xx : for i in async_in'range generate
		buss:sincronizador port map(data_async => async_in(i), clk_in => clk_in, rst => reset, data_sync => sync_out(i));
	
	end generate sinc_xx;

end func;