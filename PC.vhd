
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( INPUT_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT_PC : out  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC);
end PC;

architecture Behavioral of PC is
signal temp: STD_LOGIC_VECTOR (31 downto 0):= x"00000000";

begin
PROCESS(CLK)
BEGIN

if RISING_EDGE(CLK)
then
 OUTPUT_PC <= temp;
elsif  FALLING_EDGE(CLK)
then
temp <= INPUT_PC;
 
end if;

END PROCESS;
end Behavioral;

