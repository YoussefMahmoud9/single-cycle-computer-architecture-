
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity INSTRUCTION_MEMORY is
    Port ( READ_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           INS : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in STD_LOGIC);
end INSTRUCTION_MEMORY;

architecture Behavioral of INSTRUCTION_MEMORY is

type Reg is array (0 to 19 ) of STD_LOGIC_VECTOR (7 downto 0);

signal Reg_array : Reg := ( 	"00000001","10000000","00000001","00011000","00000000","00000000","00000000","00000000",
											"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
											"00000000","00000000","00000000","00000000");
										
										

begin  
--process(CLK,READ_ADDRESS)
--begin
--if rising_edge(CLK)
--then
	INS(31 downto 24) <= Reg_array(To_integer(unsigned(READ_ADDRESS)));
	INS(23 downto 16) <= Reg_array(To_integer(unsigned(READ_ADDRESS)+1));
	INS(15 downto 8) <= Reg_array(To_integer(unsigned(READ_ADDRESS)+2));
	INS(7 downto 0) <= Reg_array(To_integer(unsigned(READ_ADDRESS)+3));
--end if;
--end process;
end Behavioral;

