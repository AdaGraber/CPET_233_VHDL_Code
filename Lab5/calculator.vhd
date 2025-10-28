library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY calculator IS 
    Port(
	       in_A, in_B : IN STD_LOGIC_VECTOR(3 downto 0); 
			 OP : IN STD_LOGIC_VECTOR(1 downto 0);
			 Result : OUT STD_LOGIC_VECTOR(7 downto 0)
			 );

END calculator;

ARCHITECTURE calc OF calculator IS
    SIGNAL a_sign, b_sign : SIGNED(3 downto 0);
BEGIN

--mode selection
    op_sel : PROCESS(OP, in_A, in_B)
	 BEGIN
	 a_sign <= SIGNED(in_a);
	 b_sign <= SIGNED(in_b);
	     CASE OP IS 
		      WHEN "00" => Result <= STD_LOGIC_VECTOR((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) + (b_sign(3) & b_sign(3) & b_sign(3) & b_sign));
				WHEN "01" => Result <= STD_LOGIC_VECTOR((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) - (b_sign(3) & b_sign(3) & b_sign(3) & b_sign));
				WHEN "10" => Result <= STD_LOGIC_VECTOR(a_sign * b_sign);
				WHEN "11" => Result <= STD_LOGIC_VECTOR((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) / (b_sign(3) & b_sign(3) & b_sign));
				WHEN OTHERS => Result <= "00000000";
		  END CASE;
	 END PROCESS;
END calc;