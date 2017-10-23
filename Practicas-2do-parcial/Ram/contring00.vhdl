library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity contring00 is
  port(
       clkcr: in std_logic;
	   enablecr: in std_logic;
       outcr: out std_logic_vector(3 downto 0));
end contring00;

architecture contring0 of contring00 is
signal rwcr: std_logic_vector(3 downto 0);
begin
  pring: process(clkcr)
     begin
	   if (clkcr'event and clkcr = '1') then
	      case enablecr is
		     when '0' =>
			    rwcr <= "1110";
				outcr <= "1111";
			 when '1' =>
			    rwcr(0) <= rwcr(3);
				rwcr(3 downto 1) <= rwcr(2 downto 0);
				outcr <= rwcr;
			 when others => null;
		  end case;
	   end if;
     end process pring;
end contring0;