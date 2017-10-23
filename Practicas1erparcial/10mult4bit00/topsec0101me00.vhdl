library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use package0101me00.all;

entity topsec0101me00 is
  port(
       clk0: inout std_logic;
	   cdiv00: in std_logic_vector(3 downto 0);
	   reset0: in std_logic;
	   inPar0: in std_logic_vector(7 downto 0);
	   inXsec0: in std_logic;
	   outs0: out std_logic;
       outZ0: out std_logic);
end topsec0101me00;

architecture topsec0101me0 of topsec0101me00 is
begin

  U01: toposc00 port map(outdiv0 => clk0,
                         cdiv0 => cdiv00);
  
  U02: rps00 port map(clkrps => clk0,
                      resetr => reset0,
					  inPar => inPar0,
                      outs => outs0);
  
  U03: sec0101me00 port map(clksec => clk0,
                            resetsec => reset0,
							inXsec => inXsec0,
                            outZ => outZ0);
 
end topsec0101me0;