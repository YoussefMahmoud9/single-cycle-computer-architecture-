
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity DATA_MEMOMRY is
    Port ( CLK : in  STD_LOGIC;
           ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           WDATA : in  STD_LOGIC_VECTOR (31 downto 0);
           MemR : in  STD_LOGIC;
           MemW : in  STD_LOGIC;
           RData : out  STD_LOGIC_VECTOR (31 downto 0));
end DATA_MEMOMRY;

architecture Behavioral of DATA_MEMOMRY is
type RAM is array (0 to 63) of STD_LOGIC_VECTOR (7 downto 0);
signal MM:RAM := (X"AB",X"CD",X"EF",X"00",
					   X"75",X"74",X"65",X"72",
					   X"20",X"41",X"72",X"63",
					   X"68",X"69",X"74",X"65",
					   X"12",X"34",X"56",X"78",
					   X"7F",X"7F",X"6D",X"6D",
					   X"00",X"00",X"00",X"00",
					   X"78",X"78",X"6A",X"6A",
					   X"00",X"00",X"00",X"01",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00",
					   X"00",X"00",X"00",X"00");

begin
process(MemR,MemW,CLK)
Begin

if MemR='1' and MemW='0'
then
RData(31 downto 24) <= MM(To_integer(unsigned(ADDRESS)));
RData(23 downto 16) <= MM(To_integer(unsigned(ADDRESS)+1));
RData(15 downto 8) <= MM(To_integer(unsigned(ADDRESS)+2));
RData(7 downto 0) <= MM(To_integer(unsigned(ADDRESS)+3));

ELSIF MemW='1' AND rising_edge(CLK)
THEN
MM(To_integer(unsigned(ADDRESS)))<=WDATA(31 downto 24);
MM(To_integer(unsigned(ADDRESS)+1))<=WDATA(23 downto 16);
MM(To_integer(unsigned(ADDRESS)+2))<=WDATA(15 downto 8);
MM(To_integer(unsigned(ADDRESS)+3))<=WDATA(7 downto 0);
END IF;
END PROCESS;





end Behavioral;

