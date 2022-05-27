library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Mult_InXA3_8 is
 port(
  A    : in std_logic_vector(7 downto 0);
  B    : in std_logic_vector(7 downto 0);
  R    : out std_logic_vector(15 downto 0)
 );
end Mult_InXA3_8;

architecture Mult8 of Mult_InXA3_8 is

 COMPONENT Soma_InXA3_1
 PORT(
  A : IN std_logic;
  B : IN std_logic;
  Cin : IN std_logic;          
  Cout : OUT std_logic;
  S : OUT std_logic
  );
 END COMPONENT;
 
signal C : STD_LOGIC_VECTOR (63 downto 0); --saida das AND
signal Carry : STD_LOGIC_VECTOR (54 downto 0); -- saida Cout dos somadores
signal E : STD_LOGIC_VECTOR (41 downto 0); -- Saida S dos somadores

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

  C(8) <= A(0)and B(1);
  C(9) <= A(1)and B(1); 
  C(10) <= A(2)and B(1);
  C(11) <= A(3)and B(1);
  C(12) <= A(4)and B(1);
  C(13) <= A(5)and B(1);
  C(14) <= A(6)and B(1);
  C(15) <= A(7)and B(1);
  
  C(16) <= A(0)and B(2);
  C(17) <= A(1)and B(2); 
  C(18) <= A(2)and B(2);
  C(19) <= A(3)and B(2);
  C(20) <= A(4)and B(2);
  C(21) <= A(5)and B(2);
  C(22) <= A(6)and B(2);
  C(23) <= A(7)and B(2);
  
  C(24) <= A(0)and B(3);
  C(25) <= A(1)and B(3); 
  C(26) <= A(2)and B(3);
  C(27) <= A(3)and B(3);
  C(28) <= A(4)and B(3);
  C(29) <= A(5)and B(3);
  C(30) <= A(6)and B(3);
  C(31) <= A(7)and B(3);
  
  C(32) <= A(0)and B(4);
  C(33) <= A(1)and B(4); 
  C(34) <= A(2)and B(4);
  C(35) <= A(3)and B(4);
  C(36) <= A(4)and B(4);
  C(37) <= A(5)and B(4);
  C(38) <= A(6)and B(4);
  C(39) <= A(7)and B(4);
  
  C(40) <= A(0)and B(5);
  C(41) <= A(1)and B(5); 
  C(42) <= A(2)and B(5);
  C(43) <= A(3)and B(5);
  C(44) <= A(4)and B(5);
  C(45) <= A(5)and B(5);
  C(46) <= A(6)and B(5);
  C(47) <= A(7)and B(5);
  
  C(48) <= A(0)and B(6);
  C(49) <= A(1)and B(6); 
  C(50) <= A(2)and B(6);
  C(51) <= A(3)and B(6);
  C(52) <= A(4)and B(6);
  C(53) <= A(5)and B(6);
  C(54) <= A(6)and B(6);
  C(55) <= A(7)and B(6);
  
  C(56) <= A(0)and B(7);
  C(57) <= A(1)and B(7); 
  C(58) <= A(2)and B(7);
  C(59) <= A(3)and B(7);
  C(60) <= A(4)and B(7);
  C(61) <= A(5)and B(7);
  C(62) <= A(6)and B(7);
  C(63) <= A(7)and B(7);

  
  U0: Soma_InXA3_1 PORT MAP(
   A => C(8),
   B => C(10),
   Cin => '0',
   Cout => Carry(0),
   S => R(1)
  );
 
  U1: Soma_InXA3_1 PORT MAP(
   A => C(9),
   B => C(2),
   Cin => Carry(0),
   Cout => Carry(1),
   S => E(0)
  );
 
  U2: Soma_InXA3_1 PORT MAP(
   A => C(10),
   B => C(3),
   Cin => Carry(1),
   Cout => Carry(2),
   S => E(1)
 );
 
 U3: Soma_InXA3_1 PORT MAP(
  A => C(11),
  B => C(4),
  Cin => Carry(2),
  Cout => Carry(3),
  S => E(2)
 );

 U4: Soma_InXA3_1 PORT MAP(
  A => C(12),
  B => C(5),
  Cin => Carry(3),
  Cout => Carry(4),
  S => E(3)
 );
 
 U5: Soma_InXA3_1 PORT MAP(
  A => C(13),
  B => C(6),
  Cin => Carry(4),
  Cout => Carry(5),
  S => E(4)
 ); 
 
 U6: Soma_InXA3_1 PORT MAP(
  A => C(14),
  B => C(7),
  Cin => Carry(5),
  Cout => Carry(6),
  S => E(5)
 );  

 U7: Soma_InXA3_1 PORT MAP(
  A => C(19),
  B => C(7),
  Cin => Carry(6),
  Cout => Carry(7),
  S => E(6)
 );  

 U8: Soma_InXA3_1 PORT MAP(
  A => C(16),
  B => E(0),
  Cin => '0',
  Cout => Carry(8),
  S => R(2)
 );  
 
 U9: Soma_InXA3_1 PORT MAP(
  A => C(17),
  B => E(1),
  Cin => Carry(8),
  Cout => Carry(9),
  S => E(7)
 );  

 U10: Soma_InXA3_1 PORT MAP(
  A => C(18),
  B => E(2),
  Cin => Carry(9),
  Cout => Carry(10),
  S => E(8)
 ); 
 
 U11: Soma_InXA3_1 PORT MAP(
  A => C(19),
  B => E(3),
  Cin => Carry(10),
  Cout => Carry(11),
  S => E(9)
 ); 

 U12: Soma_InXA3_1 PORT MAP(
  A => C(20),
  B => E(4),
  Cin => Carry(11),
  Cout => Carry(12),
  S => E(10)
 );

 U13: Soma_InXA3_1 PORT MAP(
  A => C(21),
  B => E(5),
  Cin => Carry(12),
  Cout => Carry(13),
  S => E(11)
 ); 
 
 U14: Soma_InXA3_1 PORT MAP(
  A => C(22),
  B => E(6),
  Cin => Carry(13),
  Cout => Carry(14),
  S => E(12)
 );
 
 U15: Soma_InXA3_1 PORT MAP(
  A => C(23),
  B => Carry(7),
  Cin => Carry(14),
  Cout => Carry(15),
  S => E(13)
 );
 
 U16: Soma_InXA3_1 PORT MAP(
  A => C(24),
  B => E(7),
  Cin => '0',
  Cout => Carry(16),
  S => R(3)
 ); 
 
 U17: Soma_InXA3_1 PORT MAP(
  A => C(25),
  B => E(8),
  Cin => Carry(16),
  Cout => Carry(17),
  S => E(14)
 );
 
 U18: Soma_InXA3_1 PORT MAP(
  A => C(26),
  B => E(9),
  Cin => Carry(17),
  Cout => Carry(18),
  S => E(15)
 );
 
 U19: Soma_InXA3_1 PORT MAP(
  A => C(27),
  B => E(10),
  Cin => Carry(18),
  Cout => Carry(19),
  S => E(16)
 ); 
 
 U20: Soma_InXA3_1 PORT MAP(
  A => C(28),
  B => E(11),
  Cin => Carry(19),
  Cout => Carry(20),
  S => E(17)
 );

 U21: Soma_InXA3_1 PORT MAP(
  A => C(29),
  B => E(12),
  Cin => Carry(20),
  Cout => Carry(21),
  S => E(18)
 ); 
 
 U22: Soma_InXA3_1 PORT MAP(
  A => C(30),
  B => E(13),
  Cin => Carry(21),
  Cout => Carry(22),
  S => E(19)
 );
 
 U23: Soma_InXA3_1 PORT MAP(
  A => C(31),
  B => Carry(15),
  Cin => Carry(22),
  Cout => Carry(23),
  S => E(20)
 );
 
 U24: Soma_InXA3_1 PORT MAP(
  A => C(32),
  B => E(14),
  Cin => '0',
  Cout => Carry(24),
  S => R(4)
 ); 
 
 U25: Soma_InXA3_1 PORT MAP(
  A => C(33),
  B => E(15),
  Cin => Carry(24),
  Cout => Carry(25),
  S => E(21)
 );
 
 U26: Soma_InXA3_1 PORT MAP(
  A => C(34),
  B => E(16),
  Cin => Carry(25),
  Cout => Carry(26),
  S => E(22)
 );
 
 U27: Soma_InXA3_1 PORT MAP(
  A => C(35),
  B => E(17),
  Cin => Carry(26),
  Cout => Carry(27),
  S => E(23)
 ); 
 
 U28: Soma_InXA3_1 PORT MAP(
  A => C(36),
  B => E(18),
  Cin => Carry(27),
  Cout => Carry(28),
  S => E(24)
 );

 U29: Soma_InXA3_1 PORT MAP(
  A => C(37),
  B => E(19),
  Cin => Carry(28),
  Cout => Carry(29),
  S => E(25)
 ); 
 
 U30: Soma_InXA3_1 PORT MAP(
  A => C(38),
  B => E(20),
  Cin => Carry(29),
  Cout => Carry(30),
  S => E(26)
 );
 
 U31: Soma_InXA3_1 PORT MAP(
  A => C(39),
  B => Carry(23),
  Cin => Carry(30),
  Cout => Carry(31),
  S => E(27)
 );
 
 U32: Soma_InXA3_1 PORT MAP(
  A => C(40),
  B => E(21),
  Cin => '0',
  Cout => Carry(32),
  S => R(5)
 ); 
 
 U33: Soma_InXA3_1 PORT MAP(
  A => C(41),
  B => E(22),
  Cin => Carry(32),
  Cout => Carry(33),
  S => E(28)
 );
 
 U34: Soma_InXA3_1 PORT MAP(
  A => C(42),
  B => E(23),
  Cin => Carry(33),
  Cout => Carry(34),
  S => E(29)
 );
 
 U35: Soma_InXA3_1 PORT MAP(
  A => C(43),
  B => E(24),
  Cin => Carry(34),
  Cout => Carry(35),
  S => E(30)
 ); 
 
 U36: Soma_InXA3_1 PORT MAP(
  A => C(44),
  B => E(25),
  Cin => Carry(35),
  Cout => Carry(36),
  S => E(31)
 );

 U37: Soma_InXA3_1 PORT MAP(
  A => C(45),
  B => E(26),
  Cin => Carry(36),
  Cout => Carry(37),
  S => E(32)
 ); 
 
 U38: Soma_InXA3_1 PORT MAP(
  A => C(46),
  B => E(27),
  Cin => Carry(37),
  Cout => Carry(38),
  S => E(33)
 );
 
 U39: Soma_InXA3_1 PORT MAP(
  A => C(47),
  B => Carry(31),
  Cin => Carry(38),
  Cout => Carry(39),
  S => E(34)
 );

 U40: Soma_InXA3_1 PORT MAP(
  A => C(48),
  B => E(28),
  Cin => '0',
  Cout => Carry(40),
  S => R(6)
 ); 
 
 U41: Soma_InXA3_1 PORT MAP(
  A => C(49),
  B => E(29),
  Cin => Carry(40),
  Cout => Carry(41),
  S => E(35)
 );
 
 U42: Soma_InXA3_1 PORT MAP(
  A => C(50),
  B => E(30),
  Cin => Carry(41),
  Cout => Carry(42),
  S => E(36)
 );
 
 U43: Soma_InXA3_1 PORT MAP(
  A => C(51),
  B => E(31),
  Cin => Carry(42),
  Cout => Carry(43),
  S => E(37)
 ); 
 
 U44: Soma_InXA3_1 PORT MAP(
  A => C(52),
  B => E(32),
  Cin => Carry(43),
  Cout => Carry(44),
  S => E(38)
 );

 U45: Soma_InXA3_1 PORT MAP(
  A => C(53),
  B => E(33),
  Cin => Carry(44),
  Cout => Carry(45),
  S => E(39)
 ); 
 
 U46: Soma_InXA3_1 PORT MAP(
  A => C(54),
  B => E(34),
  Cin => Carry(45),
  Cout => Carry(46),
  S => E(40)
 );
 
 U47: Soma_InXA3_1 PORT MAP(
  A => C(55),
  B => Carry(39),
  Cin => Carry(46),
  Cout => Carry(47),
  S => E(41)
 );  
 
 U48: Soma_InXA3_1 PORT MAP(
  A => C(56),
  B => E(35),
  Cin => '0',
  Cout => Carry(48),
  S => R(7)
 ); 
 
 U49: Soma_InXA3_1 PORT MAP(
  A => C(57),
  B => E(36),
  Cin => Carry(48),
  Cout => Carry(49),
  S => R(8)
 );
 
 U50: Soma_InXA3_1 PORT MAP(
  A => C(58),
  B => E(37),
  Cin => Carry(49),
  Cout => Carry(50),
  S => R(9)
 );
 
 U51: Soma_InXA3_1 PORT MAP(
  A => C(59),
  B => E(38),
  Cin => Carry(50),
  Cout => Carry(51),
  S => R(10)
 ); 
 
 U52: Soma_InXA3_1 PORT MAP(
  A => C(60),
  B => E(39),
  Cin => Carry(51),
  Cout => Carry(52),
  S => R(11)
 );

 U53: Soma_InXA3_1 PORT MAP(
  A => C(61),
  B => E(40),
  Cin => Carry(52),
  Cout => Carry(53),
  S => R(12)
 ); 
 
 U54: Soma_InXA3_1 PORT MAP(
  A => C(62),
  B => E(41),
  Cin => Carry(53),
  Cout => Carry(54),
  S => R(13)
 );
 
 U55: Soma_InXA3_1 PORT MAP(
  A => C(63),
  B => Carry(47),
  Cin => Carry(54),
  Cout => R(15),
  S => R(14)
 );
 
end Mult8;
