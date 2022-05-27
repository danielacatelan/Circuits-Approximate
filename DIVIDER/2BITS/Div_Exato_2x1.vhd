-- Chen(2016) 2x1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Div_Exato_2x1 is
 port(
  x: in bit_vector(1 downto 0);
  y: in bit;
  bout: out bit;
  r: out bit);
 end Div_Exato_2x1;

architecture Div2x1 of Div_Exato_2x1 is

component Div_Exato_1
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

--signal saida: bit_VECTOR(3 downto 0); --sinal auxiliar da and da correcao
signal aux: bit; --sinal auxiliar do q
signal quoc: bit; --sinal auxiliar
--signal resto: bit; --sinal auxiliar
signal cout: bit; --sinal auxiliar

begin
  --LINHA 0
   U0: Div_Exato_1 PORT MAP(
      x => x(0),
      y => y,
      bin => '0',
      q => '0',
      bout => cout,
      r => r
   );
	 
	aux <= '0';
	--bout <= cout;
	bout <= not (cout xor x(1) xor aux);
	

   
end Div2x1;
