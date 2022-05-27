library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M_Sub_APSC7_4 is
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(3 downto 0)
);
end M_Sub_APSC7_4;

architecture Sub4Bits of M_Sub_APSC7_4 is
signal c: std_logic_vector(3 downto 0);

component Sub_APSC7_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

component Subtrator_Exato_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Subtrator_Exato_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Subtrator_Exato_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Sub_APSC7_1
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Sub_APSC7_1
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>cout);
	
end Sub4Bits;



