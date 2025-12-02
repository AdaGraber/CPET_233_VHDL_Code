library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity synchronizer_edge_detect is
  port (
    clk, reset_n                      : in std_logic;
    async_in                          : in std_logic;
    sync_out, rising_edg, falling_edg : out std_logic);
end synchronizer_edge_detect;

architecture behave of synchronizer_edge_detect is
  signal c1, c2, c3 : std_logic;
  signal wave_form  : std_logic_vector(2 downto 0);
begin

  detect : process (clk, reset_n) is
  begin
    if (reset_n = '0') then
      c1 <= '0';
      c2 <= '0';
      c3 <= '0';
    elsif (rising_edge(clk)) then
      c1 <= async_in;
      c2 <= c1;
      c3 <= c2;

    end if;
  end process;

  wave_form <= c1 & c2 & c3;
  sync_out  <= c3;
  with wave_form select
    rising_edg <= '1' when "001" | "011" | "010",
    '0' when others;
  with wave_form select
    falling_edg <= '1' when "110" | "100" | "010",
    '0' when others;
end behave;