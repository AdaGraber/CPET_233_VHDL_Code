library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity sixteen_bit_shift is
  port (
    SH_LD, shift_dir, serial_in, reset_n, clk : in std_logic;
    Din                                       : in std_logic_vector(15 downto 0);
    serial_out                                : out std_logic
  );
end sixteen_bit_shift;

architecture behave of sixteen_bit_shift is
  constant reset_data : std_logic_vector(15 downto 0) := "0000000000000000";
  signal data         : std_logic_vector(15 downto 0) := reset_data; --data to be stored in
begin

  --begin logic for the whole shifter
  shifter : process (SH_LD, shift_dir, reset_n, clk)
  begin
    --async reset to 0, see const above
    if (reset_n = '0') then
      data <= reset_data;
    elsif (rising_edge(clk)) then
      --check if SHIFT/LOAD is 1 or 0. if 1 we are shifting and if 0 we are loading
      if (SH_LD = '1') then
        --check if shift_dir is 1 or 0. if 1 we are doing a right shift, if 0 we are doing a left shift
        if (shift_dir = '1') then
          data(14 downto 0) <= data(15 downto 1);
          data(15)          <= serial_in;
          serial_out        <= data(0);
        elsif (shift_dir = '0') then
          data(15 downto 1) <= data(14 downto 0);
          data(0)           <= serial_in;
          serial_out        <= data(15);
        end if;
      elsif (SH_LD = '0') then
        --parallel load in of whatever Din is
        data(15 downto 0) <= Din(15 downto 0);
      end if;
    end if;
  end process;
end behave;