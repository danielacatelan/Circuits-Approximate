-- DIVISOR APSC4 DE 1 BIT

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Div_APSC4_1 is
port
(
  bin: in bit;
  x: in bit; --A
  y: in bit; --B
  q: in bit;
  bout: out bit;
  r: out bit); --S
end Div_APSC4_1;

architecture Div1Bit of Div_APSC4_1 is
begin
  bout <= ((x xnor (y xor q)) and bin) or (not (x) and (y xor q));
  r <= (not (x) and (y xor q)) or ((y xor q) and bin) or (not(x) and bin) or (x and (not ((y xor q))) and (not(bin))) ;
end Div1Bit;