library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Soma_AMA4_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Soma_AMA4_1;
architecture Somador1Bit of Soma_AMA4_1 is
begin
  s <= (not (a) and cin) or (b and cin);
  cout <= a ;
end Somador1Bit;


