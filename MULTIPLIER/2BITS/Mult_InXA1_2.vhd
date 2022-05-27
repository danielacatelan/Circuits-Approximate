library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity Mult_InXA1_2 is
 port(
  a    : in std_logic_vector(1 downto 0);
  b    : in std_logic_vector(1 downto 0);
  R    : out std_logic_vector(3 downto 0) --R é a saida dos Multiplicadores
 );
end Mult_InXA1_2;

architecture Mult2 of Mult_InXA1_2 is

 COMPONENT Soma_InXA1_1
 PORT(
  a, b, cin : IN std_logic;          
  cout, s   : OUT std_logic
  );
 END COMPONENT;
 
signal C : STD_LOGIC_VECTOR (3 downto 0); -- saída das AND
signal Carry : STD_LOGIC_VECTOR (1 downto 0); --cout/carry dos somadores
--signal E : STD_LOGIC_VECTOR (5 downto 0); --saida S dos somadores intermediarios

 begin
  R(0) <= a(0)and b(0);
 
  C(0) <= a(0)and b(0); 
  C(1) <= a(0)and b(1);
  C(2) <= a(1)and b(0);
  C(3) <= a(1)and b(1);
 
  
  U0: Soma_InXA1_1 PORT MAP(
   a => C(2),
   b => C(1),
   cin => '0',
   cout => Carry(0),
   s => R(1)
  );
 
  U1: Soma_InXA1_1 PORT MAP(
   a => C(3),
   b => '0',
   cin => Carry(0),
   cout => R(3),
   s => R(2)
  );
  
end Mult2;
