library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab6 IS 
	PORT(in_num : in std_logic_vector(7 downto 0);
	     HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
		  );
end lab6;

ARCHITECTURE decimal_displayer OF lab6 IS 
    signal abs_value : UNSIGNED(7 downto 0);
	 signal hundreds_output : UNSIGNED(7 downto 0);
	 signal tens_remainder : unsigned(7 downto 0);
	 signal ones_remainder : unsigned(7 downto 0);
BEGIN

-- check if negative number or not
		neg_check : PROCESS(in_num)
		BEGIN
			IF (in_num(7) = '0') THEN
			    HEX3 <= "1111111";
			ELSE HEX3 <= "0111111";
		END IF;
		END PROCESS;

		
		-- get absolute value of the number
		abs_val : PROCESS (in_num)
		BEGIN
		    IF(in_num(7) = '1') THEN
				abs_value <= (unsigned(not(in_num) + 1));
			 ELSE abs_value <= unsigned(in_num);
		END IF;
		END PROCESS;
		
			     hundreds_output <= (abs_value / "01100100");
					    tens_remainder <= (abs_value rem "01100100") / ("00001010");
			    ones_remainder <= (abs_value rem "00001010");

		--display HEX2
		hundreds_display : PROCESS(hundreds_output)
		    BEGIN
				  CASE hundreds_output IS
				      WHEN "00000000" => HEX2 <= "1000000";
						WHEN "00000001" => HEX2 <= "1111001";
						WHEN "00000010" => HEX2 <= "0100100";
						WHEN "00000011" => HEX2 <= "0110000";
						WHEN "00000100" => HEX2 <= "0011001";
						WHEN "00000101" => HEX2 <= "0010010";
						WHEN "00000110" => HEX2 <= "0000010";
						WHEN "00000111" => HEX2 <= "1111000";
						WHEN "00001000" => HEX2 <= "0000000";
						WHEN "00001001" => HEX2 <= "0011000";
						WHEN OTHERS => HEX2 <= "0000000";
					END CASE;
				END PROCESS;
		
		--display HEX1
		tens_display : PROCESS(tens_remainder)
			BEGIN
				 	CASE tens_remainder IS
				      WHEN "00000000" => HEX1 <= "1000000";
						WHEN "00000001" => HEX1 <= "1111001";
						WHEN "00000010" => HEX1 <= "0100100";
						WHEN "00000011" => HEX1 <= "0110000";
						WHEN "00000100" => HEX1 <= "0011001";
						WHEN "00000101" => HEX1 <= "0010010";
						WHEN "00000110" => HEX1 <= "0000010";
						WHEN "00000111" => HEX1 <= "1111000";
						WHEN "00001000" => HEX1 <= "0000000";
						WHEN "00001001" => HEX1 <= "0011000";
						WHEN OTHERS => HEX1 <= "0000000";
					END CASE;
				END PROCESS;
		
		--display HEX0
		ones_display : PROCESS(ones_remainder)
			BEGIN
				 	CASE ones_remainder IS
				      WHEN "00000000" => HEX0 <= "1000000";
						WHEN "00000001" => HEX0 <= "1111001";
						WHEN "00000010" => HEX0 <= "0100100";
						WHEN "00000011" => HEX0 <= "0110000";
						WHEN "00000100" => HEX0 <= "0011001";
						WHEN "00000101" => HEX0 <= "0010010";
						WHEN "00000110" => HEX0 <= "0000010";
						WHEN "00000111" => HEX0 <= "1111000";
						WHEN "00001000" => HEX0 <= "0000000";
						WHEN "00001001" => HEX0 <= "0011000";
						WHEN OTHERS => HEX0 <= "0000000";
					END CASE;
				END PROCESS;
END decimal_displayer;