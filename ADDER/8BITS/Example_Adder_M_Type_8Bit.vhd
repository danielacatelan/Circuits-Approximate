--******************************************************************************
-- author: Doctoral student - Daniela Catelan
-- year: 2020
-- Postgraduate Program in CC at the Federal University of Mato Grosso do Sul
-- Mixed approximate 8-bit adder
--******************************************************************************
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder_M_Type_8 is        -- Type: adder type - AMA, AXA, InXA, and Accuracy
port(
	a: in std_logic_vector(7 downto 0);
	b: in std_logic_vector(7 downto 0);
	cin: in std_logic;
	cout: out std_logic;
	s: out std_logic_vector(7 downto 0)
);
end Adder_M_Type_8;

architecture Adder8Bits of Adder_M_Type_8 is
signal c: std_logic_vector(7 downto 0);

component  Adder_Type_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

component Adder_Accuracy_1
port( cin, a, b : in std_logic;
       cout, s  : out std_logic);
end component;

begin
FA0 : Adder_Accuracy_1
	port map (cin=>cin, a=>a(0), b=>b(0), s=>s(0), cout=>c(0));
	  
FA1 : Adder_Accuracy_1
	port map (cin=>c(0), a=>a(1), b=>b(1), s=>s(1), cout=>c(1));
	  
FA2 : Adder_Accuracy_1
	port map (cin=>c(1), a=>a(2), b=>b(2), s=>s(2), cout=>c(2));
	
FA3 : Adder_Accuracy_1
	port map (cin=>c(2), a=>a(3), b=>b(3), s=>s(3), cout=>c(3));
	  
FA4 :  Adder_Type_1
	port map (cin=>c(3), a=>a(4), b=>b(4), s=>s(4), cout=>c(4));
	  
FA5 :  Adder_Type_1
	port map (cin=>c(4), a=>a(5), b=>b(5), s=>s(5), cout=>c(5));
	  
FA6 :  Adder_Type_1
	port map (cin=>c(5), a=>a(6), b=>b(6), s=>s(6), cout=>c(6));
	  
FA7 :  Adder_Type_1
	port map (cin=>c(6), a=>a(7), b=>b(7), s=>s(7), cout=>cout);
	
end Adder8Bits;





