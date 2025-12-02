library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity shift_reg is
  generic (wide : integer := 4);
  port (
    clk, reset_n, serial_in : in std_logic;
    serial_out              : out std_logic);
end shift_reg;

architecture rtl of shift_reg is
  signal shift : std_logic_vector(wide - 1 downto 0);
begin
  shifter : process (clk, reset_n)
  begin
    if (reset_n = '0') then
      shift <= "0000";
    elsif (rising_edge(clk)) then
      shift(shift'left downto shift'right + 1) <= shift(shift'left - 1 downto shift'right);
      shift(shift'right)                       <= serial_in;
    end if;
  end process;
  serial_out <= shift(shift'left);

end rtl;