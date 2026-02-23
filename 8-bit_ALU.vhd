library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU_8_bit is 
port(
A,B : in std_logic_vector (7 downto 0);
sel : in std_logic_vector (2 downto 0);
y : out std_logic_vector (8 downto 0);
carry : out std_logic

);
end entity; 

architecture dataflow of ALU_8_bit is 

begin 



process (A,B,sel)
variable temp : unsigned(8 downto 0);
begin 

carry <= '0' ;

case sel is

	when "000" => --addition
	
				temp := ('0' & unsigned(A)) + unsigned(B);
				Y  <= std_logic_vector(temp(8 downto 0));
				carry <= temp(8);
		

	when "001" => --sustraction
	
				temp := ('0' & unsigned(A)) - unsigned(B);
				Y  <= std_logic_vector(temp(8 downto 0));
				carry <= temp(8);
	
	when "010" => --XOR operation
				
				Y <=  '0' & ( A xor B );
				
        when "011" => --NAND operation
				
				Y <= '0' &( A NAND B) ;
				
	when "100" => --and operation
				
				Y <=  '0' &( A and B) ;
	
	when "101" => --OR operation
				
				Y <= '0' &( A or B );
    
	when "110" => --not operation
				
				Y <= '0' & ( not A);				
	
	when "111" => -- zero 
				
				Y <= (others => '0');

 	when others => 
				
				Y <=  (others => '0') ;		
				
		  end case ;
		  
	  end process ;
	  
end architecture;