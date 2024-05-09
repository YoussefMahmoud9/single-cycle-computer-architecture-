----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:01:31 05/13/2022 
-- Design Name: 
-- Module Name:    instructionmemormytwo - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionMemory is
    Port ( ReadAddress : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC);
end InstructionMemory;

architecture Behavioral of InstructionMemory is

type Ins_type is array (0 to 31) of STD_LOGIC_VECTOR (7 downto 0);
signal Ins_array : Ins_type := (X"00",X"85",X"10",X"20",
										  X"AC",X"02",X"00",X"08",
										  X"8C",X"06",X"00",X"08",
										  X"10",X"46",X"00",X"01",
										  X"00",X"46",X"88",X"2A",
										  X"00",X"A4",X"88",X"22",
										  X"00",X"00",X"00",X"00",
										  X"00",X"00",X"00",X"00");


begin
		 Instruction(31 downto 24) <=Ins_array(to_integer(unsigned(ReadAddress)));
		 Instruction(23 downto 16) <= Ins_array(to_integer(unsigned(ReadAddress)+1));
		 Instruction(15 downto 8) <= Ins_array(to_integer(unsigned(ReadAddress)+2));
		 Instruction(7 downto 0) <= Ins_array(to_integer(unsigned(ReadAddress)+3));


end Behavioral;