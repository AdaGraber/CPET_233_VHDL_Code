
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity lab_4 is


	port (
		w, x, y, z :in std_logic;
		output_case, output_if : out STD_LOGIC_VECTOR(6 DOWNTO 0)
		
	);

	
end lab_4;
	
architecture lab4 of lab_4 is

signal inputs : std_logic_vector(3 downto 0);
CONSTANT ZERO : STD_logic_vector (6 downto 0) := "1000000";
CONSTANT ONE : STD_logic_vector (6 downto 0) := "1111001";
CONSTANT TWO : STD_logic_vector (6 downto 0) := "0100100";
CONSTANT FOUR : STD_logic_vector (6 downto 0) := "0011001";
CONSTANT NINE : STD_logic_vector (6 downto 0) := "0011000";
CONSTANT DASH : STD_logic_vector (6 downto 0) := "0111111";
CONSTANT BLANK : STD_logic_vector (6 downto 0) := "1111111";

begin

    inputs<= w & x & y & z;
	 
-- case statements
	ex_or: PROCESS(inputs) BEGIN
	 CASE inputs IS
		WHEN "0000" | "0111" | "1000" => output_case <= ZERO;
		WHEN "0001" => output_case <= NINE;
		WHEN "0010" | "0101" => output_case <= DASH;
		WHEN "0011" | "0110" => output_case <= TWO;
		WHEN "0100" => output_case <= ONE;
		WHEN "1001" => output_case <= FOUR;
		WHEN OTHERS => output_case <= BLANK;
	 END CASE;
	 END PROCESS;
	 
	--if statements
	PROCESS (inputs) BEGIN
		IF (inputs = "0000" OR inputs = "0111" OR inputs = "1000") THEN
			output_if <= ZERO;
		ELSIF (inputs = "0001") THEN
			output_if <= NINE;
		ELSIF (inputs = "0010" OR inputs = "0101") THEN
			output_if <= DASH;
		ELSIF (inputs = "0011" OR inputs = "0110") THEN
			output_if <= TWO;
		ELSIF (inputs = "0100") THEN
			output_if <= ONE;
		ELSIF (inputs = "1001") THEN
			output_if <= FOUR;
		ELSE output_if <= BLANK;
		END IF;
	END PROCESS;
			
end lab4;