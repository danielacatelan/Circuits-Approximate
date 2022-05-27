-- Chen(2016) 4X2

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Div_Exato_4x2 is
 port(
  x: in bit_vector(3 downto 0);
  y: in bit_vector(1 downto 0);
  bout: out bit_vector(1 downto 0);
  r: out bit_vector(1 downto 0));
 end Div_Exato_4x2;

architecture Div4x2 of Div_Exato_4x2 is

component Div_Exato_1
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

signal saida: bit_VECTOR(1 downto 0); --sinal auxiliar da and da correcao
signal aux: bit_VECTOR(1 downto 0); --sinal auxiliar do q
signal quoc: bit_VECTOR(1 downto 0); --sinal auxiliar
signal resto: bit_VECTOR(3 downto 0); --sinal auxiliar
signal cout: bit_VECTOR(5 downto 0); --sinal auxiliar

begin
  --LINHA 0
   U0: Div_Exato_1 PORT MAP(
      x => x(1),
      y => y(0),
      bin => '0',
      q => '0',
      bout => cout(0),
      r => resto(0)
   );
	 
   U1: Div_Exato_1 PORT MAP(
      x => x(2),
      y => y(1),
      bin => cout(0),
      q => '0',
      bout => cout(1),
      r => resto(1)
   );
   
 	aux(0) <= '0';
	--bout(0) <= not(cout(1) xor x(3) xor aux(0));
	quoc(0) <= cout(1) xor x(3) xor aux(0);
	bout(1) <= not (quoc(0));
	
 --LINHA 1 
   U2: Div_Exato_1 PORT MAP(
      x => x(0),
      y => y(0),
      bin => quoc(0),
      q => quoc(0),
      bout => cout(2),
      r => resto(2)
   );
	
    U3: Div_Exato_1 PORT MAP(
      x => resto(0),
      y => y(1),
      bin => cout(2),
      q => quoc(0),
      bout => cout(3),
      r => resto(3)
   );
	
	aux(1) <= quoc(0);
	bout(0) <= not(cout(3) xor resto(1) xor aux(1));
	quoc(1) <= (cout(3) xor resto(1) xor aux(1));
	
	--PARTE DA CORRECAO
	saida(0) <= y(0) and quoc(1);
	saida(1) <= y(1) and quoc(1);

	
	 U4: Div_Exato_1 PORT MAP(
      x => resto(2),
      y => saida(0),
      bin => '1',
      q => '1',
      bout => cout(4),
      r => r(0)
   );
   
	 U5: Div_Exato_1 PORT MAP(
      x => resto(3),
      y => saida(1),
      bin => cout(4),
      q => '1',
      bout => cout(5),
      r => r(1)
   );

	
   
   
end Div4x2;
