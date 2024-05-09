
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT_LEFT_2 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT_LEFT_2;

architecture Behavioral of SHIFT_LEFT_2 is

begin

  DATA_OUT(31 downto 2) <= DATA_IN(29 downto 0);
    DATA_OUT(1 downto 0) <= "00";

end Behavioral;

