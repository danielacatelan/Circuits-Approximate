
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Sub_APSC4_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Sub_APSC4_1;

architecture Sub1Bit of Sub_APSC4_1 is
begin
  cout <= ((a xnor b) and cin) or (not (a) and b);
  s <= (not (a) and b) or (b and cin) or (not(a) and cin) or (a and (not (b)) and (not(cin))) ;
end Sub1Bit;