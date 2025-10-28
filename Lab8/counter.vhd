LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY counter IS 
    PORT(set_n, enable, clk, reset_n : IN STD_LOGIC;
	      min_value : IN UNSIGNED(9 downto 0);
	      count : OUT STD_LOGIC_VECTOR(9 downto 0)
			);
END counter;

ARCHITECTURE behave OF counter IS
    SIGNAL int_count : UNSIGNED (9 downto 0) := (others => '0');
    CONSTANT max_value : UNSIGNED(9 downto 0) := resize(X"3E7", 10);
BEGIN
    PROCESS(clk, reset_n, set_n)
	 BEGIN
	     IF(reset_n = '0') THEN
		      int_count <= "0000000000";
		  ELSIF (rising_edge(clk)) THEN
		      if(set_n = '0') THEN
				    int_count <= min_value;
				elsif (enable = '1') THEN
					if (int_count = MAX_VALUE) THEN
						int_count <= "0000000000";
					ELSE
						int_count <= int_count + "0000000001";
					END IF;
				END if;
		  END IF;
	 END PROCESS;
	 count <= STD_LOGIC_VECTOR(int_count);

END behave;
	 