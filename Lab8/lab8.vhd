LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY lab8 IS
    PORT(set_n, clk, reset_n, S : in STD_LOGIC;
	      min_value : IN STD_LOGIC_VECTOR (9 downto 0);
	      HEX2, HEX1, HEX0 : OUT STD_LOGIC_VECTOR(6 downto 0)
			);
END lab8;

ARCHITECTURE timer OF lab8 IS

    -- components here
    COMPONENT delay_unit IS
	     PORT(clk, reset_n : IN STD_LOGIC;
		       flag : out STD_LOGIC;
				 max_value : UNSIGNED(23 downto 0)
				 );
	 END COMPONENT;
	 
	 COMPONENT counter IS
	     PORT(set_n, enable, clk, reset_n : IN STD_LOGIC;
		       min_value : IN UNSIGNED(9 downto 0);
		       count : OUT STD_LOGIC_VECTOR(9 downto 0)
				 );
	 END COMPONENT;
	 
	 COMPONENT hex_displayer IS
	  PORT(in_num : in STD_LOGIC_VECTOR(9 downto 0);
		    HEX2, HEX1, HEX0 : out STD_LOGIC_VECTOR (6 downto 0)
			 );
	 END COMPONENT;
	 
    --signals go here
	 signal flag : std_logic;
	 signal count : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	 signal max_value : UNSIGNED(23 downto 0) := (others => '0');
	 constant hundred_ns_count : unsigned(23 downto 0) := X"000004";
	 constant hundred_ms_count : unsigned(23 downto 0) := X"4C4B3F";

BEGIN
	--logic
   PROCESS (s)
	BEGIN
	    CASE s IS
		     WHEN '1' => max_value <= hundred_ms_count;
			  WHEN '0' => max_value <= hundred_ns_count;
			  WHEN OTHERS => max_value <= hundred_ms_count;
		 END CASE;
	END PROCESS;
					 
    -- port map
	 U0 : delay_unit PORT MAP (max_value => max_value,
	                           clk => clk,
										reset_n => reset_n,
										flag => flag
										);
	 U1 : counter PORT MAP (set_n => set_n,
	                        enable => flag,
									clk => clk,
									min_value => unsigned(min_value),
									reset_n => reset_n,
									count => count
									);
	 U2 : hex_displayer PORT MAP (HEX2 => HEX2,
	                              HEX1 => HEX1,
											HEX0 => HEX0,
											in_num => count
											);
											

    
	 
	 
	 
END timer;