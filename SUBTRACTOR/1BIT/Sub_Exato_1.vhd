
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Sub_Exato_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Sub_Exato_1;

architecture Sub1Bit of Sub_Exato_1 is
begin
  cout <= (not(a) and b) or (not (a) and cin) or (b and cin);
  s <= a xor b xor cin ;
end Sub1Bit;

