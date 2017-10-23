library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.components.all;

entity arith_add04 is port(
	Aa : in std_logic_vector(3 downto 0);
	Ba : in std_logic_vector(3 downto 0);
	Ya : out std_logic_vector ( 3 downto 0 );
	Yb : out std_logic_vector ( 3 downto 0 ));
end arith_add04;

architecture arith_add4 of arith_add04 is
begin
	Ya <= Aa + Ba;
	Yb <= Aa - Ba;
end architecture;