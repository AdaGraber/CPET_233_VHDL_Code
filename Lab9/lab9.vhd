library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity lab9 is
  port (
    S, clk, reset_n                    : in std_logic;
    HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
  );
end lab9;

architecture soda of lab9 is
  -- components here
  component delay_unit is
    port (
      clk, reset_n : in std_logic;
      flag         : out std_logic;
      max_value    : UNSIGNED(23 downto 0)
    );
  end component;

  component shifter is
    port (
      enable, clk, reset_n   : in std_logic;
      H5, H4, H3, H2, H1, H0 : out std_logic_vector(6 downto 0)
    );
  end component;
  -- signals here
  signal flag                         : std_logic;
  signal max_value                    : UNSIGNED(23 downto 0) := (others => '0');

  --consts here
  constant hundred_ns_count : unsigned(23 downto 0) := X"000004";
  constant hundred_ms_count : unsigned(23 downto 0) := X"4C4B3F";
begin

  --mode select logic
  process (s)
  begin
    case s is
      when '1'    => max_value    <= hundred_ms_count;
      when '0'    => max_value    <= hundred_ns_count;
      when others => max_value <= hundred_ms_count;
    end case;
  end process;

  --port maps
  --shifter
  U0 : shifter PORT MAP(
    enable => flag,
    clk => clk,
    reset_n => reset_n,
    H5 => HEX5,
    H4 => HEX4,
    H3 => HEX3,
    H2 => HEX2,
    H1 => HEX1,
    H0 => HEX0
  );

  -- delay unit
  U1 : delay_unit PORT MAP(
    flag => flag,
    clk => clk,
    reset_n => reset_n,
    max_value => max_value
  );
end soda;