
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Soma_AXA2_32 is
port(
	a: in std_logic_vector(31 downto 0);
	b: in std_logic_vector(31 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(31 downto 0)
);
end Soma_AXA2_32;

architecture Soma32Bits of Soma_AXA2_32 is
signal c: std_logic_vector(31 downto 0);

component Soma_AXA2_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Soma_AXA2_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Soma_AXA2_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Soma_AXA2_1
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Soma_AXA2_1
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>c(3));
	  
FA4 : Soma_AXA2_1
	port map (cin=>c(3), a=>a(4), b=>b(4), s=>s(4), cout=>c(4));
	  
FA5 : Soma_AXA2_1
	port map (cin=>c(4), a=>a(5), b=>b(5), s=>s(5), cout=>c(5));

FA6 : Soma_AXA2_1
	port map (cin=>c(5), a=>a(6), b=>b(6), s=>s(6), cout=>c(6));
	
FA7 : Soma_AXA2_1
	port map (cin=>c(6), a=>a(7), b=>b(7), s=>s(7), cout=>c(7));
	  
FA8 : Soma_AXA2_1
	port map (cin=>c(7), a=>a(8), b=>b(8), s=>s(8), cout=>c(8));
	  
FA9 : Soma_AXA2_1
	port map (cin=>c(8), a=>a(9), b=>b(9), s=>s(9), cout=>c(9));
	  
FA10 : Soma_AXA2_1
	port map (cin=>c(9), a=>a(10), b=>b(10), s=>s(10), cout=>c(10));
	  
FA11 : Soma_AXA2_1
	port map (cin=>c(10), a=>a(11), b=>b(11), s=>s(11), cout=>c(11));

FA12 : Soma_AXA2_1
	port map (cin=>c(11), a=>a(12), b=>b(12), s=>s(12), cout=>c(12));
	  
FA13 : Soma_AXA2_1
	port map (cin=>c(12), a=>a(13), b=>b(13), s=>s(13), cout=>c(13));
	  
FA14 : Soma_AXA2_1
	port map (cin=>c(13), a=>a(14), b=>b(14), s=>s(14), cout=>c(14));
	  
FA15 : Soma_AXA2_1
	port map (cin=>c(14), a=>a(15), b=>b(15), s=>s(15), cout=>c(15));

FA16 : Soma_AXA2_1
	port map (cin=>c(15), a=>a(16), b=>b(16), s=>s(16), cout=>c(16));
	  
FA17 : Soma_AXA2_1
	port map (cin=>c(16), a=>a(17), b=>b(17), s=>s(17), cout=>c(17));
	  
FA18 : Soma_AXA2_1
	port map (cin=>c(17), a=>a(18), b=>b(18), s=>s(18), cout=>c(18));
	
FA19 : Soma_AXA2_1
	port map (cin=>c(18), a=>a(19), b=>b(19), s=>s(19), cout=>c(19));
	  
FA20 : Soma_AXA2_1
	port map (cin=>c(19), a=>a(20), b=>b(20), s=>s(20), cout=>c(20));
	  
FA21 : Soma_AXA2_1
	port map (cin=>c(20), a=>a(21), b=>b(21), s=>s(21), cout=>c(21));

FA22 : Soma_AXA2_1
	port map (cin=>c(21), a=>a(22), b=>b(22), s=>s(22), cout=>c(22));
	
FA23 : Soma_AXA2_1
	port map (cin=>c(22), a=>a(23), b=>b(23), s=>s(23), cout=>c(23));
	  
FA24 : Soma_AXA2_1
	port map (cin=>c(23), a=>a(24), b=>b(24), s=>s(24), cout=>c(24));
	  
FA25 : Soma_AXA2_1
	port map (cin=>c(24), a=>a(25), b=>b(25), s=>s(25), cout=>c(25));
	  
FA26 : Soma_AXA2_1
	port map (cin=>c(25), a=>a(26), b=>b(26), s=>s(26), cout=>c(26));
	  
FA27 : Soma_AXA2_1
	port map (cin=>c(26), a=>a(27), b=>b(27), s=>s(27), cout=>c(27));

FA28 : Soma_AXA2_1
	port map (cin=>c(27), a=>a(28), b=>b(28), s=>s(28), cout=>c(28));
	  
FA29 : Soma_AXA2_1
	port map (cin=>c(28), a=>a(29), b=>b(29), s=>s(29), cout=>c(29));
	  
FA30 : Soma_AXA2_1
	port map (cin=>c(29), a=>a(30), b=>b(30), s=>s(30), cout=>c(30));
	  
FA31 : Soma_AXA2_1
	port map (cin=>c(30), a=>a(31), b=>b(31), s=>s(31), cout=>cout);
	
end Soma32Bits;





