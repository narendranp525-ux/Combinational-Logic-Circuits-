library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_4bit is 
port (
Val_1,Val_2  : in std_logic_vector (3 downto 0);
EQl,LT,GT : out std_logic

);

end entity ;

architecture data_flow of comparator_4bit is
begin

EQl <= '1' when unsigned(Val_1) = unsigned(Val_2)else 
       '0';
LT <= '1' when unsigned(Val_1) < unsigned(Val_2) else
      '0';
GT <= '1' when unsigned(Val_1) > unsigned(Val_2) else 
       '0';

	end architecture;   
	   
