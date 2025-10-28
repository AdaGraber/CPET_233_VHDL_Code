library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY lab7 IS
    PORT (A, B : in STD_LOGIC_VECTOR(3 downto 0);
	       OP : in STD_LOGIC_VECTOR (1 downto 0);
			 HEX0, HEX1, HEX2, HEX3 : out STD_LOGIC_VECTOR(6 downto 0)
			 );
END lab7;

ARCHITECTURE calculator OF lab7 IS

SIGNAL H0S, H1s, H2s, H3S : STD_LOGIC_VECTOR(7 downto 0);

    COMPONENT result_maker IS
	    PORT(in_A, in_B : IN STD_LOGIC_VECTOR (3 downto 0);
		   in_OP : IN STD_LOGIC_VECTOR (1 downto 0);
		   H0O, H1O, H2O : out STD_LOGIC_VECTOR (7 downto 0);
			H3O : OUT STD_LOGIC_VECTOR (6 downto 0)
			);
	 END COMPONENT;
	 
	 COMPONENT hex_displayer IS
	  PORT(in_HEX : in STD_LOGIC_VECTOR(7 downto 0);
		       out_HEX : out STD_LOGIC_VECTOR (6 downto 0)
				 );
	 END COMPONENT;
	 
	 
BEGIN

    CALC : result_maker PORT MAP (in_A => A,
	                               in_B => B,
											 in_OP => OP,
											 H0O =>H0S,
											 H1O => H1S,
											 H2O => H2S,
											 H3O => HEX3);

	HEX2_Display : hex_displayer PORT MAP (in_HEX => H2S,
	                                       out_HEX => HEX2
														);
	HEX1_Display : hex_displayer PORT MAP (in_HEX => H1S,
	                                       out_HEX => HEX1
														);
	HEX0_Display : hex_displayer PORT MAP (in_HEX => H0S,
	                                       out_HEX => HEX0
														);
END CALCULATOR;