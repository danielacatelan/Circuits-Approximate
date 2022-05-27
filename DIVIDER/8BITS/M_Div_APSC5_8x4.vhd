-- Chen(2016) 8X4

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity M_Div_APSC5_8x4  is
 port(
  x: in bit_vector(7 downto 0);
  y: in bit_vector(3 downto 0);
  bout: out bit_vector(3 downto 0);
  r: out bit_vector(3 downto 0));
 end M_Div_APSC5_8x4 ;

architecture Div8x4 of M_Div_APSC5_8x4  is

component Div_Exato_1
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

component Div_APSC5_1 
port
(
  bin: in bit;
  x: in bit; --A
  y: in bit; --B
  q: in bit;
  bout: out bit;
  r: out bit); --S
end component;

signal saida: bit_VECTOR(3 downto 0); --sinal auxiliar da and da correcao
signal aux: bit_VECTOR(3 downto 0); --sinal auxiliar do q
signal quoc: bit_VECTOR(3 downto 0); --sinal auxiliar
signal resto: bit_VECTOR(15 downto 0); --sinal auxiliar
signal cout: bit_VECTOR(19 downto 0); --sinal auxiliar

begin
  --LINHA 0
   U0: Div_Exato_1 PORT MAP(
      x => x(3),
      y => y(0),
      bin => '0',
      q => '0',
      bout => cout(0),
      r => resto(0)
   );
	 
   U1: Div_Exato_1 PORT MAP(
      x => x(4),
      y => y(1),
      bin => cout(0),
      q => '0',
      bout => cout(1),
      r => resto(1)
   );
  
   U2: Div_Exato_1 PORT MAP(
      x => x(5),
      y => y(2),
      bin => cout(1),
      q => '0',
      bout => cout(2),
      r => resto(2)
   );
	
    U3: Div_Exato_1 PORT MAP(
      x => x(6),
      y => y(3),
      bin => cout(2),
      q => '0',
      bout => cout(3),
      r => resto(3)
   );
	
	aux(0) <= '0';
	--bout(3) <= (cout(3) xnor x(7) xnor aux(0));
	quoc(0) <= cout(3) xor x(7) xor aux(0);
	bout(3) <= not (quoc(0));
	
--LINHA 1	
	   U4: Div_Exato_1 PORT MAP(
      x => x(2),
      y => y(0),
      bin => quoc(0),
      q => quoc(0),
      bout => cout(4),
      r => resto(4)
   );
	 
   U5: Div_Exato_1 PORT MAP(
      x => resto(0),
      y => y(1),
      bin => cout(4),
      q => quoc(0),
      bout => cout(5),
      r => resto(5)
   );
  
   U6: Div_Exato_1 PORT MAP(
      x => resto(1),
      y => y(2),
      bin => cout(5),
      q => quoc(0),
      bout => cout(6),
      r => resto(6)
   );
	
    U7: Div_Exato_1 PORT MAP(
      x => resto(2),
      y => y(3),
      bin => cout(6),
      q => quoc(0),
      bout => cout(7),
      r => resto(7)
   );
   
	aux(1) <= quoc(0);
	--bout(2) <= (cout(6) xnor resto(3) xnor aux(1));
	quoc(1) <= (cout(7) xor resto(3) xor aux(1));
	bout(2) <= not (quoc(1));

--LINHA 2	
	   U8: Div_APSC5_1 PORT MAP(
      x => x(1),
      y => y(0),
      bin => quoc(1),
      q => quoc(1),
      bout => cout(8),
      r => resto(8)
   );
	 
   U9: Div_APSC5_1 PORT MAP(
      x => resto(4),
      y => y(1),
      bin => cout(8),
      q => quoc(1),
      bout => cout(9),
      r => resto(9)
   );
  
   U10: Div_APSC5_1 PORT MAP(
      x => resto(5),
      y => y(2),
      bin => cout(9),
      q => quoc(1),
      bout => cout(10),
      r => resto(10)
   );
	
    U11: Div_APSC5_1 PORT MAP(
      x => resto(6),
      y => y(3),
      bin => cout(10),
      q => quoc(1),
      bout => cout(11),
      r => resto(11)
   );
	aux(2) <= quoc(1);
	--bout(1) <= (cout(11) xnor resto(7) xnor aux(2));
	quoc(2) <= (cout(11) xor resto(7) xor aux(2));
  bout(1) <= not (quoc(2));	
	
	--LINHA 3	
	   U12: Div_APSC5_1 PORT MAP(
      x => x(0),
      y => y(0),
      bin => quoc(2),
      q => quoc(2),
      bout => cout(12),
      r => resto(12)
   );
	 
   U13: Div_APSC5_1 PORT MAP(
      x => resto(8),
      y => y(1),
      bin => cout(12),
      q => quoc(2),
      bout => cout(13),
      r => resto(13)
   );
  
   U14: Div_APSC5_1 PORT MAP(
      x => resto(9),
      y => y(2),
      bin => cout(13),
      q => quoc(2),
      bout => cout(14),
      r => resto(14)
   );
	
    U15: Div_APSC5_1 PORT MAP(
      x => resto(10),
      y => y(3),
      bin => cout(14),
      q => quoc(2),
      bout => cout(15),
      r => resto(15)
   );
	aux(3) <= quoc(2);
	--bout(0) <= (cout(15) xnor resto(11) xnor aux(3));
	quoc(3) <= (cout(15) xor resto(11) xor aux(3));
	bout(0) <= not (quoc(3));
	
	--PARTE DA CORRECAO
	saida(0) <= y(0) and quoc(3);
	saida(1) <= y(1) and quoc(3);
	saida(2) <= y(2) and quoc(3);
	saida(3) <= y(3) and quoc(3);
	
	 U16: Div_Exato_1 PORT MAP(
      x => resto(12),
      y => saida(0),
      bin => '1',
      q => '1',
      bout => cout(16),
      r => r(0)
   );
   
	 U17: Div_Exato_1 PORT MAP(
      x => resto(13),
      y => saida(1),
      bin => cout(16),
      q => '1',
      bout => cout(17),
      r => r(1)
   );

	 U18: Div_Exato_1 PORT MAP(
      x => resto(14),
      y => saida(2),
      bin => cout(17),
      q => '1',
      bout => cout(18),
      r => r(2)
   );
   
	U19: Div_Exato_1 PORT MAP(
      x => resto(15),
      y => saida(3),
      bin => cout(18),
      q => '1',
      bout => cout(19),
      r => r(3)
   );
   
   
end Div8x4;
