library ieee ;
use ieee.std_logic_1164.all;

entity mux_tb is 
end entity;

architecture structural of mux_tb is
component mux_select is 
port(
A_in : in std_logic ;
B_in : in std_logic ;
C_in : in std_logic;
D_in : in std_logic;
Sel : in std_logic_vector (1 downto 0); -- two bit selector decleration using std_logic_vector 
Y_out : out std_logic); 

end component;

signal a_in ,c_in : std_logic := '1' ;
signal b_in ,d_in : std_logic := '0';
signal y_out : std_logic;
signal sel : std_logic_vector(1 downto 0) ;

begin

muxtb: mux_select port map (

A_in => a_in,
B_in => b_in,
C_in => c_in,
D_in => d_in,
Y_out => y_out,
Sel  => sel 
);

stimulus_process: process 
begin 

Sel <= "00"; wait for 5 ns;
Sel <= "01"; wait for 5 ns;
Sel <= "10"; wait for 5 ns;
Sel <= "11"; wait for 5 ns;

wait;

end process ;

end architecture;