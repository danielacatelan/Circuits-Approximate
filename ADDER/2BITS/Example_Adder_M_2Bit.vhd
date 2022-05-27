--******************************************************************************
-- author: Doctoral student - Daniela Catelan
-- year: 2020
-- Postgraduate Program in CC at the Federal University of Mato Grosso do Sul
-- Mixed approximate 2-bit adder
--******************************************************************************


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder_M_Type_2 is
port(
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(1 downto 0)
);
end Adder_M_Type_2;

architecture Adder2Bits of Adder_M_Type_2 is
signal c: std_logic_vector(1 downto 0);

component Adder_Type_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

component Adder_Type_Accuracy_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Adder_Type_Accuracy_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	
FA1 : Adder_Type_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>cout);
	
end Adder2Bits;

