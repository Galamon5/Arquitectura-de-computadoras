library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity ci00 is
	port(
		entrada: in std_logic_vector(7 downto 0);
		aux: in std_logic;
		set: in std_logic;
		clr: in std_logic;
		clk: in std_logic;
		salida: inout std_logic_vector(7 downto 0));
end ci00;
	
architecture ci0 of ci00 is
begin
	process (clk)
	begin
		if(clk'event and clk='1') then
			if (clr='1') then
				salida <= "00000000";
			else
				if (set='1') then 
					salida <= entrada;
				else
					salida(1) <= salida(0);
					salida(2) <= salida(1);
					salida(3) <= salida(2);
					salida(4) <= salida(3);
					salida(5) <= salida(4);
					salida(6) <= salida(5);
					salida(7) <= salida(6);
					salida(0) <= aux;
				end if;
			end if;
		end if;
	end process;
end ci0;
			
			