library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Mult_AMA4_16 is
 port(
  A    : in std_logic_vector(15 downto 0);
  B    : in std_logic_vector(15 downto 0);
  R    : out std_logic_vector(31 downto 0)
 );
end Mult_AMA4_16;

architecture Mult16 of Mult_AMA4_16 is

 COMPONENT Soma_AMA4_1
 PORT(
  A : IN std_logic;
  B : IN std_logic;
  Cin : IN std_logic;          
  Cout : OUT std_logic;
  S : OUT std_logic
  );
 END COMPONENT;
 
signal C : STD_LOGIC_VECTOR (255 downto 0); --saida das AND
signal Carry : STD_LOGIC_VECTOR (238 downto 0); -- saida Cout dos somadores
signal E : STD_LOGIC_VECTOR (209 downto 0); -- Saida S dos somadores

begin
  C(0) <= A(0)and B(0);
  R(0) <= C(0);
  C(1) <= A(1)and B(0); 
  C(2) <= A(2)and B(0);
  C(3) <= A(3)and B(0);
  C(4) <= A(4)and B(0);
  C(5) <= A(5)and B(0);
  C(6) <= A(6)and B(0);
  C(7) <= A(7)and B(0);
  C(8) <= A(8)and B(0);
  C(9) <= A(9)and B(0); 
  C(10) <= A(10)and B(0);
  C(11) <= A(11)and B(0);
  C(12) <= A(12)and B(0);
  C(13) <= A(13)and B(0);
  C(14) <= A(14)and B(0);
  C(15) <= A(15)and B(0);
  
  C(16) <= A(0)and B(1);
  C(17) <= A(1)and B(1); 
  C(18) <= A(2)and B(1);
  C(19) <= A(3)and B(1);
  C(20) <= A(4)and B(1);
  C(21) <= A(5)and B(1);
  C(22) <= A(6)and B(1);
  C(23) <= A(7)and B(1);
  C(24) <= A(8)and B(1);
  C(25) <= A(9)and B(1); 
  C(26) <= A(10)and B(1);
  C(27) <= A(11)and B(1);
  C(28) <= A(12)and B(1);
  C(29) <= A(13)and B(1);
  C(30) <= A(14)and B(1);
  C(31) <= A(15)and B(1);
  
  
  C(32) <= A(0)and B(2);
  C(33) <= A(1)and B(2); 
  C(34) <= A(2)and B(2);
  C(35) <= A(3)and B(2);
  C(36) <= A(4)and B(2);
  C(37) <= A(5)and B(2);
  C(38) <= A(6)and B(2);
  C(39) <= A(7)and B(2);
  C(40) <= A(8)and B(2);
  C(41) <= A(9)and B(2); 
  C(42) <= A(10)and B(2);
  C(43) <= A(11)and B(2);
  C(44) <= A(12)and B(2);
  C(45) <= A(13)and B(2);
  C(46) <= A(14)and B(2);
  C(47) <= A(15)and B(2);  
  
  C(48) <= A(0)and B(3);
  C(49) <= A(1)and B(3); 
  C(50) <= A(2)and B(3);
  C(51) <= A(3)and B(3);
  C(52) <= A(4)and B(3);
  C(53) <= A(5)and B(3);
  C(54) <= A(6)and B(3);
  C(55) <= A(7)and B(3);
  C(56) <= A(8)and B(3);
  C(57) <= A(9)and B(3); 
  C(58) <= A(10)and B(3);
  C(59) <= A(11)and B(3);
  C(60) <= A(12)and B(3);
  C(61) <= A(13)and B(3);
  C(62) <= A(14)and B(3);
  C(63) <= A(15)and B(3);
  
  
  C(64) <= A(0)and B(4);
  C(65) <= A(1)and B(4); 
  C(66) <= A(2)and B(4);
  C(67) <= A(3)and B(4);
  C(68) <= A(4)and B(4);
  C(69) <= A(5)and B(4);
  C(70) <= A(6)and B(4);
  C(71) <= A(7)and B(4);
  C(72) <= A(8)and B(4);
  C(73) <= A(9)and B(4); 
  C(74) <= A(10)and B(4);
  C(75) <= A(11)and B(4);
  C(76) <= A(12)and B(4);
  C(77) <= A(13)and B(4);
  C(78) <= A(14)and B(4);
  C(79) <= A(15)and B(4);
  
    
  C(80) <= A(0)and B(5);
  C(81) <= A(1)and B(5); 
  C(82) <= A(2)and B(5);
  C(83) <= A(3)and B(5);
  C(84) <= A(4)and B(5);
  C(85) <= A(5)and B(5);
  C(86) <= A(6)and B(5);
  C(87) <= A(7)and B(5);
  C(88) <= A(8)and B(5);
  C(89) <= A(9)and B(5); 
  C(90) <= A(10)and B(5);
  C(91) <= A(11)and B(5);
  C(92) <= A(12)and B(5);
  C(93) <= A(13)and B(5);
  C(94) <= A(14)and B(5);
  C(95) <= A(15)and B(5);
  
  
  C(96) <= A(0)and B(6);
  C(97) <= A(1)and B(6); 
  C(98) <= A(2)and B(6);
  C(99) <= A(3)and B(6);
  C(100) <= A(4)and B(6);
  C(101) <= A(5)and B(6);
  C(102) <= A(6)and B(6);
  C(103) <= A(7)and B(6);
  C(104) <= A(8)and B(6);
  C(105) <= A(9)and B(6); 
  C(106) <= A(10)and B(6);
  C(107) <= A(11)and B(6);
  C(108) <= A(12)and B(6);
  C(109) <= A(13)and B(6);
  C(110) <= A(14)and B(6);
  C(111) <= A(15)and B(6);  
  
  C(112) <= A(0)and B(7);
  C(113) <= A(1)and B(7); 
  C(114) <= A(2)and B(7);
  C(115) <= A(3)and B(7);
  C(116) <= A(4)and B(7);
  C(117) <= A(5)and B(7);
  C(118) <= A(6)and B(7);
  C(119) <= A(7)and B(7);
  C(120) <= A(8)and B(7);
  C(121) <= A(9)and B(7); 
  C(122) <= A(10)and B(7);
  C(123) <= A(11)and B(7);
  C(124) <= A(12)and B(7);
  C(125) <= A(13)and B(7);  
  C(126) <= A(14)and B(7);
  C(127) <= A(15)and B(7);
  
  C(128) <= A(0)and B(8);
  C(129) <= A(1)and B(8); 
  C(130) <= A(2)and B(8);
  C(131) <= A(3)and B(8);
  C(132) <= A(4)and B(8);
  C(133) <= A(5)and B(8);
  C(134) <= A(6)and B(8);
  C(135) <= A(7)and B(8);
  C(136) <= A(8)and B(8);
  C(137) <= A(9)and B(8); 
  C(138) <= A(10)and B(8);
  C(139) <= A(11)and B(8);
  C(140) <= A(12)and B(8);
  C(141) <= A(13)and B(8);
  C(142) <= A(14)and B(8);
  C(143) <= A(15)and B(8);
  
  C(144) <= A(0)and B(9);
  C(145) <= A(1)and B(9); 
  C(146) <= A(2)and B(9);
  C(147) <= A(3)and B(9);
  C(148) <= A(4)and B(9);
  C(149) <= A(5)and B(9);
  C(150) <= A(6)and B(9);
  C(151) <= A(7)and B(9);
  C(152) <= A(8)and B(9);
  C(153) <= A(9)and B(9); 
  C(154) <= A(10)and B(9);
  C(155) <= A(11)and B(9);
  C(156) <= A(12)and B(9);
  C(157) <= A(13)and B(9);
  C(158) <= A(14)and B(9);
  C(159) <= A(15)and B(9);
  
  
  C(160) <= A(0)and B(10);
  C(161) <= A(1)and B(10); 
  C(162) <= A(2)and B(10);
  C(163) <= A(3)and B(10);
  C(164) <= A(4)and B(10);
  C(165) <= A(5)and B(10);
  C(166) <= A(6)and B(10);
  C(167) <= A(7)and B(10);
  C(168) <= A(8)and B(10);
  C(169) <= A(9)and B(10); 
  C(170) <= A(10)and B(10);
  C(171) <= A(11)and B(10);
  C(172) <= A(12)and B(10);
  C(173) <= A(13)and B(10);
  C(174) <= A(14)and B(10);
  C(175) <= A(15)and B(10);  
  
  C(176) <= A(0)and B(11);
  C(177) <= A(1)and B(11); 
  C(178) <= A(2)and B(11);
  C(179) <= A(3)and B(11);
  C(180) <= A(4)and B(11);
  C(181) <= A(5)and B(11);
  C(182) <= A(6)and B(11);
  C(183) <= A(7)and B(11);
  C(184) <= A(8)and B(11);
  C(185) <= A(9)and B(11); 
  C(186) <= A(10)and B(11);
  C(187) <= A(11)and B(11);
  C(188) <= A(12)and B(11);
  C(189) <= A(13)and B(11);
  C(190) <= A(14)and B(11);
  C(191) <= A(15)and B(11);
  
  
  C(192) <= A(0)and B(12);
  C(193) <= A(1)and B(12); 
  C(194) <= A(2)and B(12);
  C(195) <= A(3)and B(12);
  C(196) <= A(4)and B(12);
  C(197) <= A(5)and B(12);
  C(198) <= A(6)and B(12);
  C(199) <= A(7)and B(12);
  C(200) <= A(8)and B(12);
  C(201) <= A(9)and B(12); 
  C(202) <= A(10)and B(12);
  C(203) <= A(11)and B(12);
  C(204) <= A(12)and B(12);
  C(205) <= A(13)and B(12);
  C(206) <= A(14)and B(12);
  C(207) <= A(15)and B(12);
  
    
  C(208) <= A(0)and B(13);
  C(209) <= A(1)and B(13); 
  C(210) <= A(2)and B(13);
  C(211) <= A(3)and B(13);
  C(212) <= A(4)and B(13);
  C(213) <= A(5)and B(13);
  C(214) <= A(6)and B(13);
  C(215) <= A(7)and B(13);
  C(216) <= A(8)and B(13);
  C(217) <= A(9)and B(13); 
  C(218) <= A(10)and B(13);
  C(219) <= A(11)and B(13);
  C(220) <= A(12)and B(13);
  C(221) <= A(13)and B(13);
  C(222) <= A(14)and B(13);
  C(223) <= A(15)and B(13);
  
  
  C(224) <= A(0)and B(14);
  C(225) <= A(1)and B(14); 
  C(226) <= A(2)and B(14);
  C(227) <= A(3)and B(14);
  C(228) <= A(4)and B(14);
  C(229) <= A(5)and B(14);
  C(230) <= A(6)and B(14);
  C(231) <= A(7)and B(14);
  C(232) <= A(8)and B(14);
  C(233) <= A(9)and B(14); 
  C(234) <= A(10)and B(14);
  C(235) <= A(11)and B(14);
  C(236) <= A(12)and B(14);
  C(237) <= A(13)and B(14);
  C(238) <= A(14)and B(14);
  C(239) <= A(15)and B(14);  
  
  C(240) <= A(0)and B(15);
  C(241) <= A(1)and B(15); 
  C(242) <= A(2)and B(15);
  C(243) <= A(3)and B(15);
  C(244) <= A(4)and B(15);
  C(245) <= A(5)and B(15);
  C(246) <= A(6)and B(15);
  C(247) <= A(7)and B(15);
  C(248) <= A(8)and B(15);
  C(249) <= A(9)and B(15); 
  C(250) <= A(10)and B(15);
  C(251) <= A(11)and B(15);
  C(252) <= A(12)and B(15);
  C(253) <= A(13)and B(15);  
  C(254) <= A(14)and B(15);
  C(255) <= A(15)and B(15);
  
--01-----------    
  U0: Soma_AMA4_1 PORT MAP(
   A => C(16),
   B => C(1),
   Cin => '0',
   Cout => Carry(0),
   S => R(1)
  );
 
  U1: Soma_AMA4_1 PORT MAP(
   A => C(17),
   B => C(2),
   Cin => Carry(0),
   Cout => Carry(1),
   S => E(0)
  );
 
  U2: Soma_AMA4_1 PORT MAP(
   A => C(18),
   B => C(3),
   Cin => Carry(1),
   Cout => Carry(2),
   S => E(1)
 );
 
 U3: Soma_AMA4_1 PORT MAP(
  A => C(19),
  B => C(4),
  Cin => Carry(2),
  Cout => Carry(3),
  S => E(2)
 );

 U4: Soma_AMA4_1 PORT MAP(
  A => C(20),
  B => C(5),
  Cin => Carry(3),
  Cout => Carry(4),
  S => E(3)
 );
 
 U5: Soma_AMA4_1 PORT MAP(
  A => C(21),
  B => C(6),
  Cin => Carry(4),
  Cout => Carry(5),
  S => E(4)
 ); 
 
 U6: Soma_AMA4_1 PORT MAP(
  A => C(22),
  B => C(7),
  Cin => Carry(5),
  Cout => Carry(6),
  S => E(5)
 );  

 U7: Soma_AMA4_1 PORT MAP(
  A => C(23),
  B => C(8),
  Cin => Carry(6),
  Cout => Carry(7),
  S => E(6)
 );  

 U8: Soma_AMA4_1 PORT MAP(
  A => C(24),
  B => C(9),
  Cin => Carry(7),
  Cout => Carry(8),
  S => E(7)
 );  
 
 U9: Soma_AMA4_1 PORT MAP(
  A => C(25),
  B => C(10),
  Cin => Carry(8),
  Cout => Carry(9),
  S => E(8)
 );  

 U10: Soma_AMA4_1 PORT MAP(
  A => C(16),
  B => C(11),
  Cin => Carry(9),
  Cout => Carry(10),
  S => E(9)
 ); 
 
 U11: Soma_AMA4_1 PORT MAP(
  A => C(27),
  B => C(12),
  Cin => Carry(10),
  Cout => Carry(11),
  S => E(10)
 ); 

 U12: Soma_AMA4_1 PORT MAP(
  A => C(28),
  B => C(13),
  Cin => Carry(11),
  Cout => Carry(12),
  S => E(11)
 );

 U13: Soma_AMA4_1 PORT MAP(
  A => C(29),
  B => C(14),
  Cin => Carry(12),
  Cout => Carry(13),
  S => E(12)
 ); 
 
 U14: Soma_AMA4_1 PORT MAP(
  A => C(30),
  B => C(15),
  Cin => Carry(13),
  Cout => Carry(14),
  S => E(13)
 );
 
 U15: Soma_AMA4_1 PORT MAP(
  A => C(31),
  B => '0',
  Cin => Carry(14),
  Cout => Carry(15),
  S => E(14)
 );

--02-----------  
 U16: Soma_AMA4_1 PORT MAP(
  A => C(32),
  B => E(0),
  Cin => '0',
  Cout => Carry(16),
  S => R(2)
 ); 
 
 U17: Soma_AMA4_1 PORT MAP(
  A => C(33),
  B => E(1),
  Cin => Carry(16),
  Cout => Carry(17),
  S => E(15)
 );
 
 U18: Soma_AMA4_1 PORT MAP(
  A => C(34),
  B => E(2),
  Cin => Carry(17),
  Cout => Carry(18),
  S => E(16)
 );
 
 U19: Soma_AMA4_1 PORT MAP(
  A => C(35),
  B => E(3),
  Cin => Carry(18),
  Cout => Carry(19),
  S => E(17)
 ); 
 
 U20: Soma_AMA4_1 PORT MAP(
  A => C(36),
  B => E(4),
  Cin => Carry(19),
  Cout => Carry(20),
  S => E(18)
 );

 U21: Soma_AMA4_1 PORT MAP(
  A => C(37),
  B => E(5),
  Cin => Carry(20),
  Cout => Carry(21),
  S => E(19)
 ); 
 
 U22: Soma_AMA4_1 PORT MAP(
  A => C(38),
  B => E(6),
  Cin => Carry(21),
  Cout => Carry(22),
  S => E(20)
 );
 
 U23: Soma_AMA4_1 PORT MAP(
  A => C(39),
  B => E(7),
  Cin => Carry(22),
  Cout => Carry(23),
  S => E(21)
 );
 
 U24: Soma_AMA4_1 PORT MAP(
  A => C(40),
  B => E(8),
  Cin => Carry(23),
  Cout => Carry(24),
  S => E(22)
 ); 
 
 U25: Soma_AMA4_1 PORT MAP(
  A => C(41),
  B => E(9),
  Cin => Carry(24),
  Cout => Carry(25),
  S => E(23)
 );
 
 U26: Soma_AMA4_1 PORT MAP(
  A => C(42),
  B => E(10),
  Cin => Carry(25),
  Cout => Carry(26),
  S => E(24)
 );
 
 U27: Soma_AMA4_1 PORT MAP(
  A => C(43),
  B => E(11),
  Cin => Carry(26),
  Cout => Carry(27),
  S => E(25)
 ); 
 
 U28: Soma_AMA4_1 PORT MAP(
  A => C(44),
  B => E(12),
  Cin => Carry(27),
  Cout => Carry(28),
  S => E(26)
 );

 U29: Soma_AMA4_1 PORT MAP(
  A => C(45),
  B => E(13),
  Cin => Carry(28),
  Cout => Carry(29),
  S => E(27)
 ); 
 
 U30: Soma_AMA4_1 PORT MAP(
  A => C(46),
  B => E(14),
  Cin => Carry(29),
  Cout => Carry(30),
  S => E(28)
 );
 
 U31: Soma_AMA4_1 PORT MAP(
  A => C(47),
  B => Carry(15),
  Cin => Carry(30),
  Cout => Carry(31),
  S => E(29)
 );

--03-----------  
 U32: Soma_AMA4_1 PORT MAP(
  A => C(48),
  B => E(15),
  Cin => '0',
  Cout => Carry(32),
  S => R(3)
 ); 
 
 U33: Soma_AMA4_1 PORT MAP(
  A => C(49),
  B => E(16),
  Cin => Carry(32),
  Cout => Carry(33),
  S => E(30)
 );
 
 U34: Soma_AMA4_1 PORT MAP(
  A => C(50),
  B => E(17),
  Cin => Carry(33),
  Cout => Carry(34),
  S => E(31)
 );
 
 U35: Soma_AMA4_1 PORT MAP(
  A => C(51),
  B => E(18),
  Cin => Carry(34),
  Cout => Carry(35),
  S => E(32)
 ); 
 
 U36: Soma_AMA4_1 PORT MAP(
  A => C(52),
  B => E(19),
  Cin => Carry(35),
  Cout => Carry(36),
  S => E(33)
 );

 U37: Soma_AMA4_1 PORT MAP(
  A => C(53),
  B => E(20),
  Cin => Carry(36),
  Cout => Carry(37),
  S => E(34)
 ); 
 
 U38: Soma_AMA4_1 PORT MAP(
  A => C(54),
  B => E(21),
  Cin => Carry(37),
  Cout => Carry(38),
  S => E(35)
 );
 
 U39: Soma_AMA4_1 PORT MAP(
  A => C(55),
  B => E(22),
  Cin => Carry(38),
  Cout => Carry(39),
  S => E(36)
 );

 U40: Soma_AMA4_1 PORT MAP(
  A => C(56),
  B => E(23),
  Cin => Carry(39),
  Cout => Carry(40),
  S => E(37)
 ); 
 
 U41: Soma_AMA4_1 PORT MAP(
  A => C(57),
  B => E(24),
  Cin => Carry(40),
  Cout => Carry(41),
  S => E(38)
 );
 
 U42: Soma_AMA4_1 PORT MAP(
  A => C(58),
  B => E(25),
  Cin => Carry(41),
  Cout => Carry(42),
  S => E(39)
 );
 
 U43: Soma_AMA4_1 PORT MAP(
  A => C(59),
  B => E(26),
  Cin => Carry(42),
  Cout => Carry(43),
  S => E(40)
 ); 
 
 U44: Soma_AMA4_1 PORT MAP(
  A => C(60),
  B => E(27),
  Cin => Carry(43),
  Cout => Carry(44),
  S => E(41)
 );

 U45: Soma_AMA4_1 PORT MAP(
  A => C(61),
  B => E(28),
  Cin => Carry(44),
  Cout => Carry(45),
  S => E(42)
 ); 
 
 U46: Soma_AMA4_1 PORT MAP(
  A => C(62),
  B => E(29),
  Cin => Carry(45),
  Cout => Carry(46),
  S => E(43)
 );
 
 U47: Soma_AMA4_1 PORT MAP(
  A => C(63),
  B => Carry(31),
  Cin => Carry(46),
  Cout => Carry(47),
  S => E(44)
 );  

--04-----------  
 U48: Soma_AMA4_1 PORT MAP(
  A => C(64),
  B => E(30),
  Cin => '0',
  Cout => Carry(48),
  S => R(4)
 ); 
 
 U49: Soma_AMA4_1 PORT MAP(
  A => C(65),
  B => E(31),
  Cin => Carry(48),
  Cout => Carry(49),
  S => E(45)
 );
 
 U50: Soma_AMA4_1 PORT MAP(
  A => C(66),
  B => E(32),
  Cin => Carry(49),
  Cout => Carry(50),
  S => E(46)
 );
 
 U51: Soma_AMA4_1 PORT MAP(
  A => C(67),
  B => E(33),
  Cin => Carry(50),
  Cout => Carry(51),
  S => E(47)
 ); 
 
 U52: Soma_AMA4_1 PORT MAP(
  A => C(68),
  B => E(34),
  Cin => Carry(51),
  Cout => Carry(52),
  S => E(48)
 );

 U53: Soma_AMA4_1 PORT MAP(
  A => C(69),
  B => E(35),
  Cin => Carry(52),
  Cout => Carry(53),
  S => E(49)
 ); 
 
 U54: Soma_AMA4_1 PORT MAP(
  A => C(70),
  B => E(36),
  Cin => Carry(53),
  Cout => Carry(54),
  S => E(50)
 );
 
 U55: Soma_AMA4_1 PORT MAP(
  A => C(71),
  B => E(37),
  Cin => Carry(54),
  Cout => Carry(55),
  S => E(51)
 );

 U56: Soma_AMA4_1 PORT MAP(
  A => C(72),
  B => E(38),
  Cin => Carry(55),
  Cout => Carry(56),
  S => E(52)
 ); 
 
 U57: Soma_AMA4_1 PORT MAP(
  A => C(73),
  B => E(39),
  Cin => Carry(56),
  Cout => Carry(57),
  S => E(53)
 );
 
 U58: Soma_AMA4_1 PORT MAP(
  A => C(74),
  B => E(40),
  Cin => Carry(57),
  Cout => Carry(58),
  S => E(54)
 );
 
 U59: Soma_AMA4_1 PORT MAP(
  A => C(75),
  B => E(41),
  Cin => Carry(58),
  Cout => Carry(59),
  S => E(55)
 ); 
 
 U60: Soma_AMA4_1 PORT MAP(
  A => C(76),
  B => E(42),
  Cin => Carry(59),
  Cout => Carry(60),
  S => E(56)
 );

 U61: Soma_AMA4_1 PORT MAP(
  A => C(77),
  B => E(43),
  Cin => Carry(60),
  Cout => Carry(61),
  S => E(57)
 ); 
 
 U62: Soma_AMA4_1 PORT MAP(
  A => C(78),
  B => E(44),
  Cin => Carry(61),
  Cout => Carry(62),
  S => E(58)
 );
 
 U63: Soma_AMA4_1 PORT MAP(
  A => C(79),
  B => Carry(47),
  Cin => Carry(62),
  Cout => Carry(63),
  S => E(59)
 );  

--05------
 U64: Soma_AMA4_1 PORT MAP(
  A => C(80),
  B => E(45),
  Cin => '0',
  Cout => Carry(64),
  S => R(5)
 ); 
 
 U65: Soma_AMA4_1 PORT MAP(
  A => C(81),
  B => E(46),
  Cin => Carry(64),
  Cout => Carry(65),
  S => E(60)
 );
 
 U66: Soma_AMA4_1 PORT MAP(
  A => C(82),
  B => E(47),
  Cin => Carry(65),
  Cout => Carry(66),
  S => E(61)
 );
 
 U67: Soma_AMA4_1 PORT MAP(
  A => C(83),
  B => E(48),
  Cin => Carry(66),
  Cout => Carry(67),
  S => E(62)
 ); 
 
 U68: Soma_AMA4_1 PORT MAP(
  A => C(84),
  B => E(49),
  Cin => Carry(67),
  Cout => Carry(68),
  S => E(63)
 );

 U69: Soma_AMA4_1 PORT MAP(
  A => C(85),
  B => E(50),
  Cin => Carry(68),
  Cout => Carry(69),
  S => E(64)
 ); 
 
 U70: Soma_AMA4_1 PORT MAP(
  A => C(86),
  B => E(51),
  Cin => Carry(69),
  Cout => Carry(70),
  S => E(65)
 );
 
 U71: Soma_AMA4_1 PORT MAP(
  A => C(87),
  B => E(52),
  Cin => Carry(70),
  Cout => Carry(71),
  S => E(66)
 );

 U72: Soma_AMA4_1 PORT MAP(
  A => C(88),
  B => E(53),
  Cin => Carry(71),
  Cout => Carry(72),
  S => E(67)
 ); 
 
 U73: Soma_AMA4_1 PORT MAP(
  A => C(89),
  B => E(54),
  Cin => Carry(72),
  Cout => Carry(73),
  S => E(68)
 );
 
 U74: Soma_AMA4_1 PORT MAP(
  A => C(90),
  B => E(55),
  Cin => Carry(73),
  Cout => Carry(74),
  S => E(69)
 );
 
 U75: Soma_AMA4_1 PORT MAP(
  A => C(91),
  B => E(56),
  Cin => Carry(74),
  Cout => Carry(75),
  S => E(70)
 ); 
 
 U76: Soma_AMA4_1 PORT MAP(
  A => C(92),
  B => E(57),
  Cin => Carry(75),
  Cout => Carry(76),
  S => E(71)
 );

 U77: Soma_AMA4_1 PORT MAP(
  A => C(93),
  B => E(58),
  Cin => Carry(76),
  Cout => Carry(77),
  S => E(72)
 ); 
 
 U78: Soma_AMA4_1 PORT MAP(
  A => C(94),
  B => E(59),
  Cin => Carry(77),
  Cout => Carry(78),
  S => E(73)
 );
 
 U79: Soma_AMA4_1 PORT MAP(
  A => C(95),
  B => Carry(63),
  Cin => Carry(78),
  Cout => Carry(79),
  S => E(74)
 ); 
 
 --06----
U80: Soma_AMA4_1 PORT MAP(
  A => C(96),
  B => E(60),
  Cin => '0',
  Cout => Carry(80),
  S => R(6)
 ); 
 
 U81: Soma_AMA4_1 PORT MAP(
  A => C(97),
  B => E(61),
  Cin => Carry(80),
  Cout => Carry(81),
  S => E(75)
 );
 
 U82: Soma_AMA4_1 PORT MAP(
  A => C(98),
  B => E(62),
  Cin => Carry(81),
  Cout => Carry(82),
  S => E(76)
 );
 
 U83: Soma_AMA4_1 PORT MAP(
  A => C(99),
  B => E(63),
  Cin => Carry(82),
  Cout => Carry(83),
  S => E(77)
 ); 
 
 U84: Soma_AMA4_1 PORT MAP(
  A => C(100),
  B => E(64),
  Cin => Carry(83),
  Cout => Carry(84),
  S => E(78)
 );

 U85: Soma_AMA4_1 PORT MAP(
  A => C(101),
  B => E(65),
  Cin => Carry(84),
  Cout => Carry(85),
  S => E(79)
 ); 
 
 U86: Soma_AMA4_1 PORT MAP(
  A => C(102),
  B => E(66),
  Cin => Carry(85),
  Cout => Carry(86),
  S => E(80)
 );
 
 U87: Soma_AMA4_1 PORT MAP(
  A => C(103),
  B => E(67),
  Cin => Carry(86),
  Cout => Carry(87),
  S => E(81)
 );

 U88: Soma_AMA4_1 PORT MAP(
  A => C(104),
  B => E(68),
  Cin => Carry(87),
  Cout => Carry(88),
  S => E(82)
 ); 
 
 U89: Soma_AMA4_1 PORT MAP(
  A => C(105),
  B => E(69),
  Cin => Carry(88),
  Cout => Carry(89),
  S => E(83)
 );
 
 U90: Soma_AMA4_1 PORT MAP(
  A => C(106),
  B => E(70),
  Cin => Carry(89),
  Cout => Carry(90),
  S => E(84)
 );
 
 U91: Soma_AMA4_1 PORT MAP(
  A => C(107),
  B => E(71),
  Cin => Carry(90),
  Cout => Carry(91),
  S => E(85)
 ); 
 
 U92: Soma_AMA4_1 PORT MAP(
  A => C(108),
  B => E(72),
  Cin => Carry(91),
  Cout => Carry(92),
  S => E(86)
 );

 U93: Soma_AMA4_1 PORT MAP(
  A => C(109),
  B => E(73),
  Cin => Carry(92),
  Cout => Carry(93),
  S => E(87)
 ); 
 
 U94: Soma_AMA4_1 PORT MAP(
  A => C(110),
  B => E(74),
  Cin => Carry(93),
  Cout => Carry(94),
  S => E(88)
 );
 
 U95: Soma_AMA4_1 PORT MAP(
  A => C(111),
  B => Carry(79),
  Cin => Carry(94),
  Cout => Carry(95),
  S => E(89)
 ); 
  
--07-----  
U96: Soma_AMA4_1 PORT MAP(
  A => C(112),
  B => E(75),
  Cin => '0',
  Cout => Carry(96),
  S => R(7)
 ); 
 
 U97: Soma_AMA4_1 PORT MAP(
  A => C(113),
  B => E(76),
  Cin => Carry(96),
  Cout => Carry(97),
  S => E(90)
 );
 
 U98: Soma_AMA4_1 PORT MAP(
  A => C(114),
  B => E(77),
  Cin => Carry(97),
  Cout => Carry(98),
  S => E(91)
 );
 
 U99: Soma_AMA4_1 PORT MAP(
  A => C(115),
  B => E(78),
  Cin => Carry(98),
  Cout => Carry(99),
  S => E(92)
 ); 
 
 U100: Soma_AMA4_1 PORT MAP(
  A => C(116),
  B => E(79),
  Cin => Carry(99),
  Cout => Carry(100),
  S => E(93)
 );

 U101: Soma_AMA4_1 PORT MAP(
  A => C(117),
  B => E(80),
  Cin => Carry(100),
  Cout => Carry(101),
  S => E(94)
 ); 
 
 U102: Soma_AMA4_1 PORT MAP(
  A => C(118),
  B => E(81),
  Cin => Carry(101),
  Cout => Carry(102),
  S => E(95)
 );
 
 U103: Soma_AMA4_1 PORT MAP(
  A => C(119),
  B => E(82),
  Cin => Carry(102),
  Cout => Carry(103),
  S => E(96)
 );

 U104: Soma_AMA4_1 PORT MAP(
  A => C(120),
  B => E(83),
  Cin => Carry(103),
  Cout => Carry(104),
  S => E(97)
 ); 
 
 U105: Soma_AMA4_1 PORT MAP(
  A => C(121),
  B => E(84),
  Cin => Carry(104),
  Cout => Carry(105),
  S => E(98)
 );
 
 U106: Soma_AMA4_1 PORT MAP(
  A => C(122),
  B => E(85),
  Cin => Carry(105),
  Cout => Carry(106),
  S => E(99)
 );
 
 U107: Soma_AMA4_1 PORT MAP(
  A => C(123),
  B => E(86),
  Cin => Carry(106),
  Cout => Carry(107),
  S => E(100)
 ); 
 
 U108: Soma_AMA4_1 PORT MAP(
  A => C(124),
  B => E(87),
  Cin => Carry(107),
  Cout => Carry(108),
  S => E(101)
 );

 U109: Soma_AMA4_1 PORT MAP(
  A => C(125),
  B => E(88),
  Cin => Carry(108),
  Cout => Carry(109),
  S => E(102)
 ); 
 
 U110: Soma_AMA4_1 PORT MAP(
  A => C(126),
  B => E(89),
  Cin => Carry(109),
  Cout => Carry(110),
  S => E(103)
 );
 
 U111: Soma_AMA4_1 PORT MAP(
  A => C(127),
  B => Carry(95),
  Cin => Carry(110),
  Cout => Carry(111),
  S => E(104)
 );
--08-----
U112: Soma_AMA4_1 PORT MAP(
  A => C(128),
  B => E(90),
  Cin => '0',
  Cout => Carry(112),
  S => R(8)
 ); 
 
 U113: Soma_AMA4_1 PORT MAP(
  A => C(129),
  B => E(91),
  Cin => Carry(112),
  Cout => Carry(113),
  S => E(105)
 );
 
 U114: Soma_AMA4_1 PORT MAP(
  A => C(130),
  B => E(92),
  Cin => Carry(113),
  Cout => Carry(114),
  S => E(106)
 );
 
 U115: Soma_AMA4_1 PORT MAP(
  A => C(131),
  B => E(93),
  Cin => Carry(114),
  Cout => Carry(115),
  S => E(107)
 ); 
 
 U116: Soma_AMA4_1 PORT MAP(
  A => C(132),
  B => E(94),
  Cin => Carry(115),
  Cout => Carry(116),
  S => E(108)
 );

 U117: Soma_AMA4_1 PORT MAP(
  A => C(133),
  B => E(95),
  Cin => Carry(116),
  Cout => Carry(117),
  S => E(109)
 ); 
 
 U118: Soma_AMA4_1 PORT MAP(
  A => C(134),
  B => E(96),
  Cin => Carry(117),
  Cout => Carry(118),
  S => E(110)
 );
 
 U119: Soma_AMA4_1 PORT MAP(
  A => C(135),
  B => E(97),
  Cin => Carry(118),
  Cout => Carry(119),
  S => E(111)
 );

 U120: Soma_AMA4_1 PORT MAP(
  A => C(136),
  B => E(98),
  Cin => Carry(119),
  Cout => Carry(120),
  S => E(112)
 ); 
 
 U121: Soma_AMA4_1 PORT MAP(
  A => C(137),
  B => E(99),
  Cin => Carry(120),
  Cout => Carry(121),
  S => E(113)
 );
 
 U122: Soma_AMA4_1 PORT MAP(
  A => C(138),
  B => E(100),
  Cin => Carry(121),
  Cout => Carry(122),
  S => E(114)
 );
 
 U123: Soma_AMA4_1 PORT MAP(
  A => C(139),
  B => E(101),
  Cin => Carry(122),
  Cout => Carry(123),
  S => E(115)
 ); 
 
 U124: Soma_AMA4_1 PORT MAP(
  A => C(140),
  B => E(102),
  Cin => Carry(123),
  Cout => Carry(124),
  S => E(116)
 );

 U125: Soma_AMA4_1 PORT MAP(
  A => C(141),
  B => E(103),
  Cin => Carry(124),
  Cout => Carry(125),
  S => E(117)
 ); 
 
 U126: Soma_AMA4_1 PORT MAP(
  A => C(142),
  B => E(104),
  Cin => Carry(125),
  Cout => Carry(126),
  S => E(118)
 );
 
 U127: Soma_AMA4_1 PORT MAP(
  A => C(143),
  B => Carry(111),
  Cin => Carry(126),
  Cout => Carry(127),
  S => E(119)
 );
--09-----
U128: Soma_AMA4_1 PORT MAP(
  A => C(144),
  B => E(105),
  Cin => '0',
  Cout => Carry(128),
  S => R(9)
 ); 
 
 U129: Soma_AMA4_1 PORT MAP(
  A => C(145),
  B => E(106),
  Cin => Carry(128),
  Cout => Carry(129),
  S => E(120)
 );
 
 U130: Soma_AMA4_1 PORT MAP(
  A => C(146),
  B => E(107),
  Cin => Carry(129),
  Cout => Carry(130),
  S => E(121)
 );
 
 U131: Soma_AMA4_1 PORT MAP(
  A => C(147),
  B => E(108),
  Cin => Carry(130),
  Cout => Carry(131),
  S => E(122)
 ); 
 
 U132: Soma_AMA4_1 PORT MAP(
  A => C(148),
  B => E(109),
  Cin => Carry(131),
  Cout => Carry(132),
  S => E(123)
 );

 U133: Soma_AMA4_1 PORT MAP(
  A => C(149),
  B => E(110),
  Cin => Carry(132),
  Cout => Carry(133),
  S => E(124)
 ); 
 
 U134: Soma_AMA4_1 PORT MAP(
  A => C(150),
  B => E(111),
  Cin => Carry(133),
  Cout => Carry(134),
  S => E(125)
 );
 
 U135: Soma_AMA4_1 PORT MAP(
  A => C(151),
  B => E(112),
  Cin => Carry(134),
  Cout => Carry(135),
  S => E(126)
 );

 U136: Soma_AMA4_1 PORT MAP(
  A => C(152),
  B => E(113),
  Cin => Carry(135),
  Cout => Carry(136),
  S => E(127)
 ); 
 
 U137: Soma_AMA4_1 PORT MAP(
  A => C(153),
  B => E(114),
  Cin => Carry(136),
  Cout => Carry(137),
  S => E(128)
 );
 
 U138: Soma_AMA4_1 PORT MAP(
  A => C(154),
  B => E(115),
  Cin => Carry(137),
  Cout => Carry(138),
  S => E(129)
 );
 
 U139: Soma_AMA4_1 PORT MAP(
  A => C(155),
  B => E(116),
  Cin => Carry(138),
  Cout => Carry(139),
  S => E(130)
 ); 
 
 U140: Soma_AMA4_1 PORT MAP(
  A => C(156),
  B => E(117),
  Cin => Carry(139),
  Cout => Carry(140),
  S => E(131)
 );

 U141: Soma_AMA4_1 PORT MAP(
  A => C(157),
  B => E(118),
  Cin => Carry(140),
  Cout => Carry(141),
  S => E(132)
 ); 
 
 U142: Soma_AMA4_1 PORT MAP(
  A => C(158),
  B => E(119),
  Cin => Carry(141),
  Cout => Carry(142),
  S => E(133)
 );
 
 U143: Soma_AMA4_1 PORT MAP(
  A => C(159),
  B => Carry(127),
  Cin => Carry(142),
  Cout => Carry(143),
  S => E(134)
 );
--10-----
U144: Soma_AMA4_1 PORT MAP(
  A => C(160),
  B => E(120),
  Cin => '0',
  Cout => Carry(144),
  S => R(10)
 ); 
 
 U145: Soma_AMA4_1 PORT MAP(
  A => C(161),
  B => E(121),
  Cin => Carry(144),
  Cout => Carry(145),
  S => E(135)
 );
 
 U146: Soma_AMA4_1 PORT MAP(
  A => C(162),
  B => E(122),
  Cin => Carry(145),
  Cout => Carry(146),
  S => E(136)
 );
 
 U147: Soma_AMA4_1 PORT MAP(
  A => C(163),
  B => E(123),
  Cin => Carry(146),
  Cout => Carry(147),
  S => E(137)
 ); 
 
 U148: Soma_AMA4_1 PORT MAP(
  A => C(164),
  B => E(124),
  Cin => Carry(147),
  Cout => Carry(148),
  S => E(138)
 );

 U149: Soma_AMA4_1 PORT MAP(
  A => C(165),
  B => E(125),
  Cin => Carry(148),
  Cout => Carry(149),
  S => E(139)
 ); 
 
 U150: Soma_AMA4_1 PORT MAP(
  A => C(166),
  B => E(126),
  Cin => Carry(149),
  Cout => Carry(150),
  S => E(140)
 );
 
 U151: Soma_AMA4_1 PORT MAP(
  A => C(167),
  B => E(127),
  Cin => Carry(150),
  Cout => Carry(151),
  S => E(141)
 );

 U152: Soma_AMA4_1 PORT MAP(
  A => C(168),
  B => E(128),
  Cin => Carry(151),
  Cout => Carry(152),
  S => E(142)
 ); 
 
 U153: Soma_AMA4_1 PORT MAP(
  A => C(169),
  B => E(129),
  Cin => Carry(152),
  Cout => Carry(153),
  S => E(143)
 );
 
 U154: Soma_AMA4_1 PORT MAP(
  A => C(170),
  B => E(130),
  Cin => Carry(153),
  Cout => Carry(154),
  S => E(144)
 );
 
 U155: Soma_AMA4_1 PORT MAP(
  A => C(171),
  B => E(131),
  Cin => Carry(154),
  Cout => Carry(155),
  S => E(145)
 ); 
 
 U156: Soma_AMA4_1 PORT MAP(
  A => C(172),
  B => E(132),
  Cin => Carry(155),
  Cout => Carry(156),
  S => E(146)
 );

 U157: Soma_AMA4_1 PORT MAP(
  A => C(173),
  B => E(133),
  Cin => Carry(156),
  Cout => Carry(157),
  S => E(147)
 ); 
 
 U158: Soma_AMA4_1 PORT MAP(
  A => C(174),
  B => E(134),
  Cin => Carry(157),
  Cout => Carry(158),
  S => E(148)
 );
 
 U159: Soma_AMA4_1 PORT MAP(
  A => C(175),
  B => Carry(143),
  Cin => Carry(158),
  Cout => Carry(159),
  S => E(149)
 );
--11------
U160: Soma_AMA4_1 PORT MAP(
  A => C(176),
  B => E(135),
  Cin => '0',
  Cout => Carry(160),
  S => R(11)
 ); 
 
 U161: Soma_AMA4_1 PORT MAP(
  A => C(177),
  B => E(136),
  Cin => Carry(160),
  Cout => Carry(161),
  S => E(150)
 );
 
 U162: Soma_AMA4_1 PORT MAP(
  A => C(178),
  B => E(137),
  Cin => Carry(161),
  Cout => Carry(162),
  S => E(151)
 );
 
 U163: Soma_AMA4_1 PORT MAP(
  A => C(179),
  B => E(138),
  Cin => Carry(162),
  Cout => Carry(163),
  S => E(152)
 ); 
 
 U164: Soma_AMA4_1 PORT MAP(
  A => C(180),
  B => E(139),
  Cin => Carry(163),
  Cout => Carry(164),
  S => E(153)
 );

 U165: Soma_AMA4_1 PORT MAP(
  A => C(181),
  B => E(140),
  Cin => Carry(164),
  Cout => Carry(165),
  S => E(154)
 ); 
 
 U166: Soma_AMA4_1 PORT MAP(
  A => C(182),
  B => E(141),
  Cin => Carry(165),
  Cout => Carry(166),
  S => E(155)
 );
 
 U167: Soma_AMA4_1 PORT MAP(
  A => C(183),
  B => E(142),
  Cin => Carry(166),
  Cout => Carry(167),
  S => E(156)
 );

 U168: Soma_AMA4_1 PORT MAP(
  A => C(184),
  B => E(143),
  Cin => Carry(167),
  Cout => Carry(168),
  S => E(157)
 ); 
 
 U169: Soma_AMA4_1 PORT MAP(
  A => C(185),
  B => E(144),
  Cin => Carry(168),
  Cout => Carry(169),
  S => E(158)
 );
 
 U170: Soma_AMA4_1 PORT MAP(
  A => C(186),
  B => E(145),
  Cin => Carry(169),
  Cout => Carry(170),
  S => E(159)
 );
 
 U171: Soma_AMA4_1 PORT MAP(
  A => C(187),
  B => E(146),
  Cin => Carry(170),
  Cout => Carry(171),
  S => E(160)
 ); 
 
 U172: Soma_AMA4_1 PORT MAP(
  A => C(188),
  B => E(147),
  Cin => Carry(171),
  Cout => Carry(172),
  S => E(161)
 );

 U173: Soma_AMA4_1 PORT MAP(
  A => C(189),
  B => E(148),
  Cin => Carry(172),
  Cout => Carry(173),
  S => E(162)
 ); 
 
 U174: Soma_AMA4_1 PORT MAP(
  A => C(190),
  B => E(149),
  Cin => Carry(173),
  Cout => Carry(174),
  S => E(163)
 );
 
 U175: Soma_AMA4_1 PORT MAP(
  A => C(191),
  B => Carry(159),
  Cin => Carry(174),
  Cout => Carry(175),
  S => E(164)
 );
--12------
U176: Soma_AMA4_1 PORT MAP(
  A => C(192),
  B => E(150),
  Cin => '0',
  Cout => Carry(176),
  S => R(12)
 ); 
 
 U177: Soma_AMA4_1 PORT MAP(
  A => C(193),
  B => E(151),
  Cin => Carry(176),
  Cout => Carry(177),
  S => E(165)
 );
 
 U178: Soma_AMA4_1 PORT MAP(
  A => C(194),
  B => E(152),
  Cin => Carry(177),
  Cout => Carry(178),
  S => E(166)
 );
 
 U179: Soma_AMA4_1 PORT MAP(
  A => C(195),
  B => E(153),
  Cin => Carry(178),
  Cout => Carry(179),
  S => E(167)
 ); 
 
 U180: Soma_AMA4_1 PORT MAP(
  A => C(196),
  B => E(154),
  Cin => Carry(179),
  Cout => Carry(180),
  S => E(168)
 );

 U181: Soma_AMA4_1 PORT MAP(
  A => C(197),
  B => E(155),
  Cin => Carry(180),
  Cout => Carry(181),
  S => E(169)
 ); 
 
 U182: Soma_AMA4_1 PORT MAP(
  A => C(198),
  B => E(156),
  Cin => Carry(181),
  Cout => Carry(182),
  S => E(170)
 );
 
 U183: Soma_AMA4_1 PORT MAP(
  A => C(199),
  B => E(157),
  Cin => Carry(182),
  Cout => Carry(183),
  S => E(171)
 );

 U184: Soma_AMA4_1 PORT MAP(
  A => C(200),
  B => E(158),
  Cin => Carry(183),
  Cout => Carry(184),
  S => E(172)
 ); 
 
 U185: Soma_AMA4_1 PORT MAP(
  A => C(201),
  B => E(159),
  Cin => Carry(184),
  Cout => Carry(185),
  S => E(173)
 );
 
 U186: Soma_AMA4_1 PORT MAP(
  A => C(202),
  B => E(160),
  Cin => Carry(185),
  Cout => Carry(186),
  S => E(174)
 );
 
 U187: Soma_AMA4_1 PORT MAP(
  A => C(203),
  B => E(161),
  Cin => Carry(186),
  Cout => Carry(187),
  S => E(175)
 ); 
 
 U188: Soma_AMA4_1 PORT MAP(
  A => C(204),
  B => E(162),
  Cin => Carry(187),
  Cout => Carry(188),
  S => E(176)
 );

 U189: Soma_AMA4_1 PORT MAP(
  A => C(205),
  B => E(163),
  Cin => Carry(188),
  Cout => Carry(189),
  S => E(177)
 ); 
 
 U190: Soma_AMA4_1 PORT MAP(
  A => C(206),
  B => E(164),
  Cin => Carry(189),
  Cout => Carry(190),
  S => E(178)
 );
 
 U191: Soma_AMA4_1 PORT MAP(
  A => C(207),
  B => Carry(175),
  Cin => Carry(190),
  Cout => Carry(191),
  S => E(179)
 );
--13------
U192: Soma_AMA4_1 PORT MAP(
  A => C(208),
  B => E(165),
  Cin => '0',
  Cout => Carry(192),
  S => R(13)
 ); 
 
 U193: Soma_AMA4_1 PORT MAP(
  A => C(209),
  B => E(166),
  Cin => Carry(192),
  Cout => Carry(193),
  S => E(180)
 );
 
 U194: Soma_AMA4_1 PORT MAP(
  A => C(210),
  B => E(167),
  Cin => Carry(193),
  Cout => Carry(194),
  S => E(181)
 );
 
 U195: Soma_AMA4_1 PORT MAP(
  A => C(211),
  B => E(168),
  Cin => Carry(194),
  Cout => Carry(195),
  S => E(182)
 ); 
 
 U196: Soma_AMA4_1 PORT MAP(
  A => C(212),
  B => E(169),
  Cin => Carry(195),
  Cout => Carry(196),
  S => E(183)
 );

 U197: Soma_AMA4_1 PORT MAP(
  A => C(213),
  B => E(170),
  Cin => Carry(196),
  Cout => Carry(197),
  S => E(184)
 ); 
 
 U198: Soma_AMA4_1 PORT MAP(
  A => C(214),
  B => E(171),
  Cin => Carry(197),
  Cout => Carry(198),
  S => E(185)
 );
 
 U199: Soma_AMA4_1 PORT MAP(
  A => C(215),
  B => E(172),
  Cin => Carry(198),
  Cout => Carry(199),
  S => E(186)
 );

 U200: Soma_AMA4_1 PORT MAP(
  A => C(216),
  B => E(173),
  Cin => Carry(199),
  Cout => Carry(200),
  S => E(187)
 ); 
 
 U201: Soma_AMA4_1 PORT MAP(
  A => C(217),
  B => E(174),
  Cin => Carry(200),
  Cout => Carry(201),
  S => E(188)
 );
 
 U202: Soma_AMA4_1 PORT MAP(
  A => C(218),
  B => E(175),
  Cin => Carry(201),
  Cout => Carry(202),
  S => E(189)
 );
 
 U203: Soma_AMA4_1 PORT MAP(
  A => C(219),
  B => E(176),
  Cin => Carry(202),
  Cout => Carry(203),
  S => E(190)
 ); 
 
 U204: Soma_AMA4_1 PORT MAP(
  A => C(220),
  B => E(177),
  Cin => Carry(203),
  Cout => Carry(204),
  S => E(191)
 );

 U205: Soma_AMA4_1 PORT MAP(
  A => C(221),
  B => E(178),
  Cin => Carry(204),
  Cout => Carry(205),
  S => E(192)
 ); 
 
 U206: Soma_AMA4_1 PORT MAP(
  A => C(222),
  B => E(179),
  Cin => Carry(205),
  Cout => Carry(206),
  S => E(193)
 );
 
 U207: Soma_AMA4_1 PORT MAP(
  A => C(223),
  B => Carry(191),
  Cin => Carry(206),
  Cout => Carry(207),
  S => E(194)
 );
--14------
U208: Soma_AMA4_1 PORT MAP(
  A => C(224),
  B => E(180),
  Cin => '0',
  Cout => Carry(208),
  S => R(14)
 ); 
 
 U209: Soma_AMA4_1 PORT MAP(
  A => C(225),
  B => E(181),
  Cin => Carry(208),
  Cout => Carry(209),
  S => E(195)
 );
 
 U210: Soma_AMA4_1 PORT MAP(
  A => C(226),
  B => E(182),
  Cin => Carry(209),
  Cout => Carry(210),
  S => E(196)
 );
 
 U211: Soma_AMA4_1 PORT MAP(
  A => C(227),
  B => E(183),
  Cin => Carry(210),
  Cout => Carry(211),
  S => E(197)
 ); 
 
 U212: Soma_AMA4_1 PORT MAP(
  A => C(228),
  B => E(184),
  Cin => Carry(211),
  Cout => Carry(212),
  S => E(198)
 );

 U213: Soma_AMA4_1 PORT MAP(
  A => C(229),
  B => E(185),
  Cin => Carry(212),
  Cout => Carry(213),
  S => E(199)
 ); 
 
 U214: Soma_AMA4_1 PORT MAP(
  A => C(230),
  B => E(186),
  Cin => Carry(213),
  Cout => Carry(214),
  S => E(200)
 );
 
 U215: Soma_AMA4_1 PORT MAP(
  A => C(231),
  B => E(187),
  Cin => Carry(214),
  Cout => Carry(215),
  S => E(201)
 );

 U216: Soma_AMA4_1 PORT MAP(
  A => C(232),
  B => E(188),
  Cin => Carry(215),
  Cout => Carry(216),
  S => E(202)
 ); 
 
 U217: Soma_AMA4_1 PORT MAP(
  A => C(233),
  B => E(189),
  Cin => Carry(216),
  Cout => Carry(217),
  S => E(203)
 );
 
 U218: Soma_AMA4_1 PORT MAP(
  A => C(234),
  B => E(190),
  Cin => Carry(217),
  Cout => Carry(218),
  S => E(204)
 );
 
 U219: Soma_AMA4_1 PORT MAP(
  A => C(235),
  B => E(191),
  Cin => Carry(218),
  Cout => Carry(219),
  S => E(205)
 ); 
 
 U220: Soma_AMA4_1 PORT MAP(
  A => C(236),
  B => E(192),
  Cin => Carry(219),
  Cout => Carry(220),
  S => E(206)
 );

 U221: Soma_AMA4_1 PORT MAP(
  A => C(237),
  B => E(193),
  Cin => Carry(220),
  Cout => Carry(221),
  S => E(207)
 ); 
 
 U222: Soma_AMA4_1 PORT MAP(
  A => C(238),
  B => E(194),
  Cin => Carry(221),
  Cout => Carry(222),
  S => E(208)
 );
 
 U223: Soma_AMA4_1 PORT MAP(
  A => C(239),
  B => Carry(207),
  Cin => Carry(222),
  Cout => Carry(223),
  S => E(209)
 );
--15------
U224: Soma_AMA4_1 PORT MAP(
  A => C(240),
  B => E(195),
  Cin => '0',
  Cout => Carry(224),
  S => R(15)
 ); 
 
 U225: Soma_AMA4_1 PORT MAP(
  A => C(241),
  B => E(196),
  Cin => Carry(224),
  Cout => Carry(225),
  S => R(16)
 );
 
 U226: Soma_AMA4_1 PORT MAP(
  A => C(242),
  B => E(197),
  Cin => Carry(225),
  Cout => Carry(226),
  S => R(17)
 );
 
 U227: Soma_AMA4_1 PORT MAP(
  A => C(243),
  B => E(198),
  Cin => Carry(226),
  Cout => Carry(227),
  S => R(18)
 ); 
 
 U228: Soma_AMA4_1 PORT MAP(
  A => C(244),
  B => E(199),
  Cin => Carry(227),
  Cout => Carry(228),
  S => R(19)
 );

 U229: Soma_AMA4_1 PORT MAP(
  A => C(245),
  B => E(200),
  Cin => Carry(228),
  Cout => Carry(229),
  S => R(20)
 ); 
 
 U230: Soma_AMA4_1 PORT MAP(
  A => C(246),
  B => E(201),
  Cin => Carry(229),
  Cout => Carry(230),
  S => R(21)
 );
 
 U231: Soma_AMA4_1 PORT MAP(
  A => C(247),
  B => E(202),
  Cin => Carry(230),
  Cout => Carry(231),
  S => R(22)
 );

 U232: Soma_AMA4_1 PORT MAP(
  A => C(248),
  B => E(203),
  Cin => Carry(231),
  Cout => Carry(232),
  S => R(23)
 ); 
 
 U233: Soma_AMA4_1 PORT MAP(
  A => C(249),
  B => E(204),
  Cin => Carry(232),
  Cout => Carry(233),
  S => R(24)
 );
 
 U234: Soma_AMA4_1 PORT MAP(
  A => C(250),
  B => E(205),
  Cin => Carry(233),
  Cout => Carry(234),
  S => R(25)
 );
 
 U235: Soma_AMA4_1 PORT MAP(
  A => C(251),
  B => E(206),
  Cin => Carry(234),
  Cout => Carry(235),
  S => R(26)
 ); 
 
 U236: Soma_AMA4_1 PORT MAP(
  A => C(252),
  B => E(207),
  Cin => Carry(235),
  Cout => Carry(236),
  S => R(27)
 );

 U237: Soma_AMA4_1 PORT MAP(
  A => C(253),
  B => E(208),
  Cin => Carry(236),
  Cout => Carry(237),
  S => R(28)
 ); 
 
 U238: Soma_AMA4_1 PORT MAP(
  A => C(254),
  B => E(209),
  Cin => Carry(237),
  Cout => Carry(238),
  S => R(29)
 );
 
 U239: Soma_AMA4_1 PORT MAP(
  A => C(255),
  B => Carry(223),
  Cin => Carry(238),
  Cout => R(31),
  S => R(30)
 );  
end Mult16;
