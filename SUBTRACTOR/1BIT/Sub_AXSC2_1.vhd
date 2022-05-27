
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Sub_AXSC2_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Sub_AXSC2_1;
architecture Sub1Bit of Sub_AXSC2_1 is
begin
 s <= (a xor b) or cin; 
 cout <= (a xor b) or cin; 
end Sub1Bit;