library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FULL_ADDER is
    Port ( INONE : in  STD_LOGIC_VECTOR (31 downto 0);
           INTWO : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPT : out  STD_LOGIC_VECTOR (31 downto 0));
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

begin

OUTPT  <= INONE  + INTWO ;

end Behavioral;

