library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU_16_bit is 
port(
A,B : in std_logic_vector (15 downto 0);
sel : in std_logic_vector (2 downto 0);
y : out std_logic_vector (16 downto 0);
carry : out std_logic;
clk : std_logic

);
end entity; 

architecture dataflow of ALU_16_bit is 

begin 



process (clk)
variable temp : unsigned(16 downto 0);
begin 


if (rising_edge(clk)) then
carry <= '0' ;

case sel is

	when "000" => --addition
	
				temp := ('0' & unsigned(A)) + unsigned(B);
				Y  <= std_logic_vector(temp(16 downto 0));
				carry <= temp(16);
		

	when "001" => --sustraction
	
				temp := ('0' & unsigned(A)) - unsigned(B);
				Y  <= std_logic_vector(temp(16 downto 0));
				carry <= temp(16);
	
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
		  
	end if ;	  
		  
	  end process ;
	  
end architecture;