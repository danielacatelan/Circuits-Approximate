-- Chen(2016) 32X16

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Div_AXSC3_32x16 is
 port(
  x: in bit_vector(31 downto 0);
  y: in bit_vector(15 downto 0);
  bout: out bit_vector(15 downto 0);
  r: out bit_vector(15 downto 0));
 end Div_AXSC3_32x16;

architecture Div32x16 of Div_AXSC3_32x16 is

component Div_Exato_1
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

component Div_AXSC3_1
port(
   x: in bit;  
   y: in bit;  
   bin: in bit; 
   q: in bit;
   bout: out bit; 
   r: out bit);
end component;

signal saida: bit_VECTOR(15 downto 0); --sinal auxiliar da and da correcao
signal aux: bit_VECTOR(15 downto 0); --sinal auxiliar do q
signal quoc: bit_VECTOR(15 downto 0); --sinal auxiliar
signal resto: bit_VECTOR(255 downto 0); --sinal auxiliar
signal cout: bit_VECTOR(271 downto 0); --sinal auxiliar

begin
  --LINHA 0
 U0: Div_Exato_1 PORT MAP(
   x => x(15),
   y => y(0),
   bin => '0',
   q => '0',
   bout => cout(0),
   r => resto(0));

 U1: Div_AXSC3_1 PORT MAP(
   x => x(16),
   y => y(1),
   bin =>  cout(0),
   q =>  '0',
   bout => cout(1),
   r => resto(1));

 U2: Div_AXSC3_1 PORT MAP(
   x => x(17),
   y => y(2),
   bin =>  cout(1),
   q =>  '0',
   bout => cout(2),
   r => resto(2));

 U3: Div_AXSC3_1 PORT MAP(
   x => x(18),
   y => y(3),
   bin =>  cout(2),
   q =>  '0',
   bout => cout(3),
   r => resto(3));

 U4: Div_AXSC3_1 PORT MAP(
   x => x(19),
   y => y(4),
   bin =>  cout(3),
   q =>  '0',
   bout => cout(4),
   r => resto(4));

 U5: Div_AXSC3_1 PORT MAP(
   x => x(20),
   y => y(5),
   bin =>  cout(4),
   q =>  '0',
   bout => cout(5),
   r => resto(5));

  U6: Div_AXSC3_1 PORT MAP(
   x => x(21),
   y => y(6),
   bin =>  cout(5),
   q =>  '0',
   bout => cout(6),
   r => resto(6));

 U7: Div_AXSC3_1 PORT MAP(
   x => x(22),
   y => y(7),
   bin =>  cout(6),
   q =>  '0',
   bout => cout(7),
   r => resto(7));

 U8: Div_AXSC3_1 PORT MAP(
   x => x(23),
   y => y(8),
   bin =>  cout(7),
   q =>  '0',
   bout => cout(8),
   r => resto(8));

 U9: Div_AXSC3_1 PORT MAP(
   x => x(24),
   y => y(9),
   bin =>  cout(8),
   q =>  '0',
   bout => cout(9),
   r => resto(9));

 U10: Div_AXSC3_1 PORT MAP(
   x => x(25),
   y => y(10),
   bin =>  cout(9),
   q =>  '0',
   bout => cout(10),
   r => resto(10));

 U11: Div_AXSC3_1 PORT MAP(
   x => x(26),
   y => y(11),
   bin =>  cout(10),
   q =>  '0',
   bout => cout(11),
   r => resto(11));

 U12: Div_AXSC3_1 PORT MAP(
   x => x(27),
   y => y(12),
   bin =>  cout(11),
   q =>  '0',
   bout => cout(12),
   r => resto(12));

 U13: Div_AXSC3_1 PORT MAP(
   x => x(28),
   y => y(13),
   bin =>  cout(12),
   q =>  '0',
   bout => cout(13),
   r => resto(13));

 U14: Div_AXSC3_1 PORT MAP(
   x => x(29),
   y => y(14),
   bin =>  cout(13),
   q =>  '0',
   bout => cout(14),
   r => resto(14));

 U15: Div_AXSC3_1 PORT MAP(
   x => x(30),
   y => y(15),
   bin =>  cout(14),
   q =>  '0',
   bout => cout(15),
   r => resto(15));

	
	aux(0) <= '0';--sinal q
	--bout(0) <= (cout(15) xnor x(31) xnor aux(0));--porta XNOR (quociente)
	quoc(0) <= cout(15) xor x(31) xor aux(0);--porta XOR (que sera a entrada q)
	bout(15) <= not (quoc(0));
	
--LINHA 1	
 U16: Div_AXSC3_1 PORT MAP(
   x => x(14),
   y => y(0),
   bin => quoc(0),
   q => quoc(0),
   bout => cout(16),
   r => resto(16));

 U17: Div_AXSC3_1 PORT MAP(
   x => resto(0),
   y => y(1),
   bin => cout(16),
   q => quoc(0),
   bout => cout(17),
   r => resto(17));

 U18: Div_AXSC3_1 PORT MAP(
   x => resto(1),
   y => y(2),
   bin => cout(17),
   q => quoc(0),
   bout => cout(18),
   r => resto(18));

 U19: Div_AXSC3_1 PORT MAP(
   x => resto(2),
   y => y(3),
   bin => cout(18),
   q => quoc(0),
   bout => cout(19),
   r => resto(19));

 U20: Div_AXSC3_1 PORT MAP(
   x => resto(3),
   y => y(4),
   bin => cout(19),
   q => quoc(0),
   bout => cout(20),
   r => resto(20));

 U21: Div_AXSC3_1 PORT MAP(
   x => resto(4),
   y => y(5),
   bin => cout(20),
   q => quoc(0),
   bout => cout(21),
   r => resto(21));

 U22: Div_AXSC3_1 PORT MAP(
   x => resto(5),
   y => y(6),
   bin => cout(21),
   q => quoc(0),
   bout => cout(22),
   r => resto(22));

 U23: Div_AXSC3_1 PORT MAP(
   x => resto(6),
   y => y(7),
   bin => cout(22),
   q => quoc(0),
   bout => cout(23),
   r => resto(23));

 U24: Div_AXSC3_1 PORT MAP(
   x => resto(7),
   y => y(8),
   bin => cout(23),
   q => quoc(0),
   bout => cout(24),
   r => resto(24));

 U25: Div_AXSC3_1 PORT MAP(
   x => resto(8),
   y => y(9),
   bin => cout(24),
   q => quoc(0),
   bout => cout(25),
   r => resto(25));

 U26: Div_AXSC3_1 PORT MAP(
   x => resto(9),
   y => y(10),
   bin => cout(25),
   q => quoc(0),
   bout => cout(26),
   r => resto(26));

 U27: Div_AXSC3_1 PORT MAP(
   x => resto(10),
   y => y(11),
   bin => cout(26),
   q => quoc(0),
   bout => cout(27),
   r => resto(27));

 U28: Div_AXSC3_1 PORT MAP(
   x => resto(11),
   y => y(12),
   bin => cout(27),
   q => quoc(0),
   bout => cout(28),
   r => resto(28));

 U29: Div_AXSC3_1 PORT MAP(
   x => resto(12),
   y => y(13),
   bin => cout(28),
   q => quoc(0),
   bout => cout(29),
   r => resto(29));

 U30: Div_AXSC3_1 PORT MAP(
   x => resto(13),
   y => y(14),
   bin => cout(29),
   q => quoc(0),
   bout => cout(30),
   r => resto(30));

 U31: Div_AXSC3_1 PORT MAP(
   x => resto(14),
   y => y(15),
   bin => cout(30),
   q => quoc(0),
   bout => cout(31),
   r => resto(31));


	
	aux(1) <= quoc(0);--sinal q
	--bout(1) <= (cout(31) xnor resto(15) xnor aux(1));--porta XNOR (quociente)
	quoc(1) <= cout(31) xor resto(15) xor aux(1);--porta XOR (que sera a entrada q)
	bout(14) <= not (quoc(1));
	
	--LINHA 2	
   U32: Div_AXSC3_1 PORT MAP(
   x => x(13),
   y => y(0),
   bin => quoc(1),
   q => quoc(1),
   bout => cout(32),
   r => resto(32));

 U33: Div_AXSC3_1 PORT MAP(
   x => resto(16),
   y => y(1),
   bin => cout(32),
   q => quoc(1),
   bout => cout(33),
   r => resto(33));

 U34: Div_AXSC3_1 PORT MAP(
   x => resto(17),
   y => y(2),
   bin => cout(33),
   q => quoc(1),
   bout => cout(34),
   r => resto(34));

 U35: Div_AXSC3_1 PORT MAP(
   x => resto(18),
   y => y(3),
   bin => cout(34),
   q => quoc(1),
   bout => cout(35),
   r => resto(35));

 U36: Div_AXSC3_1 PORT MAP(
   x => resto(19),
   y => y(4),
   bin => cout(35),
   q => quoc(1),
   bout => cout(36),
   r => resto(36));

 U37: Div_AXSC3_1 PORT MAP(
   x => resto(20),
   y => y(5),
   bin => cout(36),
   q => quoc(1),
   bout => cout(37),
   r => resto(37));

 U38: Div_AXSC3_1 PORT MAP(
   x => resto(21),
   y => y(6),
   bin => cout(37),
   q => quoc(1),
   bout => cout(38),
   r => resto(38));

 U39: Div_AXSC3_1 PORT MAP(
   x => resto(22),
   y => y(7),
   bin => cout(38),
   q => quoc(1),
   bout => cout(39),
   r => resto(39));

 U40: Div_AXSC3_1 PORT MAP(
   x => resto(23),
   y => y(8),
   bin => cout(39),
   q => quoc(1),
   bout => cout(40),
   r => resto(40));

 U41: Div_AXSC3_1 PORT MAP(
   x => resto(24),
   y => y(9),
   bin => cout(40),
   q => quoc(1),
   bout => cout(41),
   r => resto(41));

 U42: Div_AXSC3_1 PORT MAP(
   x => resto(25),
   y => y(10),
   bin => cout(41),
   q => quoc(1),
   bout => cout(42),
   r => resto(42));

 U43: Div_AXSC3_1 PORT MAP(
   x => resto(26),
   y => y(11),
   bin => cout(42),
   q => quoc(1),
   bout => cout(43),
   r => resto(43));

 U44: Div_AXSC3_1 PORT MAP(
   x => resto(27),
   y => y(12),
   bin => cout(43),
   q => quoc(1),
   bout => cout(44),
   r => resto(44));

 U45: Div_AXSC3_1 PORT MAP(
   x => resto(28),
   y => y(13),
   bin => cout(44),
   q => quoc(1),
   bout => cout(45),
   r => resto(45));

 U46: Div_AXSC3_1 PORT MAP(
   x => resto(29),
   y => y(14),
   bin => cout(45),
   q => quoc(1),
   bout => cout(46),
   r => resto(46));

 U47: Div_AXSC3_1 PORT MAP(
   x => resto(30),
   y => y(15),
   bin => cout(46),
   q => quoc(1),
   bout => cout(47),
   r => resto(47));


	
	aux(2) <= quoc(1);--sinal q
	--bout(2) <= (cout(47) xnor resto(31) xnor aux(2));--porta XNOR (quociente)
	quoc(2) <= cout(47) xor resto(31) xor aux(2);--porta XOR (que sera a entrada q)
	bout(13) <= not (quoc(2));
	
--LINHA 3	
  U48: Div_AXSC3_1 PORT MAP(
   x => x(12),
   y => y(0),
   bin => quoc(2),
   q => quoc(2),
   bout => cout(48),
   r => resto(48));

 U49: Div_AXSC3_1 PORT MAP(
   x => resto(32),
   y => y(1),
   bin => cout(48),
   q => quoc(2),
   bout => cout(49),
   r => resto(49));

 U50: Div_AXSC3_1 PORT MAP(
   x => resto(33),
   y => y(2),
   bin => cout(49),
   q => quoc(2),
   bout => cout(50),
   r => resto(50));

 U51: Div_AXSC3_1 PORT MAP(
   x => resto(34),
   y => y(3),
   bin => cout(50),
   q => quoc(2),
   bout => cout(51),
   r => resto(51));

 U52: Div_AXSC3_1 PORT MAP(
   x => resto(35),
   y => y(4),
   bin => cout(51),
   q => quoc(2),
   bout => cout(52),
   r => resto(52));

 U53: Div_AXSC3_1 PORT MAP(
   x => resto(36),
   y => y(5),
   bin => cout(52),
   q => quoc(2),
   bout => cout(53),
   r => resto(53));

 U54: Div_AXSC3_1 PORT MAP(
   x => resto(37),
   y => y(6),
   bin => cout(53),
   q => quoc(2),
   bout => cout(54),
   r => resto(54));

 U55: Div_AXSC3_1 PORT MAP(
   x => resto(38),
   y => y(7),
   bin => cout(54),
   q => quoc(2),
   bout => cout(55),
   r => resto(55));

 U56: Div_AXSC3_1 PORT MAP(
   x => resto(39),
   y => y(8),
   bin => cout(55),
   q => quoc(2),
   bout => cout(56),
   r => resto(56));

 U57: Div_AXSC3_1 PORT MAP(
   x => resto(40),
   y => y(9),
   bin => cout(56),
   q => quoc(2),
   bout => cout(57),
   r => resto(57));

 U58: Div_AXSC3_1 PORT MAP(
   x => resto(41),
   y => y(10),
   bin => cout(57),
   q => quoc(2),
   bout => cout(58),
   r => resto(58));

 U59: Div_AXSC3_1 PORT MAP(
   x => resto(42),
   y => y(11),
   bin => cout(58),
   q => quoc(2),
   bout => cout(59),
   r => resto(59));

 U60: Div_AXSC3_1 PORT MAP(
   x => resto(43),
   y => y(12),
   bin => cout(59),
   q => quoc(2),
   bout => cout(60),
   r => resto(60));

 U61: Div_AXSC3_1 PORT MAP(
   x => resto(44),
   y => y(13),
   bin => cout(60),
   q => quoc(2),
   bout => cout(61),
   r => resto(61));

 U62: Div_AXSC3_1 PORT MAP(
   x => resto(45),
   y => y(14),
   bin => cout(61),
   q => quoc(2),
   bout => cout(62),
   r => resto(62));

 U63: Div_AXSC3_1 PORT MAP(
   x => resto(46),
   y => y(15),
   bin => cout(62),
   q => quoc(2),
   bout => cout(63),
   r => resto(63));


	
	aux(3) <= quoc(2);--sinal q
	--bout(3) <= (cout(63) xnor resto(47) xnor aux(3));--porta XNOR (quociente)
	quoc(3) <= cout(63) xor resto(47) xor aux(3);--porta XOR (que sera a entrada q)
	bout(12) <= not (quoc(3));
	
--LINHA 4	
 U64: Div_AXSC3_1 PORT MAP(
   x => x(11),
   y => y(0),
   bin => quoc(3),
   q => quoc(3),
   bout => cout(64),
   r => resto(64));

 U65: Div_AXSC3_1 PORT MAP(
   x => resto(48),
   y => y(1),
   bin => cout(64),
   q => quoc(3),
   bout => cout(65),
   r => resto(65));

 U66: Div_AXSC3_1 PORT MAP(
   x => resto(49),
   y => y(2),
   bin => cout(65),
   q => quoc(3),
   bout => cout(66),
   r => resto(66));

 U67: Div_AXSC3_1 PORT MAP(
   x => resto(50),
   y => y(3),
   bin => cout(66),
   q => quoc(3),
   bout => cout(67),
   r => resto(67));

 U68: Div_AXSC3_1 PORT MAP(
   x => resto(51),
   y => y(4),
   bin => cout(67),
   q => quoc(3),
   bout => cout(68),
   r => resto(68));

 U69: Div_AXSC3_1 PORT MAP(
   x => resto(52),
   y => y(5),
   bin => cout(68),
   q => quoc(3),
   bout => cout(69),
   r => resto(69));

 U70: Div_AXSC3_1 PORT MAP(
   x => resto(53),
   y => y(6),
   bin => cout(69),
   q => quoc(3),
   bout => cout(70),
   r => resto(70));

 U71: Div_AXSC3_1 PORT MAP(
   x => resto(54),
   y => y(7),
   bin => cout(70),
   q => quoc(3),
   bout => cout(71),
   r => resto(71));

 U72: Div_AXSC3_1 PORT MAP(
   x => resto(55),
   y => y(8),
   bin => cout(71),
   q => quoc(3),
   bout => cout(72),
   r => resto(72));

 U73: Div_AXSC3_1 PORT MAP(
   x => resto(56),
   y => y(9),
   bin => cout(72),
   q => quoc(3),
   bout => cout(73),
   r => resto(73));

 U74: Div_AXSC3_1 PORT MAP(
   x => resto(57),
   y => y(10),
   bin => cout(73),
   q => quoc(3),
   bout => cout(74),
   r => resto(74));

 U75: Div_AXSC3_1 PORT MAP(
   x => resto(58),
   y => y(11),
   bin => cout(74),
   q => quoc(3),
   bout => cout(75),
   r => resto(75));

 U76: Div_AXSC3_1 PORT MAP(
   x => resto(59),
   y => y(12),
   bin => cout(75),
   q => quoc(3),
   bout => cout(76),
   r => resto(76));

 U77: Div_AXSC3_1 PORT MAP(
   x => resto(60),
   y => y(13),
   bin => cout(76),
   q => quoc(3),
   bout => cout(77),
   r => resto(77));

 U78: Div_AXSC3_1 PORT MAP(
   x => resto(61),
   y => y(14),
   bin => cout(77),
   q => quoc(3),
   bout => cout(78),
   r => resto(78));

 U79: Div_AXSC3_1 PORT MAP(
   x => resto(62),
   y => y(15),
   bin => cout(78),
   q => quoc(3),
   bout => cout(79),
   r => resto(79));

	
	aux(4) <= quoc(3);--sinal q
	--bout(4) <= (cout(79) xnor resto(63) xnor aux(4));--porta XNOR (quociente)
	quoc(4) <= cout(79) xor resto(63) xor aux(4);--porta XOR (que sera a entrada q)
	bout(11) <= not (quoc(4));
	
--LINHA 5	
  U80: Div_AXSC3_1 PORT MAP(
   x => x(10),
   y => y(0),
   bin => quoc(4),
   q => quoc(4),
   bout => cout(80),
   r => resto(80));

 U81: Div_AXSC3_1 PORT MAP(
   x => resto(64),
   y => y(1),
   bin => cout(80),
   q => quoc(4),
   bout => cout(81),
   r => resto(81));

 U82: Div_AXSC3_1 PORT MAP(
   x => resto(65),
   y => y(2),
   bin => cout(81),
   q => quoc(4),
   bout => cout(82),
   r => resto(82));

 U83: Div_AXSC3_1 PORT MAP(
   x => resto(66),
   y => y(3),
   bin => cout(82),
   q => quoc(4),
   bout => cout(83),
   r => resto(83));

 U84: Div_AXSC3_1 PORT MAP(
   x => resto(67),
   y => y(4),
   bin => cout(83),
   q => quoc(4),
   bout => cout(84),
   r => resto(84));

 U85: Div_AXSC3_1 PORT MAP(
   x => resto(68),
   y => y(5),
   bin => cout(84),
   q => quoc(4),
   bout => cout(85),
   r => resto(85));

 U86: Div_AXSC3_1 PORT MAP(
   x => resto(69),
   y => y(6),
   bin => cout(85),
   q => quoc(4),
   bout => cout(86),
   r => resto(86));

 U87: Div_AXSC3_1 PORT MAP(
   x => resto(70),
   y => y(7),
   bin => cout(86),
   q => quoc(4),
   bout => cout(87),
   r => resto(87));

 U88: Div_AXSC3_1 PORT MAP(
   x => resto(71),
   y => y(8),
   bin => cout(87),
   q => quoc(4),
   bout => cout(88),
   r => resto(88));

 U89: Div_AXSC3_1 PORT MAP(
   x => resto(72),
   y => y(9),
   bin => cout(88),
   q => quoc(4),
   bout => cout(89),
   r => resto(89));

 U90: Div_AXSC3_1 PORT MAP(
   x => resto(73),
   y => y(10),
   bin => cout(89),
   q => quoc(4),
   bout => cout(90),
   r => resto(90));

 U91: Div_AXSC3_1 PORT MAP(
   x => resto(74),
   y => y(11),
   bin => cout(90),
   q => quoc(4),
   bout => cout(91),
   r => resto(91));

 U92: Div_AXSC3_1 PORT MAP(
   x => resto(75),
   y => y(12),
   bin => cout(91),
   q => quoc(4),
   bout => cout(92),
   r => resto(92));

 U93: Div_AXSC3_1 PORT MAP(
   x => resto(76),
   y => y(13),
   bin => cout(92),
   q => quoc(4),
   bout => cout(93),
   r => resto(93));

 U94: Div_AXSC3_1 PORT MAP(
   x => resto(77),
   y => y(14),
   bin => cout(93),
   q => quoc(4),
   bout => cout(94),
   r => resto(94));

 U95: Div_AXSC3_1 PORT MAP(
   x => resto(78),
   y => y(15),
   bin => cout(94),
   q => quoc(4),
   bout => cout(95),
   r => resto(95));


	
	aux(5) <= quoc(4);--sinal q
	--bout(5) <= (cout(95) xnor resto(79) xnor aux(5));--porta XNOR (quociente)
	quoc(5) <= cout(95) xor resto(79) xor aux(5);--porta XOR (que sera a entrada q)
	bout(10) <= not (quoc(5));
	
--LINHA 6	
 U96: Div_AXSC3_1 PORT MAP(
   x => x(9),
   y => y(0),
   bin => quoc(5),
   q => quoc(5),
   bout => cout(96),
   r => resto(96));

 U97: Div_AXSC3_1 PORT MAP(
   x => resto(80),
   y => y(1),
   bin => cout(96),
   q => quoc(5),
   bout => cout(97),
   r => resto(97));

 U98: Div_AXSC3_1 PORT MAP(
   x => resto(81),
   y => y(2),
   bin => cout(97),
   q => quoc(5),
   bout => cout(98),
   r => resto(98));

 U99: Div_AXSC3_1 PORT MAP(
   x => resto(82),
   y => y(3),
   bin => cout(98),
   q => quoc(5),
   bout => cout(99),
   r => resto(99));

 U100: Div_AXSC3_1 PORT MAP(
   x => resto(83),
   y => y(4),
   bin => cout(99),
   q => quoc(5),
   bout => cout(100),
   r => resto(100));

 U101: Div_AXSC3_1 PORT MAP(
   x => resto(84),
   y => y(5),
   bin => cout(100),
   q => quoc(5),
   bout => cout(101),
   r => resto(101));

 U102: Div_AXSC3_1 PORT MAP(
   x => resto(85),
   y => y(6),
   bin => cout(101),
   q => quoc(5),
   bout => cout(102),
   r => resto(102));

 U103: Div_AXSC3_1 PORT MAP(
   x => resto(86),
   y => y(7),
   bin => cout(102),
   q => quoc(5),
   bout => cout(103),
   r => resto(103));

 U104: Div_AXSC3_1 PORT MAP(
   x => resto(87),
   y => y(8),
   bin => cout(103),
   q => quoc(5),
   bout => cout(104),
   r => resto(104));

 U105: Div_AXSC3_1 PORT MAP(
   x => resto(88),
   y => y(9),
   bin => cout(104),
   q => quoc(5),
   bout => cout(105),
   r => resto(105));

 U106: Div_AXSC3_1 PORT MAP(
   x => resto(89),
   y => y(10),
   bin => cout(105),
   q => quoc(5),
   bout => cout(106),
   r => resto(106));

 U107: Div_AXSC3_1 PORT MAP(
   x => resto(90),
   y => y(11),
   bin => cout(106),
   q => quoc(5),
   bout => cout(107),
   r => resto(107));

 U108: Div_AXSC3_1 PORT MAP(
   x => resto(91),
   y => y(12),
   bin => cout(107),
   q => quoc(5),
   bout => cout(108),
   r => resto(108));

 U109: Div_AXSC3_1 PORT MAP(
   x => resto(92),
   y => y(13),
   bin => cout(108),
   q => quoc(5),
   bout => cout(109),
   r => resto(109));

 U110: Div_AXSC3_1 PORT MAP(
   x => resto(93),
   y => y(14),
   bin => cout(109),
   q => quoc(5),
   bout => cout(110),
   r => resto(110));

 U111: Div_AXSC3_1 PORT MAP(
   x => resto(94),
   y => y(15),
   bin => cout(110),
   q => quoc(5),
   bout => cout(111),
   r => resto(111));


	
	aux(6) <= quoc(5);--sinal q
	--bout(6) <= (cout(111) xnor resto(95) xnor aux(6));--porta XNOR (quociente)
	quoc(6) <= cout(111) xor resto(95) xor aux(6);--porta XOR (que sera a entrada q)
	bout(9) <= not (quoc(6));
	
--LINHA 7	
 U112: Div_AXSC3_1 PORT MAP(
   x => x(8),
   y => y(0),
   bin => quoc(6),
   q => quoc(6),
   bout => cout(112),
   r => resto(112));

 U113: Div_AXSC3_1 PORT MAP(
   x => resto(96),
   y => y(1),
   bin => cout(112),
   q => quoc(6),
   bout => cout(113),
   r => resto(113));

 U114: Div_AXSC3_1 PORT MAP(
   x => resto(97),
   y => y(2),
   bin => cout(113),
   q => quoc(6),
   bout => cout(114),
   r => resto(114));

 U115: Div_AXSC3_1 PORT MAP(
   x => resto(98),
   y => y(3),
   bin => cout(114),
   q => quoc(6),
   bout => cout(115),
   r => resto(115));

 U116: Div_AXSC3_1 PORT MAP(
   x => resto(99),
   y => y(4),
   bin => cout(115),
   q => quoc(6),
   bout => cout(116),
   r => resto(116));

 U117: Div_AXSC3_1 PORT MAP(
   x => resto(100),
   y => y(5),
   bin => cout(116),
   q => quoc(6),
   bout => cout(117),
   r => resto(117));

 U118: Div_AXSC3_1 PORT MAP(
   x => resto(101),
   y => y(6),
   bin => cout(117),
   q => quoc(6),
   bout => cout(118),
   r => resto(118));

 U119: Div_AXSC3_1 PORT MAP(
   x => resto(102),
   y => y(7),
   bin => cout(118),
   q => quoc(6),
   bout => cout(119),
   r => resto(119));

 U120: Div_AXSC3_1 PORT MAP(
   x => resto(103),
   y => y(8),
   bin => cout(119),
   q => quoc(6),
   bout => cout(120),
   r => resto(120));

 U121: Div_AXSC3_1 PORT MAP(
   x => resto(104),
   y => y(9),
   bin => cout(120),
   q => quoc(6),
   bout => cout(121),
   r => resto(121));

 U122: Div_AXSC3_1 PORT MAP(
   x => resto(105),
   y => y(10),
   bin => cout(121),
   q => quoc(6),
   bout => cout(122),
   r => resto(122));

 U123: Div_AXSC3_1 PORT MAP(
   x => resto(106),
   y => y(11),
   bin => cout(122),
   q => quoc(6),
   bout => cout(123),
   r => resto(123));

 U124: Div_AXSC3_1 PORT MAP(
   x => resto(107),
   y => y(12),
   bin => cout(123),
   q => quoc(6),
   bout => cout(124),
   r => resto(124));

 U125: Div_AXSC3_1 PORT MAP(
   x => resto(108),
   y => y(13),
   bin => cout(124),
   q => quoc(6),
   bout => cout(125),
   r => resto(125));

 U126: Div_AXSC3_1 PORT MAP(
   x => resto(109),
   y => y(14),
   bin => cout(125),
   q => quoc(6),
   bout => cout(126),
   r => resto(126));

 U127: Div_AXSC3_1 PORT MAP(
   x => resto(110),
   y => y(15),
   bin => cout(126),
   q => quoc(6),
   bout => cout(127),
   r => resto(127));


	
	aux(7) <= quoc(6);--sinal q
	--bout(7) <= (cout(127) xnor resto(111) xnor aux(7));--porta XNOR (quociente)
	quoc(7) <= cout(127) xor resto(111) xor aux(7);--porta XOR (que sera a entrada q)
	bout(8) <= not (quoc(7));
	
--LINHA 8	
 U128: Div_AXSC3_1 PORT MAP(
   x => x(7),
   y => y(0),
   bin => quoc(7),
   q => quoc(7),
   bout => cout(128),
   r => resto(128));

 U129: Div_AXSC3_1 PORT MAP(
   x => resto(112),
   y => y(1),
   bin => cout(128),
   q => quoc(7),
   bout => cout(129),
   r => resto(129));

 U130: Div_AXSC3_1 PORT MAP(
   x => resto(113),
   y => y(2),
   bin => cout(129),
   q => quoc(7),
   bout => cout(130),
   r => resto(130));

 U131: Div_AXSC3_1 PORT MAP(
   x => resto(114),
   y => y(3),
   bin => cout(130),
   q => quoc(7),
   bout => cout(131),
   r => resto(131));

 U132: Div_AXSC3_1 PORT MAP(
   x => resto(115),
   y => y(4),
   bin => cout(131),
   q => quoc(7),
   bout => cout(132),
   r => resto(132));

 U133: Div_AXSC3_1 PORT MAP(
   x => resto(116),
   y => y(5),
   bin => cout(132),
   q => quoc(7),
   bout => cout(133),
   r => resto(133));

 U134: Div_AXSC3_1 PORT MAP(
   x => resto(117),
   y => y(6),
   bin => cout(133),
   q => quoc(7),
   bout => cout(134),
   r => resto(134));

 U135: Div_AXSC3_1 PORT MAP(
   x => resto(118),
   y => y(7),
   bin => cout(134),
   q => quoc(7),
   bout => cout(135),
   r => resto(135));

 U136: Div_AXSC3_1 PORT MAP(
   x => resto(119),
   y => y(8),
   bin => cout(135),
   q => quoc(7),
   bout => cout(136),
   r => resto(136));

 U137: Div_AXSC3_1 PORT MAP(
   x => resto(120),
   y => y(9),
   bin => cout(136),
   q => quoc(7),
   bout => cout(137),
   r => resto(137));

 U138: Div_AXSC3_1 PORT MAP(
   x => resto(121),
   y => y(10),
   bin => cout(137),
   q => quoc(7),
   bout => cout(138),
   r => resto(138));

 U139: Div_AXSC3_1 PORT MAP(
   x => resto(122),
   y => y(11),
   bin => cout(138),
   q => quoc(7),
   bout => cout(139),
   r => resto(139));

 U140: Div_AXSC3_1 PORT MAP(
   x => resto(123),
   y => y(12),
   bin => cout(139),
   q => quoc(7),
   bout => cout(140),
   r => resto(140));

 U141: Div_AXSC3_1 PORT MAP(
   x => resto(124),
   y => y(13),
   bin => cout(140),
   q => quoc(7),
   bout => cout(141),
   r => resto(141));

 U142: Div_AXSC3_1 PORT MAP(
   x => resto(125),
   y => y(14),
   bin => cout(141),
   q => quoc(7),
   bout => cout(142),
   r => resto(142));

 U143: Div_AXSC3_1 PORT MAP(
   x => resto(126),
   y => y(15),
   bin => cout(142),
   q => quoc(7),
   bout => cout(143),
   r => resto(143));


	
	aux(8) <= quoc(7);--sinal q
	--bout(8) <= (cout(143) xnor resto(127) xnor aux(8));--porta XNOR (quociente)
	quoc(8) <= cout(143) xor resto(127) xor aux(8);--porta XOR (que sera a entrada q)
	bout(7) <= not (quoc(8));
	
--LINHA 9	
 U144: Div_AXSC3_1 PORT MAP(
   x => x(6),
   y => y(0),
   bin => quoc(8),
   q => quoc(8),
   bout => cout(144),
   r => resto(144));

 U145: Div_AXSC3_1 PORT MAP(
   x => resto(128),
   y => y(1),
   bin => cout(144),
   q => quoc(8),
   bout => cout(145),
   r => resto(145));

 U146: Div_AXSC3_1 PORT MAP(
   x => resto(129),
   y => y(2),
   bin => cout(145),
   q => quoc(8),
   bout => cout(146),
   r => resto(146));

 U147: Div_AXSC3_1 PORT MAP(
   x => resto(130),
   y => y(3),
   bin => cout(146),
   q => quoc(8),
   bout => cout(147),
   r => resto(147));

 U148: Div_AXSC3_1 PORT MAP(
   x => resto(131),
   y => y(4),
   bin => cout(147),
   q => quoc(8),
   bout => cout(148),
   r => resto(148));

 U149: Div_AXSC3_1 PORT MAP(
   x => resto(132),
   y => y(5),
   bin => cout(148),
   q => quoc(8),
   bout => cout(149),
   r => resto(149));

 U150: Div_AXSC3_1 PORT MAP(
   x => resto(133),
   y => y(6),
   bin => cout(149),
   q => quoc(8),
   bout => cout(150),
   r => resto(150));

 U151: Div_AXSC3_1 PORT MAP(
   x => resto(134),
   y => y(7),
   bin => cout(150),
   q => quoc(8),
   bout => cout(151),
   r => resto(151));

 U152: Div_AXSC3_1 PORT MAP(
   x => resto(135),
   y => y(8),
   bin => cout(151),
   q => quoc(8),
   bout => cout(152),
   r => resto(152));

 U153: Div_AXSC3_1 PORT MAP(
   x => resto(136),
   y => y(9),
   bin => cout(152),
   q => quoc(8),
   bout => cout(153),
   r => resto(153));

 U154: Div_AXSC3_1 PORT MAP(
   x => resto(137),
   y => y(10),
   bin => cout(153),
   q => quoc(8),
   bout => cout(154),
   r => resto(154));

 U155: Div_AXSC3_1 PORT MAP(
   x => resto(138),
   y => y(11),
   bin => cout(154),
   q => quoc(8),
   bout => cout(155),
   r => resto(155));

 U156: Div_AXSC3_1 PORT MAP(
   x => resto(139),
   y => y(12),
   bin => cout(155),
   q => quoc(8),
   bout => cout(156),
   r => resto(156));

 U157: Div_AXSC3_1 PORT MAP(
   x => resto(140),
   y => y(13),
   bin => cout(156),
   q => quoc(8),
   bout => cout(157),
   r => resto(157));

 U158: Div_AXSC3_1 PORT MAP(
   x => resto(141),
   y => y(14),
   bin => cout(157),
   q => quoc(8),
   bout => cout(158),
   r => resto(158));

 U159: Div_AXSC3_1 PORT MAP(
   x => resto(142),
   y => y(15),
   bin => cout(158),
   q => quoc(8),
   bout => cout(159),
   r => resto(159));


	
	aux(9) <= quoc(8);--sinal q
	--bout(9) <= (cout(159) xnor resto(143) xnor aux(9));--porta XNOR (quociente)
	quoc(9) <= cout(159) xor resto(143) xor aux(9);--porta XOR (que sera a entrada q)
	bout(6) <= not (quoc(9));
	
--LINHA 10	
 U160: Div_AXSC3_1 PORT MAP(
   x => x(5),
   y => y(0),
   bin => quoc(9),
   q => quoc(9),
   bout => cout(160),
   r => resto(160));

 U161: Div_AXSC3_1 PORT MAP(
   x => resto(144),
   y => y(1),
   bin => cout(160),
   q => quoc(9),
   bout => cout(161),
   r => resto(161));

 U162: Div_AXSC3_1 PORT MAP(
   x => resto(145),
   y => y(2),
   bin => cout(161),
   q => quoc(9),
   bout => cout(162),
   r => resto(162));

 U163: Div_AXSC3_1 PORT MAP(
   x => resto(146),
   y => y(3),
   bin => cout(162),
   q => quoc(9),
   bout => cout(163),
   r => resto(163));

 U164: Div_AXSC3_1 PORT MAP(
   x => resto(147),
   y => y(4),
   bin => cout(163),
   q => quoc(9),
   bout => cout(164),
   r => resto(164));

 U165: Div_AXSC3_1 PORT MAP(
   x => resto(148),
   y => y(5),
   bin => cout(164),
   q => quoc(9),
   bout => cout(165),
   r => resto(165));

 U166: Div_AXSC3_1 PORT MAP(
   x => resto(149),
   y => y(6),
   bin => cout(165),
   q => quoc(9),
   bout => cout(166),
   r => resto(166));

 U167: Div_AXSC3_1 PORT MAP(
   x => resto(150),
   y => y(7),
   bin => cout(166),
   q => quoc(9),
   bout => cout(167),
   r => resto(167));

 U168: Div_AXSC3_1 PORT MAP(
   x => resto(151),
   y => y(8),
   bin => cout(167),
   q => quoc(9),
   bout => cout(168),
   r => resto(168));

 U169: Div_AXSC3_1 PORT MAP(
   x => resto(152),
   y => y(9),
   bin => cout(168),
   q => quoc(9),
   bout => cout(169),
   r => resto(169));

 U170: Div_AXSC3_1 PORT MAP(
   x => resto(153),
   y => y(10),
   bin => cout(169),
   q => quoc(9),
   bout => cout(170),
   r => resto(170));

 U171: Div_AXSC3_1 PORT MAP(
   x => resto(154),
   y => y(11),
   bin => cout(170),
   q => quoc(9),
   bout => cout(171),
   r => resto(171));

 U172: Div_AXSC3_1 PORT MAP(
   x => resto(155),
   y => y(12),
   bin => cout(171),
   q => quoc(9),
   bout => cout(172),
   r => resto(172));

 U173: Div_AXSC3_1 PORT MAP(
   x => resto(156),
   y => y(13),
   bin => cout(172),
   q => quoc(9),
   bout => cout(173),
   r => resto(173));

 U174: Div_AXSC3_1 PORT MAP(
   x => resto(157),
   y => y(14),
   bin => cout(173),
   q => quoc(9),
   bout => cout(174),
   r => resto(174));

 U175: Div_AXSC3_1 PORT MAP(
   x => resto(158),
   y => y(15),
   bin => cout(174),
   q => quoc(9),
   bout => cout(175),
   r => resto(175));

	
	aux(10) <= quoc(9);--sinal q
	--bout(10) <= (cout(175) xnor resto(159) xnor aux(10));--porta XNOR (quociente)
	quoc(10) <= cout(175) xor resto(159) xor aux(10);--porta XOR (que sera a entrada q)
	bout(5) <= not (quoc(10));
	
--LINHA 11	
 U176: Div_AXSC3_1 PORT MAP(
   x => x(4),
   y => y(0),
   bin => quoc(10),
   q => quoc(10),
   bout => cout(176),
   r => resto(176));

 U177: Div_AXSC3_1 PORT MAP(
   x => resto(160),
   y => y(1),
   bin => cout(176),
   q => quoc(10),
   bout => cout(177),
   r => resto(177));

 U178: Div_AXSC3_1 PORT MAP(
   x => resto(161),
   y => y(2),
   bin => cout(177),
   q => quoc(10),
   bout => cout(178),
   r => resto(178));

 U179: Div_AXSC3_1 PORT MAP(
   x => resto(162),
   y => y(3),
   bin => cout(178),
   q => quoc(10),
   bout => cout(179),
   r => resto(179));

 U180: Div_AXSC3_1 PORT MAP(
   x => resto(163),
   y => y(4),
   bin => cout(179),
   q => quoc(10),
   bout => cout(180),
   r => resto(180));

 U181: Div_AXSC3_1 PORT MAP(
   x => resto(164),
   y => y(5),
   bin => cout(180),
   q => quoc(10),
   bout => cout(181),
   r => resto(181));

 U182: Div_AXSC3_1 PORT MAP(
   x => resto(165),
   y => y(6),
   bin => cout(181),
   q => quoc(10),
   bout => cout(182),
   r => resto(182));

 U183: Div_AXSC3_1 PORT MAP(
   x => resto(166),
   y => y(7),
   bin => cout(182),
   q => quoc(10),
   bout => cout(183),
   r => resto(183));

 U184: Div_AXSC3_1 PORT MAP(
   x => resto(167),
   y => y(8),
   bin => cout(183),
   q => quoc(10),
   bout => cout(184),
   r => resto(184));

 U185: Div_AXSC3_1 PORT MAP(
   x => resto(168),
   y => y(9),
   bin => cout(184),
   q => quoc(10),
   bout => cout(185),
   r => resto(185));

 U186: Div_AXSC3_1 PORT MAP(
   x => resto(169),
   y => y(10),
   bin => cout(185),
   q => quoc(10),
   bout => cout(186),
   r => resto(186));

 U187: Div_AXSC3_1 PORT MAP(
   x => resto(170),
   y => y(11),
   bin => cout(186),
   q => quoc(10),
   bout => cout(187),
   r => resto(187));

 U188: Div_AXSC3_1 PORT MAP(
   x => resto(171),
   y => y(12),
   bin => cout(187),
   q => quoc(10),
   bout => cout(188),
   r => resto(188));

 U189: Div_AXSC3_1 PORT MAP(
   x => resto(172),
   y => y(13),
   bin => cout(188),
   q => quoc(10),
   bout => cout(189),
   r => resto(189));

 U190: Div_AXSC3_1 PORT MAP(
   x => resto(173),
   y => y(14),
   bin => cout(189),
   q => quoc(10),
   bout => cout(190),
   r => resto(190));

 U191: Div_AXSC3_1 PORT MAP(
   x => resto(174),
   y => y(15),
   bin => cout(190),
   q => quoc(10),
   bout => cout(191),
   r => resto(191));


	
	aux(11) <= quoc(10);--sinal q
	--bout(11) <= (cout(191) xnor resto(175) xnor aux(11));--porta XNOR (quociente)
	quoc(11) <= cout(191) xor resto(175) xor aux(11);--porta XOR (que sera a entrada q)
	bout(4) <= not (quoc(11));
	
--LINHA 12	
 U192: Div_AXSC3_1 PORT MAP(
   x => x(3),
   y => y(0),
   bin => quoc(11),
   q => quoc(11),
   bout => cout(192),
   r => resto(192));

 U193: Div_AXSC3_1 PORT MAP(
   x => resto(176),
   y => y(1),
   bin => cout(192),
   q => quoc(11),
   bout => cout(193),
   r => resto(193));

 U194: Div_AXSC3_1 PORT MAP(
   x => resto(177),
   y => y(2),
   bin => cout(193),
   q => quoc(11),
   bout => cout(194),
   r => resto(194));

 U195: Div_AXSC3_1 PORT MAP(
   x => resto(178),
   y => y(3),
   bin => cout(194),
   q => quoc(11),
   bout => cout(195),
   r => resto(195));

 U196: Div_AXSC3_1 PORT MAP(
   x => resto(179),
   y => y(4),
   bin => cout(195),
   q => quoc(11),
   bout => cout(196),
   r => resto(196));

 U197: Div_AXSC3_1 PORT MAP(
   x => resto(180),
   y => y(5),
   bin => cout(196),
   q => quoc(11),
   bout => cout(197),
   r => resto(197));

 U198: Div_AXSC3_1 PORT MAP(
   x => resto(181),
   y => y(6),
   bin => cout(197),
   q => quoc(11),
   bout => cout(198),
   r => resto(198));

 U199: Div_AXSC3_1 PORT MAP(
   x => resto(182),
   y => y(7),
   bin => cout(198),
   q => quoc(11),
   bout => cout(199),
   r => resto(199));

 U200: Div_AXSC3_1 PORT MAP(
   x => resto(183),
   y => y(8),
   bin => cout(199),
   q => quoc(11),
   bout => cout(200),
   r => resto(200));

 U201: Div_AXSC3_1 PORT MAP(
   x => resto(184),
   y => y(9),
   bin => cout(200),
   q => quoc(11),
   bout => cout(201),
   r => resto(201));

 U202: Div_AXSC3_1 PORT MAP(
   x => resto(185),
   y => y(10),
   bin => cout(201),
   q => quoc(11),
   bout => cout(202),
   r => resto(202));

 U203: Div_AXSC3_1 PORT MAP(
   x => resto(186),
   y => y(11),
   bin => cout(202),
   q => quoc(11),
   bout => cout(203),
   r => resto(203));

 U204: Div_AXSC3_1 PORT MAP(
   x => resto(187),
   y => y(12),
   bin => cout(203),
   q => quoc(11),
   bout => cout(204),
   r => resto(204));

 U205: Div_AXSC3_1 PORT MAP(
   x => resto(188),
   y => y(13),
   bin => cout(204),
   q => quoc(11),
   bout => cout(205),
   r => resto(205));

 U206: Div_AXSC3_1 PORT MAP(
   x => resto(189),
   y => y(14),
   bin => cout(205),
   q => quoc(11),
   bout => cout(206),
   r => resto(206));

 U207: Div_AXSC3_1 PORT MAP(
   x => resto(190),
   y => y(15),
   bin => cout(206),
   q => quoc(11),
   bout => cout(207),
   r => resto(207));

	
	aux(12) <= quoc(11);--sinal q
	--bout(12) <= (cout(207) xnor resto(191) xnor aux(12));--porta XNOR (quociente)
	quoc(12) <= cout(207) xor resto(191) xor aux(12);--porta XOR (que sera a entrada q)
	bout(3) <= not (quoc(12));
	
--LINHA 13	
 U208: Div_AXSC3_1 PORT MAP(
   x => x(2),
   y => y(0),
   bin => quoc(12),
   q => quoc(12),
   bout => cout(208),
   r => resto(208));

 U209: Div_AXSC3_1 PORT MAP(
   x => resto(192),
   y => y(1),
   bin => cout(208),
   q => quoc(12),
   bout => cout(209),
   r => resto(209));

 U210: Div_AXSC3_1 PORT MAP(
   x => resto(193),
   y => y(2),
   bin => cout(209),
   q => quoc(12),
   bout => cout(210),
   r => resto(210));

 U211: Div_AXSC3_1 PORT MAP(
   x => resto(194),
   y => y(3),
   bin => cout(210),
   q => quoc(12),
   bout => cout(211),
   r => resto(211));

 U212: Div_AXSC3_1 PORT MAP(
   x => resto(195),
   y => y(4),
   bin => cout(211),
   q => quoc(12),
   bout => cout(212),
   r => resto(212));

 U213: Div_AXSC3_1 PORT MAP(
   x => resto(196),
   y => y(5),
   bin => cout(212),
   q => quoc(12),
   bout => cout(213),
   r => resto(213));

 U214: Div_AXSC3_1 PORT MAP(
   x => resto(197),
   y => y(6),
   bin => cout(213),
   q => quoc(12),
   bout => cout(214),
   r => resto(214));

 U215: Div_AXSC3_1 PORT MAP(
   x => resto(198),
   y => y(7),
   bin => cout(214),
   q => quoc(12),
   bout => cout(215),
   r => resto(215));

 U216: Div_AXSC3_1 PORT MAP(
   x => resto(199),
   y => y(8),
   bin => cout(215),
   q => quoc(12),
   bout => cout(216),
   r => resto(216));

 U217: Div_AXSC3_1 PORT MAP(
   x => resto(200),
   y => y(9),
   bin => cout(216),
   q => quoc(12),
   bout => cout(217),
   r => resto(217));

 U218: Div_AXSC3_1 PORT MAP(
   x => resto(201),
   y => y(10),
   bin => cout(217),
   q => quoc(12),
   bout => cout(218),
   r => resto(218));

 U219: Div_AXSC3_1 PORT MAP(
   x => resto(202),
   y => y(11),
   bin => cout(218),
   q => quoc(12),
   bout => cout(219),
   r => resto(219));

 U220: Div_AXSC3_1 PORT MAP(
   x => resto(203),
   y => y(12),
   bin => cout(219),
   q => quoc(12),
   bout => cout(220),
   r => resto(220));

 U221: Div_AXSC3_1 PORT MAP(
   x => resto(204),
   y => y(13),
   bin => cout(220),
   q => quoc(12),
   bout => cout(221),
   r => resto(221));

 U222: Div_AXSC3_1 PORT MAP(
   x => resto(205),
   y => y(14),
   bin => cout(221),
   q => quoc(12),
   bout => cout(222),
   r => resto(222));

 U223: Div_AXSC3_1 PORT MAP(
   x => resto(206),
   y => y(15),
   bin => cout(222),
   q => quoc(12),
   bout => cout(223),
   r => resto(223));


	
	aux(13) <= quoc(12);--sinal q
	--bout(13) <= (cout(223) xnor resto(207) xnor aux(13));--porta XNOR (quociente)
	quoc(13) <= cout(223) xor resto(207) xor aux(13);--porta XOR (que sera a entrada q)
	bout(2) <= not (quoc(13));
	
--LINHA 14	
 U224: Div_AXSC3_1 PORT MAP(
   x => x(1),
   y => y(0),
   bin => quoc(13),
   q => quoc(13),
   bout => cout(224),
   r => resto(224));

 U225: Div_AXSC3_1 PORT MAP(
   x => resto(208),
   y => y(1),
   bin => cout(224),
   q => quoc(13),
   bout => cout(225),
   r => resto(225));

 U226: Div_AXSC3_1 PORT MAP(
   x => resto(209),
   y => y(2),
   bin => cout(225),
   q => quoc(13),
   bout => cout(226),
   r => resto(226));

 U227: Div_AXSC3_1 PORT MAP(
   x => resto(210),
   y => y(3),
   bin => cout(226),
   q => quoc(13),
   bout => cout(227),
   r => resto(227));

 U228: Div_AXSC3_1 PORT MAP(
   x => resto(211),
   y => y(4),
   bin => cout(227),
   q => quoc(13),
   bout => cout(228),
   r => resto(228));

 U229: Div_AXSC3_1 PORT MAP(
   x => resto(212),
   y => y(5),
   bin => cout(228),
   q => quoc(13),
   bout => cout(229),
   r => resto(229));

 U230: Div_AXSC3_1 PORT MAP(
   x => resto(213),
   y => y(6),
   bin => cout(229),
   q => quoc(13),
   bout => cout(230),
   r => resto(230));

 U231: Div_AXSC3_1 PORT MAP(
   x => resto(214),
   y => y(7),
   bin => cout(230),
   q => quoc(13),
   bout => cout(231),
   r => resto(231));

 U232: Div_AXSC3_1 PORT MAP(
   x => resto(215),
   y => y(8),
   bin => cout(231),
   q => quoc(13),
   bout => cout(232),
   r => resto(232));

 U233: Div_AXSC3_1 PORT MAP(
   x => resto(216),
   y => y(9),
   bin => cout(232),
   q => quoc(13),
   bout => cout(233),
   r => resto(233));

 U234: Div_AXSC3_1 PORT MAP(
   x => resto(217),
   y => y(10),
   bin => cout(233),
   q => quoc(13),
   bout => cout(234),
   r => resto(234));

 U235: Div_AXSC3_1 PORT MAP(
   x => resto(218),
   y => y(11),
   bin => cout(234),
   q => quoc(13),
   bout => cout(235),
   r => resto(235));

 U236: Div_AXSC3_1 PORT MAP(
   x => resto(219),
   y => y(12),
   bin => cout(235),
   q => quoc(13),
   bout => cout(236),
   r => resto(236));

 U237: Div_AXSC3_1 PORT MAP(
   x => resto(220),
   y => y(13),
   bin => cout(236),
   q => quoc(13),
   bout => cout(237),
   r => resto(237));

 U238: Div_AXSC3_1 PORT MAP(
   x => resto(221),
   y => y(14),
   bin => cout(237),
   q => quoc(13),
   bout => cout(238),
   r => resto(238));

 U239: Div_AXSC3_1 PORT MAP(
   x => resto(222),
   y => y(15),
   bin => cout(238),
   q => quoc(13),
   bout => cout(239),
   r => resto(239));


	
	aux(14) <= quoc(13);--sinal q
	--bout(14) <= (cout(239) xnor resto(223) xnor aux(14));--porta XNOR (quociente)
	quoc(14) <= cout(239) xor resto(223) xor aux(14);--porta XOR (que sera a entrada q)
	bout(1) <= not (quoc(14));
	
--LINHA 15	
 U240: Div_AXSC3_1 PORT MAP(
   x => x(0),
   y => y(0),
   bin => quoc(14),
   q => quoc(14),
   bout => cout(240),
   r => resto(240));

 U241: Div_AXSC3_1 PORT MAP(
   x => resto(224),
   y => y(1),
   bin => cout(240),
   q => quoc(14),
   bout => cout(241),
   r => resto(241));

 U242: Div_AXSC3_1 PORT MAP(
   x => resto(225),
   y => y(2),
   bin => cout(241),
   q => quoc(14),
   bout => cout(242),
   r => resto(242));

 U243: Div_AXSC3_1 PORT MAP(
   x => resto(226),
   y => y(3),
   bin => cout(242),
   q => quoc(14),
   bout => cout(243),
   r => resto(243));

 U244: Div_AXSC3_1 PORT MAP(
   x => resto(227),
   y => y(4),
   bin => cout(243),
   q => quoc(14),
   bout => cout(244),
   r => resto(244));

 U245: Div_AXSC3_1 PORT MAP(
   x => resto(228),
   y => y(5),
   bin => cout(244),
   q => quoc(14),
   bout => cout(245),
   r => resto(245));

 U246: Div_AXSC3_1 PORT MAP(
   x => resto(229),
   y => y(6),
   bin => cout(245),
   q => quoc(14),
   bout => cout(246),
   r => resto(246));

 U247: Div_AXSC3_1 PORT MAP(
   x => resto(230),
   y => y(7),
   bin => cout(246),
   q => quoc(14),
   bout => cout(247),
   r => resto(247));

 U248: Div_AXSC3_1 PORT MAP(
   x => resto(231),
   y => y(8),
   bin => cout(247),
   q => quoc(14),
   bout => cout(248),
   r => resto(248));

 U249: Div_AXSC3_1 PORT MAP(
   x => resto(232),
   y => y(9),
   bin => cout(248),
   q => quoc(14),
   bout => cout(249),
   r => resto(249));

 U250: Div_AXSC3_1 PORT MAP(
   x => resto(233),
   y => y(10),
   bin => cout(249),
   q => quoc(14),
   bout => cout(250),
   r => resto(250));

 U251: Div_AXSC3_1 PORT MAP(
   x => resto(234),
   y => y(11),
   bin => cout(250),
   q => quoc(14),
   bout => cout(251),
   r => resto(251));

 U252: Div_AXSC3_1 PORT MAP(
   x => resto(235),
   y => y(12),
   bin => cout(251),
   q => quoc(14),
   bout => cout(252),
   r => resto(252));

 U253: Div_AXSC3_1 PORT MAP(
   x => resto(236),
   y => y(13),
   bin => cout(252),
   q => quoc(14),
   bout => cout(253),
   r => resto(253));

 U254: Div_AXSC3_1 PORT MAP(
   x => resto(237),
   y => y(14),
   bin => cout(253),
   q => quoc(14),
   bout => cout(254),
   r => resto(254));

 U255: Div_AXSC3_1 PORT MAP(
   x => resto(238),
   y => y(15),
   bin => cout(254),
   q => quoc(14),
   bout => cout(255),
   r => resto(255));


	
	aux(15) <= quoc(14);--sinal q
	--bout(15) <= (cout(255) xnor resto(239) xnor aux(15));--porta XNOR (quociente)
	quoc(15) <= cout(255) xor resto(239) xor aux(15);--porta XOR (que sera a entrada q)
	bout(0) <= not (quoc(15));
	
	
	--PARTE DA CORRECAO
	saida(0) <= y(0) and quoc(15);
	saida(1) <= y(1) and quoc(15);
	saida(2) <= y(2) and quoc(15);
	saida(3) <= y(3) and quoc(15);
	saida(4) <= y(4) and quoc(15);
	saida(5) <= y(5) and quoc(15);
	saida(6) <= y(6) and quoc(15);
	saida(7) <= y(7) and quoc(15);
	
	saida(8) <= y(8) and quoc(15);
	saida(9) <= y(9) and quoc(15);
	saida(10) <= y(10) and quoc(15);
	saida(11) <= y(11) and quoc(15);
	saida(12) <= y(12) and quoc(15);
	saida(13) <= y(13) and quoc(15);
	saida(14) <= y(14) and quoc(15);
	saida(15) <= y(15) and quoc(15);
	
	 U256: Div_Exato_1 PORT MAP(
      x => resto(240),
      y => saida(0),
      bin => '1',
      q => '1',
      bout => cout(256),
      r => r(0)
   );
   
	 U257: Div_Exato_1 PORT MAP(
      x => resto(241),
      y => saida(1),	 
      bin => cout(256),
      q => '1',
      bout => cout(257),
      r => r(1)
   );
   
	 U258: Div_Exato_1 PORT MAP(
      x => resto(242),
      y => saida(2),
      bin => cout(257),
      q => '1',
      bout => cout(258),
      r => r(2)
   );

	 U259: Div_Exato_1 PORT MAP(
      x => resto(243),
      y => saida(3),
      bin => cout(258),
      q => '1',
      bout => cout(259),
      r => r(3)
   );
   
	U260: Div_Exato_1 PORT MAP(
      x => resto(244),
      y => saida(4),
      bin => cout(259),
      q => '1',
      bout => cout(260),
      r => r(4)
   );
   
   	U261: Div_Exato_1 PORT MAP(
      x => resto(245),
      y => saida(5),
      bin => cout(260),
      q => '1',
      bout => cout(261),
      r => r(5)
   );
   
   	U262: Div_Exato_1 PORT MAP(
      x => resto(246),
      y => saida(6),
      bin => cout(261),
      q => '1',
      bout => cout(262),
      r => r(6)
   ); 
   
   	U263: Div_Exato_1 PORT MAP(
      x => resto(247),
      y => saida(7),
      bin => cout(262),
      q => '1',
      bout => cout(263),
      r => r(7)
   ); 
   
   	U264: Div_Exato_1 PORT MAP(
      x => resto(248),
      y => saida(8),
      bin => cout(263),
      q => '1',
      bout => cout(264),
      r => r(8)
   );


	 U265: Div_Exato_1 PORT MAP(
      x => resto(249),
      y => saida(9),
      bin => cout(264),
      q => '1',
      bout => cout(265),
      r => r(9)
   );
   
	U266: Div_Exato_1 PORT MAP(
      x => resto(250),
      y => saida(10),
      bin => cout(265),
      q => '1',
      bout => cout(266),
      r => r(10)
   );
   
   	U267: Div_Exato_1 PORT MAP(
      x => resto(251),
      y => saida(11),
      bin => cout(266),
      q => '1',
      bout => cout(267),
      r => r(11)
   );
   
   	U268: Div_Exato_1 PORT MAP(
      x => resto(252),
      y => saida(12),
      bin => cout(267),
      q => '1',
      bout => cout(268),
      r => r(12)
   ); 
   
   	U269: Div_Exato_1 PORT MAP(
      x => resto(253),
      y => saida(13),
      bin => cout(268),
      q => '1',
      bout => cout(269),
      r => r(13)
   ); 
   
   	U270: Div_Exato_1 PORT MAP(
      x => resto(254),
      y => saida(14),
      bin => cout(269),
      q => '1',
      bout => cout(270),
      r => r(14)
   );  

   	U271: Div_Exato_1 PORT MAP(
      x => resto(255),
      y => saida(15),
      bin => cout(270),
      q => '1',
      bout => cout(271),
      r => r(15)
   );    

   
	
   
end Div32x16;
