library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity rps00 is
  port(
       clkrps: in std_logic;
	   resetr: in std_logic;
	   inPar: in std_logic_vector(7 downto 0);
       outs: out std_logic);
end rps00;

architecture rps0 of rps00 is
signal sinpar: std_logic_vector(7 downto 0);
begin
   prps: process(clkrps, resetr)
   begin
      if (clkrps'event and clkrps = '1') then
	     case resetr is
		    when '0' =>
			   sinpar <= inPar;
			when '1' =>
			   sinpar(7) <= '0';
			   sinpar(6 downto 0) <= sinpar(7 downto 1);
			   outs <= sinpar(0);
			when others => null;
		 end case;
	  end if;
   end process prps;
end rps0;