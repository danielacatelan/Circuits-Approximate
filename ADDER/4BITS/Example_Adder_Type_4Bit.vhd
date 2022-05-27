--******************************************************************************
-- author: Doctoral student - Daniela Catelan
-- year: 2020
-- Postgraduate Program in CC at the Federal University of Mato Grosso do Sul
-- Fully approximate 4-bit adder
--******************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder_Type_4 is    -- Type: adder type - AMA, AXA, InXA
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(3 downto 0)
);
end Adder_Type_4;

architecture Adder4Bits of Adder_Type_4 is
signal c: std_logic_vector(3 downto 0);

component Adder_Type_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Adder_Type_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Adder_Type_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Adder_Type_1
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Adder_Type_1
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>cout);
	
end Adder4Bits;


