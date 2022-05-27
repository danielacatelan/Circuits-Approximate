

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Adder_InXA3_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Adder_InXA3_1;
architecture Adder1Bit of Adder_InXA3_1 is
  signal c1, c2, c3 : std_logic;
begin
  c1 <= a xor b;
  c2 <= a and b;
  c3 <= c1 and cin;
  
  cout <= c2 or c3;
  s <= not (c2 or c3);
end Adder1Bit;
