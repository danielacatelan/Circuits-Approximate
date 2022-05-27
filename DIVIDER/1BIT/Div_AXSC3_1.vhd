-- DIVISOR AXSC3 DE 1 BIT

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Div_AXSC3_1 is
port
(
  bin: in bit;
  x: in bit; --A
  y: in bit; --B
  q: in bit;
  bout: out bit;
  r: out bit); --S
end Div_AXSC3_1;

architecture Div1Bit of Div_AXSC3_1 is
begin
  r <= ((x xnor (y xor q)) and bin) or ((not (x)) and (y xor q));
 bout <= ((x xnor (y xor q)) and bin) or ((not (x)) and (y xor q));
end Div1Bit;