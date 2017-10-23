library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package package0101me00 is

   component toposc00
     port(
	   cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
   end component;
   
   component rps00
     port(
       clkrps: in std_logic;
	   resetr: in std_logic;
	   inPar: in std_logic_vector(7 downto 0);
       outs: out std_logic);
   end component;
   
   component sec0101me00
      port(
        clksec: in std_logic;
		resetsec: in std_logic;
		inXsec: in std_logic;
        outZ: out std_logic);
   end component;
   
end package0101me00;