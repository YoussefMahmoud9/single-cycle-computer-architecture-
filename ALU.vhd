
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           SEL : in  STD_LOGIC_VECTOR (3 downto 0);
           RES : out  STD_LOGIC_VECTOR (31 downto 0);
           ZERO : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

PROCESS(A,B,SEL)
    BEGIN
        IF SEL = "0000"
            THEN RES <= A AND B;

        ELSIF SEL = "0001"
            THEN RES <= A OR B;

        ELSIF SEL = "0010"
            THEN RES <= A + B;

        ELSIF SEL = "0110"
            THEN RES <= A - B;

        ELSIF SEL = "0111"
            THEN IF A<B
                THEN RES <= x"00000001"; --1
            ELSE
                RES <= x"00000000"; --0
            END IF;
        ELSIF SEL = "1100"
            THEN RES <= A NOR B;
        END IF;
    ---------------------------------
        IF A=B
            THEN ZERO<='1';
        ELSE
            ZERO<='0';
        END IF;
    ---------------------------------
    END PROCESS;


end Behavioral;

