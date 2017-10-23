library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use packagediv00.all;

entity registro is
port(	
		clr: in std_logic;
		indiv0: in std_logic_vector(3 downto 0); --controlar la velocidad del reloj
		outdiv0: inout std_logic; --pulso de reloj
		entrada: in std_logic_vector(7 downto 0); --entrada
		Key: in std_logic_vector(1 downto 0); --mux
		salida: inout std_logic_vector(7 downto 0); --salida
		limite: in std_logic_vector(2 downto 0);
		set: in std_logic);
end registro;
	
architecture registro00 of registro is
signal sclk: std_logic;signal scont: std_logic_vector(2 downto 0);

--signal Q: std_logic_vector(7 downto 0);

begin

	UD00: osc00 port map(osc_int => sclk);
  
	UD01: div00 port map(clkdiv => sclk,
                       indiv => indiv0,
                       outdiv => outdiv0);
  	

	operacion:process (clr,scont)
	begin
	if (outdiv0'event and outdiv0 ='1') then
			
			if (clr = '0' )then
				scont <= "000";
				--salida <= "00000000";
				salida <= entrada;
			else
				if set='1' then
					if(scont<limite) then
					scont <= scont + 1;
					salida(1) <= salida(0);
					salida(2) <= salida(1);
					salida(3) <= salida(2);
					salida(4) <= salida(3);
					salida(5) <= salida(4);
					salida(6) <= salida(5);
					salida(7) <= salida(6);
					salida(0) <= salida(0);
					else scont <= scont;
					end if;
				else
					if(scont<limite) then
					scont <= scont + 1;
					salida(0) <= salida(1);
					salida(1) <= salida(2);
					salida(2) <= salida(3);
					salida(3) <= salida(4);
					salida(4) <= salida(5);
					salida(5) <= salida(6);
					salida(6) <= salida(7);
					salida(7) <= salida(7);
					else scont <= scont;
					end if;

				end if;
	
			end if; --clear
		end if ;--clock

	end process operacion;
end registro00;
			
			
			
			
			
	
