library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU_16_TB is 
end entity ;

architecture dataflow of ALU_16_TB is 
component ALU_16_bit is 
port (
A,B : in std_logic_vector (15 downto 0);
Sel : in std_logic_vector (2 downto 0);
Y : out std_logic_vector (16 downto 0);
carry : out std_logic;
clk : std_logic
);

end component;

signal A_tb,B_tb : std_logic_vector (15 downto 0) ;
signal Sel_tb : std_logic_vector (2 downto 0);
signal Y_tb : std_logic_vector (16 downto 0);
signal carry_tb,clk_tb : std_logic; 
 
begin 

uut : ALU_16_bit port map 
(
A => A_tb ,
B => B_tb ,
Sel => Sel_tb ,
carry => carry_tb,
clk => clk_tb,
Y => Y_tb 

);

clk_process : process 
begin 

clk_tb <= '0' ;
 wait for 5 ns ;
clk_tb <= '1' ;
 wait for 5 ns ;

end process ;

stimulus_process : process 
begin 

				Sel_tb <= "000" ;
				wait for 10 ns ;

				Sel_tb <= "001" ;
				wait for 10 ns ;

				Sel_tb <= "010" ;
				wait for 10 ns ;

				Sel_tb <= "011" ;
				wait for 10 ns ;

				Sel_tb <= "100" ;
				wait for 10 ns ;

				Sel_tb <= "101" ;
				wait for 10 ns ;

				Sel_tb <= "110" ;
				wait for 10 ns ;

				Sel_tb <= "111" ;
				wait for 10 ns ;

				wait ;

		end process;

end architecture ;