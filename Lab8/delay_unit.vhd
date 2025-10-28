LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY delay_unit IS
    PORT(max_value : UNSIGNED(23 downto 0);
	      clk, reset_n : IN STD_LOGIC;
			flag : OUT STD_LOGIC
			);
END delay_unit;

ARCHITECTURE behave of delay_unit IS
    SIGNAL count : unsigned(23 downto 0);
BEGIN
    --count up
	 PROCESS(clk, reset_n, max_value) IS
	 BEGIN
	     IF(reset_n = '0') THEN
		      count <= (others => '0');
		  ELSIF (rising_edge(clk)) THEN
		      if(count = max_value) then
				    count <= (others => '0');
				else
				    count <= count + 1;
				end if;
		  END IF;
	 END PROCESS;

    --turn on flag when timer reaches its max value
    PROCESS(clk, reset_n, max_value) IS
	 BEGIN
	     if(reset_n = '0') THEN
		      flag <= '0';
		  ELSIF(rising_edge(clk)) then
		      IF(count = max_value) THEN
				    flag <= '1';
				ELSE
				    flag <= '0';
				end if;
			END IF;
	END PROCESS;
	 
END behave;