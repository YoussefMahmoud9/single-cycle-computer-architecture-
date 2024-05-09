----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:26:11 03/09/2022 
-- Design Name: 
-- Module Name:    ALU_CONTROL - Behavioral 
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

entity ALU_CONTROL is
    Port ( OP : in  STD_LOGIC_VECTOR (1 downto 0);
           FF : in  STD_LOGIC_VECTOR (5 downto 0);
           CONTROL : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is

begin
PROCESS(OP,FF)
BEGIN
IF OP="00"
	THEN CONTROL<="0010";

ELSIF OP="01"
	THEN CONTROL <="0110";

ELSIF OP="10" AND FF(3 downto 0)="0000" 
	THEN CONTROL <="0010";

ELSIF OP(1)='1' AND FF(3 downto 0)="0010" 
	THEN CONTROL <="0110";

ELSIF OP="10" AND FF(3 downto 0)="0100" 
	THEN CONTROL <="0000";

ELSIF OP="10" AND FF(3 downto 0)="0101" 
	THEN CONTROL <="0001";
	
ELSIF OP(1)='1' AND FF(3 downto 0)="1010" 
	THEN CONTROL <="0111";

END IF ;
END PROCESS;
end Behavioral;

