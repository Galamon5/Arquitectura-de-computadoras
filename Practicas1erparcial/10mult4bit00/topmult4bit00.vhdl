LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY LATTICE;
USE LATTICE.ALL;
LIBRARY MACHXO2;
USE MACHXO2.ALL;
USE packagemult4bit00.ALL;

ENTITY topmult4bit00 IS
	PORT(Ai, Bi : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 So : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END topmult4bit00;

ARCHITECTURE topmult4bit0 OF topmult4bit00 IS
SIGNAL SA2, SA3, SA4, S1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SA, CS1, CS2, CS3, S2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL AUX : STD_LOGIC;
BEGIN
	UM00 : and00 PORT MAP(Aa => Ai(3),
						  Ba => Bi(0),
						  Ya => SA(2)
						  );
	UM01 : and00 PORT MAP(Aa => Ai(2),
						  Ba => Bi(0),
						  Ya => SA(1)
						  );
	UM02 : and00 PORT MAP(Aa => Ai(1),
						  Ba => Bi(0),
						  Ya => SA(0)
						  );
	UM03 : and00 PORT MAP(Aa => Ai(0),
						  Ba => Bi(0),
						  Ya => So(0)
						  );
	UM04 : and00 PORT MAP(Aa => Ai(0),
						  Ba => Bi(1),
						  Ya => SA2(0)
						  );
	UM05 : and00 PORT MAP(Aa => Ai(1),
						  Ba => Bi(1),
						  Ya => SA2(1)
						  );
	UM06 : and00 PORT MAP(Aa => Ai(2),
						  Ba => Bi(1),
						  Ya => SA2(2)
						  );
	UM07 : and00 PORT MAP(Aa => Ai(3),
						  Ba => Bi(1),
						  Ya => SA2(3)
						  );
	UM08 : topfa00 PORT MAP(C00 => CS1(2),
							 A00 => SA2(3),
							 B00 => '0',
							 C01 => S1(3),
							 S00 => S1(2)
							 );
	UM09 : topfa00 PORT MAP(C00 => CS1(1),
							 A00 => SA2(2),
							 B00 => SA(2),
							 C01 => CS1(2),
							 S00 => S1(1)
							 );
	UM010 : topfa00 PORT MAP(C00 => CS1(0),
							 A00 => SA2(1),
							 B00 => SA(1),
							 C01 => CS1(1),
							 S00 => S1(0)
							 );
	UM011 : topfa00 PORT MAP(C00 => '0',
							 A00 => SA2(0),
							 B00 => SA(0),
							 C01 => CS1(0),
							 S00 => So(1)
							 );
	UM012 : and00 PORT MAP(Aa => Ai(0),
						  Ba => Bi(2),
						  Ya => SA3(0)
						  );
	UM013 : and00 PORT MAP(Aa => Ai(1),
						  Ba => Bi(2),
						  Ya => SA3(1)
						  );
	UM014 : and00 PORT MAP(Aa => Ai(2),
						  Ba => Bi(2),
						  Ya => SA3(2)
						  );
	UM015 : and00 PORT MAP(Aa => Ai(3),
						  Ba => Bi(2),
						  Ya => SA3(3)
						  );
	UM016 : topfa00 PORT MAP(C00 => CS2(2),
							 A00 => SA3(3),
							 B00 => S1(3),
							 C01 => AUX,
							 S00 => S2(2)
							 );
	UM017 : topfa00 PORT MAP(C00 => CS2(1),
							 A00 => SA3(2),
							 B00 => S1(2),
							 C01 => CS2(2),
							 S00 => S2(1)
							 );
	UM018 : topfa00 PORT MAP(C00 => CS2(0),
							 A00 => SA3(1),
							 B00 => S1(1),
							 C01 => CS2(1),
							 S00 => S2(0)
							 );
	UM019 : topfa00 PORT MAP(C00 => '0',
							 A00 => SA3(0),
							 B00 => S1(0),
							 C01 => CS2(0),
							 S00 => So(2)
							 );
	UM020 : and00 PORT MAP(Aa => Ai(0),
						  Ba => Bi(3),
						  Ya => SA4(0)
						  );
	UM021 : and00 PORT MAP(Aa => Ai(1),
						  Ba => Bi(3),
						  Ya => SA4(1)
						  );
	UM022 : and00 PORT MAP(Aa => Ai(2),
						  Ba => Bi(3),
						  Ya => SA4(2)
						  );
	UM023 : and00 PORT MAP(Aa => Ai(3),
						  Ba => Bi(3),
						  Ya => SA4(3)
						  );
	UM024 : topfa00 PORT MAP(C00 => CS3(2),
							 A00 => SA4(3),
							 B00 => AUX,
							 C01 => So(7),
							 S00 => So(6)
							 );
	UM025 : topfa00 PORT MAP(C00 => CS3(1),
							 A00 => SA4(2),
							 B00 => S2(2),
							 C01 => CS3(2),
							 S00 => So(5)
							 );
	UM026 : topfa00 PORT MAP(C00 => CS3(0),
							 A00 => SA4(1),
							 B00 => S2(1),
							 C01 => CS3(1),
							 S00 => So(4)
							 );
	UM027 : topfa00 PORT MAP(C00 => '0',
							 A00 => SA4(0),
							 B00 => S2(0),
							 C01 => CS3(0),
							 S00 => So(3)
							 );
END topmult4bit0;