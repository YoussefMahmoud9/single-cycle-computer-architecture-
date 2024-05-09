
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;


--library UNISIM;
--use UNISIM.VComponents.all;

entity SIGN_EXTEND is
    Port ( SGNIN : in  STD_LOGIC_VECTOR (15 downto 0);
           SGNOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end SIGN_EXTEND;

architecture Behavioral of SIGN_EXTEND is



begin
PROCESS(SGNIN) BEGIN
IF SGNIN(15) = '1'
THEN
SGNOUT(31 DOWNTO 16) <=  "1111111111111111";
ELSE
SGNOUT(31 DOWNTO 16) <=  "0000000000000000";
END IF;
SGNOUT(15 DOWNTO 0) <=  SGNIN;

END PROCESS;

end Behavioral;

