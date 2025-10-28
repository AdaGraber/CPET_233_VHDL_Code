LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY result_maker IS
    PORT(in_A, in_B : IN STD_LOGIC_VECTOR (3 downto 0);
		   in_OP : IN STD_LOGIC_VECTOR (1 downto 0);
		   H0O, H1O, H2O : out STD_LOGIC_VECTOR (7 downto 0);
			H3O : OUT STD_LOGIC_VECTOR (6 downto 0)
			);
END result_maker;

ARCHITECTURE output OF result_maker IS
    SIGNAL a_sign, b_sign : SIGNED(3 downto 0);
	 SIGNAL result : SIGNED (7 downto 0);
	 SIGNAL Hundreds_Out : SIGNED (7 downto 0);
	 SIGNAL Tens_Out : SIGNED (7 downto 0);
	 SIGNAL abs_value : SIGNED (7 downto 0);
	 SIGNAL Ones_Out : SIGNED (7 downto 0);

BEGIN
	 a_sign <= SIGNED(in_a);
	 b_sign <= SIGNED(in_b);
--get a result
    op_sel : PROCESS(in_OP, a_sign, b_sign)
	 BEGIN

	     CASE in_OP IS 
		      WHEN "00" => Result <= ((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) + (b_sign(3) & b_sign(3) & b_sign(3) & b_sign(3) & b_sign));
				WHEN "01" => Result <= ((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) - (b_sign(3) & b_sign(3) & b_sign(3) & b_sign(3) & b_sign));
				WHEN "10" => Result <= (a_sign * b_sign);
				WHEN "11" => Result <= ((a_sign(3) & a_sign(3) & a_sign(3) & a_sign(3) & a_sign) / (b_sign(3) & b_sign(3) & b_sign));
				WHEN OTHERS => Result <= "00000000";
		  END CASE;
	 END PROCESS;

	 abs_val : PROCESS (result)
		BEGIN
		    IF(result(7) = '1') THEN
				abs_value <= ((not(result) + 1));
			 ELSE abs_value <= (result);
		END IF;
		END PROCESS;
	 -- calculations before assigning to hex
	Hundreds_Out <= (abs_value / "01100100");
	Tens_Out <= ((abs_value rem "01100100") / "00001010");
	Ones_Out <= (abs_value  rem "00001010");
	
	--assigning value to be displayed on each hex
	sign_select : PROCESS (result) 
	BEGIN
	    IF (result(7) = '1') THEN
		     H3O <= "0111111";
		 ELSIF (result(7) = '0') THEN
		     H3O <= "1111111";
		 END IF;
	END PROCESS;
	H2O <= std_logic_vector(Hundreds_Out);
	H1O <= std_logic_vector(Tens_Out);
	H0o <= std_logic_vector(Ones_Out);
END output;