library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity vending_machine is
  port (
    Nickel_in, Dime_in, Quarter_in, Dispense, Coin_return, clk, reset_n : in std_logic;
    Gatorade, Change_back                                               : out std_logic;
    HEX0, HEX1                                                          : out std_logic_vector(6 downto 0)
  );
end vending_machine;

architecture behave of vending_machine is
  type state_type is (WAIT1, Dime, Nickel, Quarter, Enough, Excess, Vend, Change);
  signal current_state, next_state : state_type;
  signal money                     : unsigned(6 downto 0);
  constant cent_75                 : unsigned(6 downto 0)  := "01001011";
  constant cent_25                 : unsigned (6 downto 0) := "0011001";
  constant cent_10                 : unsigned (6 downto 0) := "0001010";
  constant cent_05                 : unsigned (6 downto 0) := "0000101";

  signal tens_output : unsigned(6 downto 0) := (others => '0');
  signal ones_output : unsigned(6 downto 0) := (others => '0');
begin

  -- state sync
  sync : process (clk, reset_n)
  begin
    if (reset_n = '0') then
      current_state <= WAIT1;
    elsif (rising_edge(clk)) then
      current_state <= next_state;
    end if;
  end process;

  --transitional state
  comb : process (current_state, Nickel_in, Dime_in, Quarter_in, Dispense, Coin_return)
  begin
    case(current_state) is
      when WAIT1 => --state transitions from waiting state
      if (coin_return = '0') then
        next_state <= change;
      elsif (money >= cent_75) then
        next_state <= enough;
      elsif (dime_in = '1') then
        next_state <= Dime;
      elsif (quarter_in = '1') then
        next_state <= Quarter;
      elsif (nickel_in = '1') then
        next_state <= Nickel;
      end if;
      when DIME => --state for when a dime is put in
      if (money >= cent_75) then
        next_state <= Enough;
      elsif (money < cent_75) then
        next_state <= wait1;
      end if;
      when QUARTER => -- state for when a quarter is put in
      if (money >= cent_75) then
        next_state <= Enough;
      elsif (money < cent_75) then
        next_state <= wait1;
      end if;
      when NICKEL => --state for when a nickel is put in
      if (money >= cent_75) then
        next_state <= Enough;
      elsif (money < cent_75) then
        next_state <= wait1;
      end if;
      when ENOUGH => --state for when theres enough money in the machine
      if (dime_in = '1' or nickel_in = '1' or Quarter_in = '1') then
        next_state <= Excess;
      elsif (dispense = '1') then
        next_state <= Vend;
      elsif (coin_return = '1') then
        next_state <= Change;
      end if;
      when EXCESS =>
      if (dime_in = '1' or nickel_in = '1' or Quarter_in = '1') then
        next_state <= Excess;
      elsif (dispense = '1') then
        next_state <= Vend;
      elsif (coin_return = '1') then
        next_state <= Change;
      else
        next_state <= Enough;
      end if;
      when VEND =>
      if (money > "0000000") then
        next_state <= Change;
      else
        next_state <= Wait1;
      end if;
      when CHANGE =>
      next_state <= Wait1;
    end case;
  end process;

  --output logic for wait 
  waiting : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = wait1) then
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;
  --output logic for when dime is inserted
  out_dime : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = dime) then
        money       <= money + cent_10; --add 10 cents to the money counter
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;

  --output logic for when dime is inserted
  out_nickel : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = nickel) then
        money       <= money + cent_05; --add 5 cents to the money counter
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;

  --output logic for when dime is inserted
  out_quarter : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = quarter) then
        money       <= money + cent_25; --add 25 cents to the money counter
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;

  --output logic for when there is enough 
  enough_state : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = enough) then
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;

  --output logic for excess coins
  excess_state : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = excess) then
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '1'; -- turn on change back
      end if;
    end if;
  end process;

  --output logic for vending
  vending_state : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = vend) then
        money       <= money - cent_75; --remove 75 cents since we vended and there is enough
        gatorade    <= '1'; -- do not dispense gatorade
        change_back <= '0'; -- do not dispense change
      end if;
    end if;
  end process;

  --output logic for change
  change_state : process (clk)
  begin
    if (rising_edge(clk)) then
      if (next_state = Change) then
        money       <= "0000000"; --set money to 0 
        gatorade    <= '0'; -- do not dispense gatorade
        change_back <= '1'; -- dispense all change
      end if;
    end if;
  end process;
  --calculate tens and ones place to display money.
  tens_output <= money / cent_10; --using cent_10 as a const since it is just binary 10
  ones_output <= money rem cent_10;

  --display tens place on hex 1
  tens_display : process (tens_output)
  begin
    case tens_output is
      when "00000000" => HEX1 <= "1000000";
      when "00000001" => HEX1 <= "1111001";
      when "00000010" => HEX1 <= "0100100";
      when "00000011" => HEX1 <= "0110000";
      when "00000100" => HEX1 <= "0011001";
      when "00000101" => HEX1 <= "0010010";
      when "00000110" => HEX1 <= "0000010";
      when "00000111" => HEX1 <= "1111000";
      when "00001000" => HEX1 <= "0000000";
      when "00001001" => HEX1 <= "0011000";
      when others     => HEX1     <= "0000000";
    end case;
  end process;

  --display ones place on hex0
  ones_display : process (ones_output)
  begin
    case ones_output is
      when "00000000" => HEX0 <= "1000000";
      when "00000001" => HEX0 <= "1111001";
      when "00000010" => HEX0 <= "0100100";
      when "00000011" => HEX0 <= "0110000";
      when "00000100" => HEX0 <= "0011001";
      when "00000101" => HEX0 <= "0010010";
      when "00000110" => HEX0 <= "0000010";
      when "00000111" => HEX0 <= "1111000";
      when "00001000" => HEX0 <= "0000000";
      when "00001001" => HEX0 <= "0011000";
      when others     => HEX0     <= "0000000";
    end case;
  end process;
end behave;