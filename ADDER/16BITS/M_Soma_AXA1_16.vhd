
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M_Soma_AXA1_16 is
port(
	a: in std_logic_vector(15 downto 0);
	b: in std_logic_vector(15 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(15 downto 0)
);
end M_Soma_AXA1_16;

architecture Soma16Bits of M_Soma_AXA1_16 is
signal c: std_logic_vector(15 downto 0);

component Soma_AXA1_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;


component Somador_Exato_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Somador_Exato_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Somador_Exato_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Somador_Exato_1
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Somador_Exato_1
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>c(3));
	  
FA4 : Somador_Exato_1
	port map (cin=>c(3), a=>a(4), b=>b(4), s=>s(4), cout=>c(4));
	  
FA5 : Somador_Exato_1
	port map (cin=>c(4), a=>a(5), b=>b(5), s=>s(5), cout=>c(5));

FA6 : Somador_Exato_1
	port map (cin=>c(5), a=>a(6), b=>b(6), s=>s(6), cout=>c(6));
	
FA7 : Somador_Exato_1
	port map (cin=>c(6), a=>a(7), b=>b(7), s=>s(7), cout=>c(7));
	  
FA8 : Soma_AXA1_1
	port map (cin=>c(7), a=>a(8), b=>b(8), s=>s(8), cout=>c(8));
	  
FA9 : Soma_AXA1_1
	port map (cin=>c(8), a=>a(9), b=>b(9), s=>s(9), cout=>c(9));
	  
FA10 : Soma_AXA1_1
	port map (cin=>c(9), a=>a(10), b=>b(10), s=>s(10), cout=>c(10));
	  
FA11 : Soma_AXA1_1
	port map (cin=>c(10), a=>a(11), b=>b(11), s=>s(11), cout=>c(11));

FA12 : Soma_AXA1_1
	port map (cin=>c(11), a=>a(12), b=>b(12), s=>s(12), cout=>c(12));
	  
FA13 : Soma_AXA1_1
	port map (cin=>c(12), a=>a(13), b=>b(13), s=>s(13), cout=>c(13));
	  
FA14 : Soma_AXA1_1
	port map (cin=>c(13), a=>a(14), b=>b(14), s=>s(14), cout=>c(14));
	  
FA15 : Soma_AXA1_1
	port map (cin=>c(14), a=>a(15), b=>b(15), s=>s(15), cout=>cout);
	
end Soma16Bits;











