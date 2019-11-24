library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
generic (
		data_length : natural := 8;
		addr_length : natural := 8
	);
	port (
		clk		:in std_logic;
		address 	:in std_logic_vector(addr_length-1 downto 0);
		data_out	:out std_logic_vector(data_length-1 downto 0)
	);
end rom;


architecture synth of rom is
	constant mem_size : natural := 2**addr_length;
	type mem_type is array (mem_size-1 downto 0) of std_logic_vector (data_length-1 downto 0);
	constant mem : mem_type :=
					(0 => x"4c", 1 => x"41" ,2 => x"42" , 3=> x"4f",
					4 => x"52" , 5 => x"4c" ,6 => x"54" , 7 => x"4f",
					8 => x"52" , 9 => x"49" ,10 => x"4f" , 11 => x"3a" ,
					12 => x"34" , 13 => x"20",  14 => x"43", 15 => x"6f", 16 => x"6d",
					17 => x"70",18 => x"6c",19 => x"65",20 => x"74",
					21 => x"61" ,22 => x"64",23 => x"6f",24 => x"20",25 => x"70",
					26 => x"6f",27 => x"72",28 => x"3a",29 => x"50",30 => x"65",
					31 => x"72",32 => x"20",33 => x"26",34 => x"20",35 => x"4c",
					36 => x"65",37 => x"6f",38 => x"04",39 => x"00",40 => x"00",
					41 => x"43", 42 => x"75",43 => x"72",44 => x"73",45 => x"6f",
					46 => x"20", 47 => x"31",48 => x"65",49 => x"72",50 => x"20",
					51 => x"45",52 => x"53",53 => x"43",54 => x"55",55 => x"45",
					56 => x"4c",57 => x"41",58 => x"20",59 => x"53",60 => x"45",
					61 => x"04",62 => x"00",63 => x"41",64 => x"20",65 => x"74",
					66 => x"6f",67 => x"64",68 => x"6f",69 => x"20",70 => x"63",
					71 => x"68",72 => x"61",73 => x"6e",74 => x"63",75 => x"68",
					76 => x"6f",77 => x"2c",78 => x"20",79 => x"6c",80 => x"65",
					81 => x"20", 82 => x"74", 83 => x"6f", 84 => x"63", 85 => x"61",
					86 => x"20", 87 => x"73", 88 => x"75", 89 => x"20", 90 => x"53",
					91 => x"61", 92 => x"6e", 93 => x"20", 94 => x"4d", 95 => x"61",
					96 => x"72", 97 => x"74", 98 => x"3a", 99 => x"6e", 100 => x"04",
					101 => x"00", 102 => x"4d", 103 => x"69", 104 => x"20", 105 => x"6d",
					106 => x"61", 107 => x"6d", 108 => x"61", 109 => x"20", 110 => x"6d",
					111 => x"65", 112 => x"20",113 => x"6d",114 => x"3a", 115 => x"61",
					116 => x"61", 117 =>  x"04",118 => x"00", others => x"00");					

begin
	rom_1 : process (clk)
		begin
			if rising_edge(clk) then
				data_out <=mem(to_integer(unsigned(address)));
			end if;
	end process rom_1;
end architecture synth;