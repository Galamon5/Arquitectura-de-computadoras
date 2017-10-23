
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity gates is
	port(
			
			A: in std_logic_vector(7 downto 0);
			B: in std_logic_vector(7 downto 0);
			Y: out std_logic_vector(7 downto 0);
			S: in std_logic_vector(2 downto 0)
			);
	end gates;
	
	
architecture gate of gates is
begin
		
	with S select

		Y	<= 	A and B  when "000",
		 	  	A or B   when "001",
				A nand B when "010",
				A nor B  when "011",
				A xor B  when "100",
				A xnor B when "101",
				not A    when "110",
			   "00000000" when others;
	
end gate;