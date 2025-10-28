-------------------------------------------------------------------------------
-- Prof Dickens
-- Conditional Signal Assignment Example
-------------------------------------------------------------------------------
 
 -- Libraries 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity lab3 is
  port (
    w, x, y, z  : in  std_logic; 
	 a, b, c, d, e, f, g : OUT std_logic;
	 a_sel, b_sel, c_sel, d_sel, e_sel, f_sel, g_sel : out std_logic;
    a_cond, b_cond, c_cond, d_cond, e_cond, f_cond, g_cond          : out std_logic
  );  
end lab3;  

architecture behave of lab3  is

signal inputs : std_logic_vector(3 downto 0);
signal sel_inputs : std_logic_vector(3 downto 0);

begin
--fuckass unsimplified shit
    g <= (NOT W AND X AND Y AND Z) OR (NOT Y AND NOT X AND NOT Z) OR (NOT Y AND NOT Z AND NOT W) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y); 
	 f <= (NOT W AND X AND NOT Y) OR (NOT W AND Y AND NOT Z) OR (NOT W AND Y AND NOT X) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y);
	 e <= (NOT W AND NOT X AND Y AND NOT Z) OR (NOT W AND NOT Y AND X) OR (NOT Y AND Z AND NOT X) OR (NOT Y AND Z AND NOT W) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y);
	 d <= (NOT W AND NOT X AND Y AND NOT Z) OR (NOT W AND NOT Y AND X) OR (NOT Y AND Z AND NOT X) OR (NOT Y AND Z AND NOT W) OR
			(W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y);
	 c <= (NOT W AND NOT X AND Y AND Z) OR (NOT W AND X AND NOT Y AND Z) OR (NOT W AND X AND Y AND NOT Z) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y) OR (NOT W AND NOT X AND Y AND NOT Z);
	 b <= (NOT W AND NOT X AND Y AND NOT Z) OR (NOT W AND X AND NOT Y AND Z) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y);
	 a <= (NOT W AND NOT X AND Y AND NOT Z) OR (NOT W AND X AND NOT Y) OR (W AND NOT X AND NOT Y AND Z) OR
	      (W AND Y AND NOT Z) OR (W AND Y AND NOT X) OR (W AND X AND Z) OR (W AND X AND NOT Y);

--select inputs design 
    sel_inputs <= w & x & y & z;
	WITH sel_inputs select
	    a_sel <= '1' WHEN "0010" | "0100" | "0101" | "1001" | "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    b_sel <= '1' WHEN "0010" | "0101"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    c_sel <= '1' WHEN "0010" | "0011" | "0101" | "0110"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    d_sel <= '1' WHEN "0001" | "0010" | "0100" | "0101" | "1001"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    e_sel <= '1' WHEN "0001" | "0010" | "0100" | "0101" | "1001"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    f_sel <= '1' WHEN "0010" | "0011" | "0100" | "0101" | "0110"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
	WITH sel_inputs select
	    g_sel <= '1' WHEN "0000" | "0100" | "0111" | "1000"| "1010" | "1011" | "1100" | "1101" | "1110" | "1111",
		         '0' WHEN OTHERS;   
				 
				 
-- cond inputs design
   inputs <= w & x & y & z; -- concatenation combines bits into a vector

   g_cond <= '1' WHEN inputs = "0000" or inputs = "0100" or inputs = "0111" or inputs = "1000" 
	          or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111" ELSE
            '0';
   f_cond <= '1' WHEN inputs = "0010" or inputs = "0011" or inputs = "0100" or inputs = "0101" or inputs = "0110"
             or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"	ELSE
            '0';
   e_cond <= '1' WHEN inputs = "0001" or inputs = "0010" or inputs = "0100" or inputs = "0101" or inputs = "1001" 
	              or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"ELSE
            '0';
   d_cond <= '1' WHEN inputs = "0001" or inputs = "0010" or inputs = "0100" or inputs = "0101" or inputs = "1001"
              or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"	ELSE
            '0';
   c_cond <= '1' WHEN inputs = "0010" or inputs = "0011" or inputs = "0101" or inputs = "0110" 
	           or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"ELSE
            '0';
   b_cond   <= '1' WHEN inputs = "0010" or inputs = "0101" 
	             or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"ELSE
            '0';
   a_cond <= '1' WHEN inputs = "0010" or inputs = "0100" or inputs = "0101" or inputs = "1001" 
	           or inputs = "1010" or inputs = "1011" or inputs = "1100" or inputs = "1101" or inputs = "1110" or inputs = "1111"ELSE
            '0';
          
   

end behave;

