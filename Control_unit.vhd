
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Control_unit is
    Port ( OP_INPUT : in  STD_LOGIC_VECTOR (5 downto 0);
           OP_OUTPUT : out  STD_LOGIC_VECTOR (1 downto 0);
           REGDUST : out  STD_LOGIC;
           ALUSRC : out  STD_LOGIC;
           MEMTOREG : out  STD_LOGIC;
           REGWRITE : out  STD_LOGIC;
           MEMREAD : out  STD_LOGIC;
           MEMWRITE : out  STD_LOGIC;
           BRANCH : out  STD_LOGIC;
			  JUMP : out  STD_LOGIC);
end Control_unit;

architecture Behavioral of Control_unit is

begin

PROCESS(OP_INPUT)
BEGIN 
IF OP_INPUT="000000"
THEN
	OP_OUTPUT <="10";
   REGDUST<='1';
   ALUSRC<='0';
   MEMTOREG<='0';
   REGWRITE<='1';
   MEMREAD<='0';
   MEMWRITE<='0';
   BRANCH<='0';
	JUMP <='0';
ELSIF OP_INPUT="100011"
THEN
	OP_OUTPUT <="00";
   REGDUST<='0';
   ALUSRC<='1';
   MEMTOREG<='1';
   REGWRITE<='1';
   MEMREAD<='1';
   MEMWRITE<='0';
   BRANCH<='0';
	JUMP <='0';
ELSIF OP_INPUT="101011"
THEN
	OP_OUTPUT <="00";
  -- REGDUST<='X';
   ALUSRC<='1';
  -- MEMTOREG<='X';
   REGWRITE<='0';
   MEMREAD<='0';
   MEMWRITE<='1';
   BRANCH<='0';
	JUMP <='0';
ELSIF OP_INPUT="000100"
THEN
	OP_OUTPUT <="01";
   --REGDUST<='X';
   ALUSRC<='0';
   --MEMTOREG<='X';
   REGWRITE<='0';
   MEMREAD<='0';
   MEMWRITE<='0';
   BRANCH<='1';
	JUMP <='0';
ELSIF OP_INPUT="000010"
THEN
	OP_OUTPUT <="00";
   REGDUST<='0';
   ALUSRC<='0';
   MEMTOREG<='0';
   REGWRITE<='0';
   MEMREAD<='0';
   MEMWRITE<='0';
   BRANCH<='0';
JUMP <='1';	
END IF;
END PROCESS;
end Behavioral;

