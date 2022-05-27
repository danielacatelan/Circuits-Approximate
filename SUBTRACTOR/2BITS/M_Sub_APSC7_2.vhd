library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M_Sub_APSC7_2 is
port(
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(1 downto 0)
);
end M_Sub_APSC7_2;

architecture Sub2Bits of M_Sub_APSC7_2 is
signal c: std_logic_vector(1 downto 0);

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
	
FA1 : Sub_APSC7_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>cout);
	
end Sub2Bits;




