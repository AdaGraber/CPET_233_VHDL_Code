LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY hex_displayer IS
	     PORT(in_HEX : in STD_LOGIC_VECTOR(7 downto 0);
		       out_HEX : out STD_LOGIC_VECTOR (6 downto 0)
				 );
END hex_displayer;

ARCHITECTURE output OF hex_displayer IS

BEGIN
		display : PROCESS(in_HEX)
			BEGIN
				 	CASE in_HEX IS
				      WHEN "00000000" => out_HEX <= "1000000";
						WHEN "00000001" => out_HEX <= "1111001";
						WHEN "00000010" => out_HEX <= "0100100";
						WHEN "00000011" => out_HEX <= "0110000";
						WHEN "00000100" => out_HEX <= "0011001";
						WHEN "00000101" => out_HEX <= "0010010";
						WHEN "00000110" => out_HEX <= "0000010";
						WHEN "00000111" => out_HEX <= "1111000";
						WHEN "00001000" => out_HEX <= "0000000";
						WHEN "00001001" => out_HEX <= "0011000";
						WHEN OTHERS => out_HEX <= "0000000";
					END CASE;
				END PROCESS;
END output;