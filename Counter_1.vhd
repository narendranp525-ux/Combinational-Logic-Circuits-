library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_1 is 
port (
clock : in std_logic ;
reset : in std_logic ;
op :  out std_logic_vector (3 downto 0) 
);
end entity  counter_1 ;

architecture behaviour of counter_1 is 
signal count : integer := 0 ;
begin 

clock_process : process(clock,reset ) 
begin 
 if reset = '1' then
            count <= 0;
        elsif rising_edge(clock) then
            if count = 15 then
                count <= 0;
            else
                count <= count + 1;
             end if;
end if;
 
end process;
op <= std_logic_vector (to_unsigned(count , 4)) ;
end architecture behaviour ;