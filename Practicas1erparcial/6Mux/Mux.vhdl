library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity multiplex is

port (
	a,b,c: in std_logic_vector(2 downto 0);
     s: in std_logic_vector(2 downto 0);
     salida: out std_logic_vector(2 downto 0));
end entity;
	 

architecture Mult of multiplex is
begin

with s select

	salida <= 	a when "000",
		 	  	b when "001",
				c when "010",
				"000" when others;
				
end architecture;