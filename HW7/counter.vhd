library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter IS
    PORT(count_direction, clk, reset_n : IN STD_LOGIC;
	      count : OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END counter;

ARCHITECTURE behave OF counter IS
    SIGNAL int_count : std_logic_vector (3 downto 0) := (others => '0');
BEGIN
     PROCESS(clk, reset_n, count_direction) 
	  BEGIN
	      IF (reset_n = '0') THEN
			    int_count <= "0000";
			ELSIF(rising_edge(clk)) THEN
			    if(count_direction = '0') THEN
				     if(int_count = "0000") THEN
					      int_count <= "0000";
					  ELSE
					      int_count <= int_count - "0001";
					  END IF;
				 ELSE
				     if(int_count = "1111") THEN
					      int_count <= "1111";
					  ELSE
					      int_count <= int_count + "0001";
					  END IF;     
				 END IF;
			END IF;
		END PROCESS;
		
		count <= int_count;
END behave;