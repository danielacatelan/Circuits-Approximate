library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Soma_AMA1_2 is
port(
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(1 downto 0)
);
end Soma_AMA1_2;

architecture Somador2Bits of Soma_AMA1_2 is
signal c: std_logic_vector(1 downto 0);

component Soma_AMA1_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Soma_AMA1_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	
FA1 : Soma_AMA1_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>cout);
	
end Somador2Bits;

