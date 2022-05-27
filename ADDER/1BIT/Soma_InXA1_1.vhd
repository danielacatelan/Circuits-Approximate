library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Soma_InXA1_1 is
port
(
  cin: in std_logic;
  a: in std_logic;
  b: in std_logic;
  cout: out std_logic;
  s: out std_logic
);
end Soma_InXA1_1;
architecture Somador1Bit of Soma_InXA1_1 is
begin
  cout <= cin;
  s <= a xor b xor cin;
end Somador1Bit;