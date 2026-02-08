library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparator2bit_tb is 
end entity ;


architecture behavioural of comparator2bit_tb is 
component comparator_2bit is 
port (
Val_1,Val_2  : in std_logic_vector (1 downto 0);
EQl,LT,GT : out std_logic
);
end component;

signal V1,V2 : std_logic_vector (1 downto 0);
signal EQl_tb , LT_tb ,GT_tb :  std_logic ;

begin 

UUT: comparator_2bit port map 
(
Val_1 => V1 ,
Val_2 => V2 ,
EQl => EQl_tb,
GT => GT_tb,
LT => LT_tb 
);


stimulus_proc : process 
begin 

for i in  0 to 3 loop 
  for j in 0 to 3 loop 
  
  V1 <= std_logic_vector( to_unsigned (i ,2));
  V2 <=  std_logic_vector(to_unsigned (j ,2));
 
 wait for 10 ns ;
  
      end loop;
  
    end loop ;
wait ;

  end process ;


end architecture;