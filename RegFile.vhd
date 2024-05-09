

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity RegFile is
    Port ( RReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WData : in  STD_LOGIC_VECTOR (31 downto 0);
           RData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  CLK : in STD_LOGIC);
end RegFile;

architecture Behavioral of RegFile is

type Reg_type is array (0 to 31 ) of STD_LOGIC_VECTOR (31 downto 0);



signal Reg_array : Reg_type := ( X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000005",X"00000007",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000");

begin

RData1 <= Reg_array(to_integer(unsigned(RReg1)));
RData2 <= Reg_array(to_integer(unsigned(RReg2)));

--------------------
process(RegWrite,CLK)
Begin
if RegWrite='1' AND rising_edge(CLK)
then 
 Reg_array(to_integer(unsigned(WReg))) <= WData ;
 End if;
 End process;
end Behavioral;

