library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity mux00 is
  port(
       incont: in std_logic_vector(3 downto 0);
       outbcd7: out std_logic_vector(6 downto 0));
end mux00;

architecture mux0 of mux00 is
begin
   pmux: process(incont)
     begin
	   case incont is
	     when "1110" =>
		    outbcd7 <= "0001000";
		 when "1101" =>
		    outbcd7 <= "1110001";
		 when "1011" =>
		    outbcd7 <= "0000001";
		 when "0111" =>
		    outbcd7 <= "1001000";
	     when others => null;
	   end case;
     end process pmux;
end mux0;