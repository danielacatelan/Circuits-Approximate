library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Soma_AXA1_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
  
);
end Soma_AXA1_1;

architecture Somador1Bit of Soma_AXA1_1 is
 signal c1, c2: std_logic; -- auxiliares
begin
  c1 <= (a xor b) and cin;
  c2 <= (not a) and (not b);
  cout <= c1 nor c2;
  s <= c1 nor c2;
end Somador1Bit;
