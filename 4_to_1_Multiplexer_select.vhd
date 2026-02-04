library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_select is    --entity declaration 
port(

A_in : in std_logic ;
B_in : in std_logic ;
C_in : in std_logic;
D_in : in std_logic;
Sel : in std_logic_vector (1 downto 0); -- two bit selector decleration using std_logic_vector 
Y_out : out std_logic

);

end entity ;

architecture dataflow of mux_select is 
signal select_line : std_logic_vector (1 downto 0); --signal decleration
begin
select_line <= Sel ;
with select_line select Y_out <= A_in when "00",    
				 B_in when "01",
				 C_in when "10",
			         D_in when "11",
				 '0' when others ;
end architecture ;          

						 
						 
						 