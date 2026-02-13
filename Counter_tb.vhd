library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_tb is 
end entity Counter_tb ;

architecture behavioural of Counter_tb is 
component counter_1 is 
port(
	clock : in std_logic ;
	reset : in std_logic ;
	op :  out std_logic_vector (3 downto 0) );
end component ; 

signal clk ,rst : std_logic ;
signal op_tb : std_logic_vector (3 downto 0); 

begin 

uut : counter_1
 port map (
		clock => clk ,
		reset => rst ,
		op => op_tb
	);
clk_process : process 
begin 
		while true loop
		clk <= '1' ;
		wait for 10 ns ;
		clk <= '0' ;
		wait for 10 ns;
   end loop ;
   
   end process ;
reset_stim : process 
   begin
  
  rst <= '1';
   wait for 25 ns;
   rst <= '0' ;
   wait ;
   
   
   end process;
  

end architecture behavioural ;
