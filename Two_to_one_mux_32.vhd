----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:13 02/23/2022 
-- Design Name: 
-- Module Name:    Two_to_one_mux_32 - Behavioral 
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

entity Two_to_one_mux_32 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC);
end Two_to_one_mux_32;

-------------------------------------------------------------------
architecture Behavioral of Two_to_one_mux_32 is

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

