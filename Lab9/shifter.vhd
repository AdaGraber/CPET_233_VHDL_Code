library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity shifter is
  port (
    enable, clk, reset_n   : in std_logic;
    H5, H4, H3, H2, H1, H0 : out std_logic_vector(6 downto 0)
  );
end shifter;

architecture behave of shifter is
  --consts for letters
  constant letter_I : std_logic_vector(6 downto 0) := "1111001";
  constant letter_C : std_logic_vector(6 downto 0) := "1000110";
  constant letter_E : std_logic_vector(6 downto 0) := "0000110";
  constant letter_O : std_logic_vector(6 downto 0) := "1000000";
  constant letter_L : std_logic_vector(6 downto 0) := "1000111";
  constant letter_d : std_logic_vector(6 downto 0) := "0100001";
  constant letter_S : std_logic_vector(6 downto 0) := "0010010";
  constant letter_A : std_logic_vector(6 downto 0) := "0001000";
  constant letter_H : std_logic_vector(6 downto 0) := "0001001";
  constant letter_r : std_logic_vector(6 downto 0) := "0101111";
  constant blank    : std_logic_vector(6 downto 0) := "1111111";

  --arr for sentence
  type letter is array(natural range <>) of std_logic_vector(6 downto 0);
  constant start_sentence : letter(22 downto 0) := letter_I, letter_C, letter_E, blank, letter_C, letter_o, letter_L, letter_d, blank, letter_S, letter_O, letter_d, letter_A, blank, letter_S, letter_O, letter_d, letter_A, blank, letter_H, letter_E, letter_r, letter_E;
  signal sentence         : letter(22 downto 0) := start_sentence;
begin

  --process for shifting left and looping back around
  SHIFTER_LOOP : process (enable, clk, reset_n)
  begin
    if (reset_n = '0') then
      sentence <= start_sentence;
    elsif (rising_edge(clk)) then
        IF(enable = '1') THEN
            sentence(22 downto 1) <= sentence(21 downto 0);
            sentence(0)           <= sentence (22);            
        END IF;
    end if;
  end process;

  --output 22 to 17 to hex 5-0
  H5 <= sentence(22);
  H4 <= sentence(21);
  H3 <= sentence(20);
  H2 <= sentence(19);
  H1 <= sentence(18);
  H0 <= sentence(17);
end behave;