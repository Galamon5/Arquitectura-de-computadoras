library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity sec0101me00 is   port(
        clksec: in std_logic;
		resetsec: in std_logic;
		inXsec: in std_logic;
        outZ: out std_logic);
end sec0101me00;

architecture sec0101me0 of sec0101me00 is
type estados is (A, B, C, D);
signal E_act, E_sig: estados;
begin
  ptrig: process(clksec, resetsec)
  variable aux: bit:='0';
  begin
      if (clksec'event and clksec = '1') then
    case resetsec is
	   when '0' =>
	      E_act <= A;
		  aux:='0';
	   when '1' =>
	      if (aux = '0') then
		     aux:='1';
	      else
		     E_act <= E_sig;
		  end if;
	   when others => null;
    end case;
	end if;
  end process ptrig;
  
  plogic: process(clksec, E_act)
  begin
    case resetsec is

	   when '1' =>
	       case E_act is
		      when A =>
			     if (inXsec = '1') then
				    E_sig <= A;
				 else
				    E_sig <= B;
				 end if;
			  when B =>
			     if (inXsec = '1') then
				    E_sig <= C;
				 else
				    E_sig <= B;
				 end if;
			  when C =>
			     if (inXsec = '1') then
				    E_sig <= A;
				 else
				    E_sig <= D;
				 end if;
			  when D => 
			     if (inXsec = '1') then
				    E_sig <= A;
				 else
				    E_sig <= B;
				 end if;
			  when others => null;
		   end case;
	   when others => null;
	end case;
  end process plogic;
  outZ <= '1' when E_act = D and inXsec = '1' else '0';
end sec0101me0;