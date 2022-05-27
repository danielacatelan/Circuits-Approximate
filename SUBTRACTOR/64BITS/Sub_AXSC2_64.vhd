
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Sub_AXSC2_64 is
port(
	a: in std_logic_vector(63 downto 0);
	b: in std_logic_vector(63 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(63 downto 0)
);
end Sub_AXSC2_64 ; 

architecture Sub64Bits of Sub_AXSC2_64 is
signal c: std_logic_vector(63 downto 0);

component Sub_AXSC2_1 
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin

FA0 : Sub_AXSC2_1 
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Sub_AXSC2_1 
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Sub_AXSC2_1 
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Sub_AXSC2_1 
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>c(3));
	  
FA4 : Sub_AXSC2_1 
	port map (cin=>c(3), a=>a(4), b=>b(4), s=>s(4), cout=>c(4));
	  
FA5 : Sub_AXSC2_1 
	port map (cin=>c(4), a=>a(5), b=>b(5), s=>s(5), cout=>c(5));

FA6 : Sub_AXSC2_1 
	port map (cin=>c(5), a=>a(6), b=>b(6), s=>s(6), cout=>c(6));
	
FA7 : Sub_AXSC2_1 
	port map (cin=>c(6), a=>a(7), b=>b(7), s=>s(7), cout=>c(7));
	  
FA8 : Sub_AXSC2_1 
	port map (cin=>c(7), a=>a(8), b=>b(8), s=>s(8), cout=>c(8));
	  
FA9 : Sub_AXSC2_1 
	port map (cin=>c(8), a=>a(9), b=>b(9), s=>s(9), cout=>c(9));
	  
FA10 : Sub_AXSC2_1 
	port map (cin=>c(9), a=>a(10), b=>b(10), s=>s(10), cout=>c(10));
	  
FA11 : Sub_AXSC2_1 
	port map (cin=>c(10), a=>a(11), b=>b(11), s=>s(11), cout=>c(11));

FA12 : Sub_AXSC2_1 
	port map (cin=>c(11), a=>a(12), b=>b(12), s=>s(12), cout=>c(12));
	  
FA13 : Sub_AXSC2_1 
	port map (cin=>c(12), a=>a(13), b=>b(13), s=>s(13), cout=>c(13));
	  
FA14 : Sub_AXSC2_1 
	port map (cin=>c(13), a=>a(14), b=>b(14), s=>s(14), cout=>c(14));
	  
FA15 : Sub_AXSC2_1 
	port map (cin=>c(14), a=>a(15), b=>b(15), s=>s(15), cout=>c(15));

FA16 : Sub_AXSC2_1 
	port map (cin=>c(15), a=>a(16), b=>b(16), s=>s(16), cout=>c(16));
	  
FA17 : Sub_AXSC2_1 
	port map (cin=>c(16), a=>a(17), b=>b(17), s=>s(17), cout=>c(17));
	  
FA18 : Sub_AXSC2_1 
	port map (cin=>c(17), a=>a(18), b=>b(18), s=>s(18), cout=>c(18));
	
FA19 : Sub_AXSC2_1 
	port map (cin=>c(18), a=>a(19), b=>b(19), s=>s(19), cout=>c(19));
	  
FA20 : Sub_AXSC2_1 
	port map (cin=>c(19), a=>a(20), b=>b(20), s=>s(20), cout=>c(20));
	  
FA21 : Sub_AXSC2_1 
	port map (cin=>c(20), a=>a(21), b=>b(21), s=>s(21), cout=>c(21));

FA22 : Sub_AXSC2_1 
	port map (cin=>c(21), a=>a(22), b=>b(22), s=>s(22), cout=>c(22));
	
FA23 : Sub_AXSC2_1 
	port map (cin=>c(22), a=>a(23), b=>b(23), s=>s(23), cout=>c(23));
	  
FA24 : Sub_AXSC2_1 
	port map (cin=>c(23), a=>a(24), b=>b(24), s=>s(24), cout=>c(24));
	  
FA25 : Sub_AXSC2_1 
	port map (cin=>c(24), a=>a(25), b=>b(25), s=>s(25), cout=>c(25));
	  
FA26 : Sub_AXSC2_1 
	port map (cin=>c(25), a=>a(26), b=>b(26), s=>s(26), cout=>c(26));
	  
FA27 : Sub_AXSC2_1 
	port map (cin=>c(26), a=>a(27), b=>b(27), s=>s(27), cout=>c(27));

FA28 : Sub_AXSC2_1 
	port map (cin=>c(27), a=>a(28), b=>b(28), s=>s(28), cout=>c(28));
	  
FA29 : Sub_AXSC2_1 
	port map (cin=>c(28), a=>a(29), b=>b(29), s=>s(29), cout=>c(29));
	  
FA30 : Sub_AXSC2_1 
	port map (cin=>c(29), a=>a(30), b=>b(30), s=>s(30), cout=>c(30));
	  
FA31 : Sub_AXSC2_1 
	port map (cin=>c(30), a=>a(31), b=>b(31), s=>s(31), cout=>c(31));
	  
FA32 : Sub_AXSC2_1 
	port map (cin=>c(31), a=>a(32), b=>b(32), s=>s(32), cout=>c(32));
	  
FA33 : Sub_AXSC2_1 
	port map (cin=>c(32), a=>a(33), b=>b(33), s=>s(33), cout=>c(33));
	  
FA34 : Sub_AXSC2_1 
	port map (cin=>c(33), a=>a(34), b=>b(34), s=>s(34), cout=>c(34));
	
FA35 : Sub_AXSC2_1 
	port map (cin=>c(34), a=>a(35), b=>b(35), s=>s(35), cout=>c(35));
	  
FA36 : Sub_AXSC2_1 
	port map (cin=>c(35), a=>a(36), b=>b(36), s=>s(36), cout=>c(36));
	  
FA37 : Sub_AXSC2_1 
	port map (cin=>c(36), a=>a(37), b=>b(37), s=>s(37), cout=>c(37));

FA38 : Sub_AXSC2_1 
	port map (cin=>c(37), a=>a(38), b=>b(38), s=>s(38), cout=>c(38));
	
FA39 : Sub_AXSC2_1 
	port map (cin=>c(38), a=>a(39), b=>b(39), s=>s(39), cout=>c(39));
	  
FA40 : Sub_AXSC2_1 
	port map (cin=>c(39), a=>a(40), b=>b(40), s=>s(40), cout=>c(40));
	  
FA41 : Sub_AXSC2_1 
	port map (cin=>c(40), a=>a(41), b=>b(41), s=>s(41), cout=>c(41));
	  
FA42 : Sub_AXSC2_1 
	port map (cin=>c(41), a=>a(42), b=>b(42), s=>s(42), cout=>c(42));
	  
FA43 : Sub_AXSC2_1 
	port map (cin=>c(42), a=>a(43), b=>b(43), s=>s(43), cout=>c(43));

FA44 : Sub_AXSC2_1 
	port map (cin=>c(43), a=>a(44), b=>b(44), s=>s(44), cout=>c(44));
	  
FA45 : Sub_AXSC2_1 
	port map (cin=>c(44), a=>a(45), b=>b(45), s=>s(45), cout=>c(45));
	  
FA46 : Sub_AXSC2_1 
	port map (cin=>c(45), a=>a(46), b=>b(46), s=>s(46), cout=>c(46));
	  
FA47 : Sub_AXSC2_1 
	port map (cin=>c(46), a=>a(47), b=>b(47), s=>s(47), cout=>c(47));

FA48 : Sub_AXSC2_1 
	port map (cin=>c(47), a=>a(48), b=>b(48), s=>s(48), cout=>c(48));
	  
FA49 : Sub_AXSC2_1 
	port map (cin=>c(48), a=>a(49), b=>b(49), s=>s(49), cout=>c(49));
	  
FA50 : Sub_AXSC2_1 
	port map (cin=>c(49), a=>a(50), b=>b(50), s=>s(50), cout=>c(50));
	
FA51 : Sub_AXSC2_1 
	port map (cin=>c(50), a=>a(51), b=>b(51), s=>s(51), cout=>c(51));
	  
FA52 : Sub_AXSC2_1 
	port map (cin=>c(51), a=>a(52), b=>b(52), s=>s(52), cout=>c(52));
	  
FA53 : Sub_AXSC2_1 
	port map (cin=>c(52), a=>a(53), b=>b(53), s=>s(53), cout=>c(53));

FA54 : Sub_AXSC2_1 
	port map (cin=>c(53), a=>a(54), b=>b(54), s=>s(54), cout=>c(54));
	
FA55 : Sub_AXSC2_1 
	port map (cin=>c(54), a=>a(55), b=>b(55), s=>s(55), cout=>c(55));
	  
FA56 : Sub_AXSC2_1 
	port map (cin=>c(55), a=>a(56), b=>b(56), s=>s(56), cout=>c(56));
	  
FA57 : Sub_AXSC2_1 
	port map (cin=>c(56), a=>a(57), b=>b(57), s=>s(57), cout=>c(57));
	  
FA58 : Sub_AXSC2_1 
	port map (cin=>c(57), a=>a(58), b=>b(58), s=>s(58), cout=>c(58));
	  
FA59 : Sub_AXSC2_1 
	port map (cin=>c(58), a=>a(59), b=>b(59), s=>s(59), cout=>c(59));

FA60 : Sub_AXSC2_1 
	port map (cin=>c(59), a=>a(60), b=>b(60), s=>s(60), cout=>c(60));
	  
FA61 : Sub_AXSC2_1 
	port map (cin=>c(60), a=>a(61), b=>b(61), s=>s(61), cout=>c(61));
	  
FA62 : Sub_AXSC2_1 
	port map (cin=>c(61), a=>a(62), b=>b(62), s=>s(62), cout=>c(62));
	  
FA63 : Sub_AXSC2_1 
	port map (cin=>c(62), a=>a(63), b=>b(63), s=>s(63), cout=>cout);
	
end Sub64Bits;










