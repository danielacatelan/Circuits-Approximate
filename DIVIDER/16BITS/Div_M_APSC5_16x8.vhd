-- Chen(2016) 16X8

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Div_M_APSC5_16x8 is
 port(
  x: in bit_vector(15 downto 0);
  y: in bit_vector(7 downto 0);
  bout: out bit_vector(7 downto 0);
  r: out bit_vector(7 downto 0));
 end Div_M_APSC5_16x8;

architecture Div16x8 of Div_M_APSC5_16x8 is

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
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

signal saida: bit_VECTOR(7 downto 0); --sinal auxiliar da and da correcao
signal aux: bit_VECTOR(7 downto 0); --sinal auxiliar do q
signal quoc: bit_VECTOR(7 downto 0); --sinal auxiliar
signal resto: bit_VECTOR(63 downto 0); --sinal auxiliar
signal cout: bit_VECTOR(71 downto 0); --sinal auxiliar

begin
  --LINHA 0
   U0: Div_Exato_1 PORT MAP(
      x => x(7),
      y => y(0),
      bin => '0',
      q => '0',
      bout => cout(0),
      r => resto(0)
   );
	 
   U1: Div_Exato_1 PORT MAP(
      x => x(8),
      y => y(1),
      bin => cout(0),
      q => '0',
      bout => cout(1),
      r => resto(1)
   );
  
   U2: Div_Exato_1 PORT MAP(
      x => x(9),
      y => y(2),
      bin => cout(1),
      q => '0',
      bout => cout(2),
      r => resto(2)
   );
	
    U3: Div_Exato_1 PORT MAP(
      x => x(10),
      y => y(3),
      bin => cout(2),
      q => '0',
      bout => cout(3),
      r => resto(3)
   );
   
    U4: Div_Exato_1 PORT MAP(
      x => x(11),
      y => y(4),
      bin => cout(3),
      q => '0',
      bout => cout(4),
      r => resto(4)
   );
	 
   U5: Div_Exato_1 PORT MAP(
      x => x(12),
      y => y(5),
      bin => cout(4),
      q => '0',
      bout => cout(5),
      r => resto(5)
   );
  
   U6: Div_Exato_1 PORT MAP(
      x => x(13),
      y => y(6),
      bin => cout(5),
      q => '0',
      bout => cout(6),
      r => resto(6)
   );
	
    U7: Div_Exato_1 PORT MAP(
      x => x(14),
      y => y(7),
      bin => cout(6),
      q => '0',
      bout => cout(7),
      r => resto(7)
   );
	
	aux(0) <= '0';--sinal q
	--bout(7) <= (cout(7) xnor x(15) xnor aux(0));--porta XNOR (quociente)
	quoc(0) <= (cout(7) xor x(15) xor aux(0));--porta XOR (que sera a entrada q)
	bout(7) <= not (quoc(0));
	
--LINHA 1	
	  U8: Div_Exato_1 PORT MAP(
      x => x(6),
      y => y(0),
      bin => quoc(0),
      q => quoc(0),
      bout => cout(8),
      r => resto(8)
   );
	 
   U9: Div_Exato_1 PORT MAP(
      x => resto(0),
      y => y(1),
      bin => cout(8),
      q => quoc(0),
      bout => cout(9),
      r => resto(9)
   );
  
   U10: Div_Exato_1 PORT MAP(
      x => resto(1),
      y => y(2),
      bin => cout(9),
      q => quoc(0),
      bout => cout(10),
      r => resto(10)
   );
	
    U11: Div_Exato_1 PORT MAP(
      x => resto(2),
      y => y(3),
      bin => cout(10),
      q => quoc(0),
      bout => cout(11),
      r => resto(11)
   );
   
    U12: Div_Exato_1 PORT MAP(
      x => resto(3),
      y => y(4),
      bin => cout(11),
      q => quoc(0),
      bout => cout(12),
      r => resto(12)
   );
	 
   U13: Div_Exato_1 PORT MAP(
      x => resto(4),
      y => y(5),
      bin => cout(12),
      q => quoc(0),
      bout => cout(13),
      r => resto(13)
   );
  
   U14: Div_Exato_1 PORT MAP(
      x => resto(5),
      y => y(6),
      bin => cout(13),
      q => quoc(0),
      bout => cout(14),
      r => resto(14)
   );
	
    U15: Div_Exato_1 PORT MAP(
      x => resto(6),
      y => y(7),
      bin => cout(14),
      q => quoc(0),
      bout => cout(15),
      r => resto(15)
   );
	
	aux(1) <= quoc(0);--sinal q
	--bout(6) <= (cout(15) xnor resto(7) xnor aux(1));--porta XNOR (quociente)
	quoc(1) <= (cout(15) xor resto(7) xor aux(1));--porta XOR (que sera a entrada q)
	bout(6) <= not (quoc(1));

--LINHA 2	
	  U16: Div_Exato_1 PORT MAP(
      x => x(5),
      y => y(0),
      bin => quoc(1),
      q => quoc(1),
      bout => cout(16),
      r => resto(16)
   );
	 
   U17: Div_Exato_1 PORT MAP(
      x => resto(8),
      y => y(1),
      bin => cout(16),
      q => quoc(1),
      bout => cout(17),
      r => resto(17)
   );
  
   U18: Div_Exato_1 PORT MAP(
      x => resto(9),
      y => y(2),
      bin => cout(17),
      q => quoc(1),
      bout => cout(18),
      r => resto(18)
   );
	
    U19: Div_Exato_1 PORT MAP(
      x => resto(10),
      y => y(3),
      bin => cout(18),
      q => quoc(1),
      bout => cout(19),
      r => resto(19)
   );
   
    U20: Div_Exato_1 PORT MAP(
      x => resto(11),
      y => y(4),
      bin => cout(19),
      q => quoc(1),
      bout => cout(20),
      r => resto(20)
   );
	 
   U21: Div_Exato_1 PORT MAP(
      x => resto(12),
      y => y(5),
      bin => cout(20),
      q => quoc(1),
      bout => cout(21),
      r => resto(21)
   );
  
   U22: Div_Exato_1 PORT MAP(
      x => resto(13),
      y => y(6),
      bin => cout(21),
      q => quoc(1),
      bout => cout(22),
      r => resto(22)
   );
	
    U23: Div_Exato_1 PORT MAP(
      x => resto(14),
      y => y(7),
      bin => cout(22),
      q => quoc(1),
      bout => cout(23),
      r => resto(23)
   );
	
	aux(2) <= quoc(1);--sinal q
	--bout(5) <= (cout(23) xnor resto(15) xnor aux(2));--porta XNOR (quociente)
	quoc(2) <= (cout(23) xor resto(15) xor aux(2));--porta XOR (que sera a entrada q)
	bout(5) <= not (quoc(2));
	
	--LINHA 3	
	 U24: Div_Exato_1 PORT MAP(
      x => x(4),
      y => y(0),
      bin => quoc(2),
      q => quoc(2),
      bout => cout(24),
      r => resto(24)
   );
	 
   U25: Div_Exato_1 PORT MAP(
      x => resto(16),
      y => y(1),
      bin => cout(24),
      q => quoc(2),
      bout => cout(25),
      r => resto(25)
   );
  
   U26: Div_Exato_1 PORT MAP(
      x => resto(17),
      y => y(2),
      bin => cout(25),
      q => quoc(2),
      bout => cout(26),
      r => resto(26)
   );
	
    U27: Div_Exato_1 PORT MAP(
      x => resto(18),
      y => y(3),
      bin => cout(26),
      q => quoc(2),
      bout => cout(27),
      r => resto(27)
   );
   
    U28: Div_Exato_1 PORT MAP(
      x => resto(19),
      y => y(4),
      bin => cout(27),
      q => quoc(2),
      bout => cout(28),
      r => resto(28)
   );
	 
   U29: Div_Exato_1 PORT MAP(
      x => resto(20),
      y => y(5),
      bin => cout(28),
      q => quoc(2),
      bout => cout(29),
      r => resto(29)
   );
  
   U30: Div_Exato_1 PORT MAP(
      x => resto(21),
      y => y(6),
      bin => cout(29),
      q => quoc(2),
      bout => cout(30),
      r => resto(30)
   );
	
    U31: Div_Exato_1 PORT MAP(
      x => resto(22),
      y => y(7),
      bin => cout(30),
      q => quoc(2),
      bout => cout(31),
      r => resto(31)
   );
	
	aux(3) <= quoc(2);--sinal q
	--bout(4) <= (cout(31) xnor resto(23) xnor aux(3));--porta XNOR (quociente)
	quoc(3) <= (cout(31) xor resto(23) xor aux(3));--porta XOR (que sera a entrada q)
	bout(4) <= not (quoc(3));
	
	--LINHA 4
	U32: Div_APSC5_1 PORT MAP(
      x => x(3),
      y => y(0),
      bin => quoc(3),
      q => quoc(3),
      bout => cout(32),
      r => resto(32)
   );
	 
   U33: Div_APSC5_1 PORT MAP(
      x => resto(24),
      y => y(1),
      bin => cout(32),
      q => quoc(3),
      bout => cout(33),
      r => resto(33)
   );
  
   U34: Div_APSC5_1 PORT MAP(
      x => resto(25),
      y => y(2),
      bin => cout(33),
      q => quoc(3),
      bout => cout(34),
      r => resto(34)
   );
	
    U35: Div_APSC5_1 PORT MAP(
      x => resto(26),
      y => y(3),
      bin => cout(34),
      q => quoc(3),
      bout => cout(35),
      r => resto(35)
   );
   
    U36: Div_APSC5_1 PORT MAP(
      x => resto(27),
      y => y(4),
      bin => cout(35),
      q => quoc(3),
      bout => cout(36),
      r => resto(36)
   );
	 
   U37: Div_APSC5_1 PORT MAP(
      x => resto(28),
      y => y(5),
      bin => cout(36),
      q => quoc(3),
      bout => cout(37),
      r => resto(37)
   );
  
   U38: Div_APSC5_1 PORT MAP(
      x => resto(29),
      y => y(6),
      bin => cout(37),
      q => quoc(3),
      bout => cout(38),
      r => resto(38)
   );
	
    U39: Div_APSC5_1 PORT MAP(
      x => resto(30),
      y => y(7),
      bin => cout(38),
      q => quoc(3),
      bout => cout(39),
      r => resto(39)
   );
	
	aux(4) <= quoc(3);--sinal q
	--bout(3) <= (cout(39) xnor resto(31) xnor aux(4));--porta XNOR (quociente)
	quoc(4) <= (cout(39) xor resto(31) xor aux(4));--porta XOR (que sera a entrada q)
	bout(3) <= not (quoc(4));
	
	--LINHA 5
		U40: Div_APSC5_1 PORT MAP(
      x => x(2),
      y => y(0),
      bin => quoc(4),
      q => quoc(4),
      bout => cout(40),
      r => resto(40)
   );
	 
   U41: Div_APSC5_1 PORT MAP(
      x => resto(32),
      y => y(1),
      bin => cout(40),
      q => quoc(4),
      bout => cout(41),
      r => resto(41)
   );
  
   U42: Div_APSC5_1 PORT MAP(
      x => resto(33),
      y => y(2),
      bin => cout(41),
      q => quoc(4),
      bout => cout(42),
      r => resto(42)
   );
	
    U43: Div_APSC5_1 PORT MAP(
      x => resto(34),
      y => y(3),
      bin => cout(42),
      q => quoc(4),
      bout => cout(43),
      r => resto(43)
   );
   
    U44: Div_APSC5_1 PORT MAP(
      x => resto(35),
      y => y(4),
      bin => cout(43),
      q => quoc(4),
      bout => cout(44),
      r => resto(44)
   );
	 
   U45: Div_APSC5_1 PORT MAP(
      x => resto(36),
      y => y(5),
      bin => cout(44),
      q => quoc(4),
      bout => cout(45),
      r => resto(45)
   );
  
   U46: Div_APSC5_1 PORT MAP(
      x => resto(37),
      y => y(6),
      bin => cout(45),
      q => quoc(4),
      bout => cout(46),
      r => resto(46)
   );
	
    U47: Div_APSC5_1 PORT MAP(
      x => resto(38),
      y => y(7),
      bin => cout(46),
      q => quoc(4),
      bout => cout(47),
      r => resto(47)
   );
	
	aux(5) <= quoc(4);--sinal q
	--bout(2) <= (cout(47) xnor resto(39) xnor aux(5));--porta XNOR (quociente)
	quoc(5) <= (cout(47) xor resto(39) xor aux(5));--porta XOR (que sera a entrada q)
	bout(2) <= not (quoc(5));
		
	--LINHA 6
		U48: Div_APSC5_1 PORT MAP(
      x => x(1),
      y => y(0),
      bin => quoc(5),
      q => quoc(5),
      bout => cout(48),
      r => resto(48)
   );
	 
   U49: Div_APSC5_1 PORT MAP(
      x => resto(40),
      y => y(1),
      bin => cout(48),
      q => quoc(5),
      bout => cout(49),
      r => resto(49)
   );
  
   U50: Div_APSC5_1 PORT MAP(
      x => resto(41),
      y => y(2),
      bin => cout(49),
      q => quoc(5),
      bout => cout(50),
      r => resto(50)
   );
	
    U51: Div_APSC5_1 PORT MAP(
      x => resto(42),
      y => y(3),
      bin => cout(50),
      q => quoc(5),
      bout => cout(51),
      r => resto(51)
   );
   
    U52: Div_APSC5_1 PORT MAP(
      x => resto(43),
      y => y(4),
      bin => cout(51),
      q => quoc(5),
      bout => cout(52),
      r => resto(52)
   );
	 
   U53: Div_APSC5_1 PORT MAP(
      x => resto(44),
      y => y(5),
      bin => cout(52),
      q => quoc(5),
      bout => cout(53),
      r => resto(53)
   );
  
   U54: Div_APSC5_1 PORT MAP(
      x => resto(45),
      y => y(6),
      bin => cout(53),
      q => quoc(5),
      bout => cout(54),
      r => resto(54)
   );
	
    U55: Div_APSC5_1 PORT MAP(
      x => resto(46),
      y => y(7),
      bin => cout(54),
      q => quoc(5),
      bout => cout(55),
      r => resto(55)
   );
	
	aux(6) <= quoc(5);--sinal q
	--bout(1) <= (cout(55) xnor resto(47) xnor aux(6));--porta XNOR (quociente)
	quoc(6) <= (cout(55) xor resto(47) xor aux(6));--porta XOR (que sera a entrada q)
	bout(1) <= not (quoc(6));
	
	--LINHA 7
		U56: Div_APSC5_1 PORT MAP(
      x => x(0),
      y => y(0),
      bin => quoc(6),
      q => quoc(6),
      bout => cout(56),
      r => resto(56)
   );
	 
   U57: Div_APSC5_1 PORT MAP(
      x => resto(48),
      y => y(1),
      bin => cout(56),
      q => quoc(6),
      bout => cout(57),
      r => resto(57)
   );
  
   U58: Div_APSC5_1 PORT MAP(
      x => resto(49),
      y => y(2),
      bin => cout(57),
      q => quoc(6),
      bout => cout(58),
      r => resto(58)
   );
	
    U59: Div_APSC5_1 PORT MAP(
      x => resto(50),
      y => y(3),
      bin => cout(58),
      q => quoc(6),
      bout => cout(59),
      r => resto(59)
   );
   
    U60: Div_APSC5_1 PORT MAP(
      x => resto(51),
      y => y(4),
      bin => cout(59),
      q => quoc(6),
      bout => cout(60),
      r => resto(60)
   );
	 
   U61: Div_APSC5_1 PORT MAP(
      x => resto(52),
      y => y(5),
      bin => cout(60),
      q => quoc(6),
      bout => cout(61),
      r => resto(61)
   );
  
   U62: Div_APSC5_1 PORT MAP(
      x => resto(53),
      y => y(6),
      bin => cout(61),
      q => quoc(6),
      bout => cout(62),
      r => resto(62)
   );
	
    U63: Div_APSC5_1 PORT MAP(
      x => resto(54),
      y => y(7),
      bin => cout(62),
      q => quoc(6),
      bout => cout(63),
      r => resto(63)
   );
	
	aux(7) <= quoc(6);--sinal q
	--bout(0) <= (cout(63) xnor resto(55) xnor aux(7));--porta XNOR (quociente)
	quoc(7) <= (cout(63) xor resto(55) xor aux(7));--porta XOR (que sera a entrada q)
	bout(0) <= not (quoc(7));
	
	
	
		
	
	--PARTE DA CORRECAO
	saida(0) <= y(0) and quoc(7);
	saida(1) <= y(1) and quoc(7);
	saida(2) <= y(2) and quoc(7);
	saida(3) <= y(3) and quoc(7);
	saida(4) <= y(4) and quoc(7);
	saida(5) <= y(5) and quoc(7);
	saida(6) <= y(6) and quoc(7);
	saida(7) <= y(7) and quoc(7);
	
	 U64: Div_Exato_1 PORT MAP(
      x => resto(56),
      y => saida(0),
      bin => '1',
      q => '1',
      bout => cout(64),
      r => r(0)
   );
   
	 U65: Div_Exato_1 PORT MAP(
      x => resto(57),
      y => saida(1),
      bin => cout(64),
      q => '1',
      bout => cout(65),
      r => r(1)
   );

	 U66: Div_Exato_1 PORT MAP(
      x => resto(58),
      y => saida(2),
      bin => cout(65),
      q => '1',
      bout => cout(66),
      r => r(2)
   );
   
	U67: Div_Exato_1 PORT MAP(
      x => resto(59),
      y => saida(3),
      bin => cout(66),
      q => '1',
      bout => cout(67),
      r => r(3)
   );
   
   	U68: Div_Exato_1 PORT MAP(
      x => resto(60),
      y => saida(4),
      bin => cout(67),
      q => '1',
      bout => cout(68),
      r => r(4)
   );
   
   	U69: Div_Exato_1 PORT MAP(
      x => resto(61),
      y => saida(5),
      bin => cout(68),
      q => '1',
      bout => cout(69),
      r => r(5)
   ); 
   
   	U70: Div_Exato_1 PORT MAP(
      x => resto(62),
      y => saida(6),
      bin => cout(69),
      q => '1',
      bout => cout(70),
      r => r(6)
   ); 
   
   	U71: Div_Exato_1 PORT MAP(
      x => resto(63),
      y => saida(7),
      bin => cout(70),
      q => '1',
      bout => cout(71),
      r => r(7)
   );  
   
end Div16x8;
