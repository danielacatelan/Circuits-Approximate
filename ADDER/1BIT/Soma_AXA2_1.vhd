library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Soma_AXA2_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Soma_AXA2_1; 
architecture Somador1Bit of Soma_AXA2_1 is
begin
  cout <= ((a xor b)and cin) or (a and b);
  s <= a xnor b;
end Somador1Bit;
