-- Comparator in VHDL --

library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Comparator is 
port(
A : in std_logic ;
B : in std_logic;
EQL : out std_logic;
LT : out std_logic;
GT : out std_logic 
);

end entity ; 


architecture dataflow of Comparator is 
begin 


EQL <= '1' when A = B else 
       '0' ;

LT <= '1' when A < B else
      '0' ;

GT <= '1' when A > B else 
      '0';


end architecture ;


	   
	   