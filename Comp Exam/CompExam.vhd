-- Ada Graber Competency Exam
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compexam IS
	PORT (D,E,F : IN STD_LOGIC;
	      X : OUT STD_LOGIC
	);
end compexam;

ARCHITECTURE name OF compexam IS
    signal inputs : STD_LOGIC_VECTOR(2 downto 0);
BEGIN
    inputs <= D & E & F; --concatenate DEF into a singular input to use
    log_circuit : PROCESS(inputs)
	     BEGIN
		      IF (inputs = "000") THEN X <= '1';
				ELSIF (inputs = "001") THEN X <= '1';
				ELSIF (inputs = "011") THEN X <= '1';
				ELSIF (inputs = "111") THEN X <= '1';
				ELSE X <= '0';
			END IF;
		END PROCESS;
END name;