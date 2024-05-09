
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity Two_to_one_mux_5 is
Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Z : out  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC);
end Two_to_one_mux_5;

architecture Behavioral of Two_to_one_mux_5 is

begin
process(A,B,Sel)
begin
 if Sel ='0'
 then z<=A;
 else 
 Z<=B;
 end if;
end process;

end Behavioral;




