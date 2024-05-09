----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:59 04/22/2022 
-- Design Name: 
-- Module Name:    SHIFT_LEFT_EXT_2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT_LEFT_EXT_2 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (25 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (27 downto 0));
end SHIFT_LEFT_EXT_2;

architecture Behavioral of SHIFT_LEFT_EXT_2 is

begin

  DATA_OUT(27 downto 2) <= DATA_IN ;
    DATA_OUT(1 downto 0) <= "00";

end Behavioral;

