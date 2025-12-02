library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity hw6 is 
	PORT(sela, selb, a, b : in STD_LOGIC;
	     y : out STD_LOGIC);
end hw6;

architecture behave of hw6 is

begin

mux:process(sela, selb, a, b)
    begin
	     if(sela = '1') then
		      y <= a;
			elsif(selb = '1') then 
			   y <= b;
			end if;
    end process mux;
	 
end behave;