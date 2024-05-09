
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity PROCESSER is
    Port ( CLK : in  STD_LOGIC);
end PROCESSER;




architecture Behavioral of PROCESSER is
---------------------------------------

signal new_pc,WData,after_pc,a,tmp , RData1 ,RData2 ,	 ins,read_addrs , jadd ,data_out_shl , alu_result_shl ,mux_one_output,Rdata_out ,mux_three_output ,res  ,SGNOUT: STD_LOGIC_VECTOR (31 downto 0);
signal OP_OUTPUT : STD_LOGIC_VECTOR (1 DOWNTO 0);


signal slct , zero,													REGDUST,
													ALUSRC,
													MEMTOREG,
													REGWRITE,
													MEMREAD,
													MEMWRITE,
													BRANCH,
													JUMP : STD_LOGIC ; 


component PC is
    Port ( INPUT_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT_PC : out  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC);
end component;



component FULL_ADDER is
    Port ( INONE : in  STD_LOGIC_VECTOR (31 downto 0);
           INTWO : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--component INSTRUCTION_MEMORY is
  --   Port ( READ_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
    --       INS : out  STD_LOGIC_VECTOR (31 downto 0);
		--	  CLK : in STD_LOGIC);
--end component;

component SHIFT_LEFT_EXT_2 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (25 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (27 downto 0));
end component;

component Control_unit is
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
end component;



component RegFile is
    Port ( RReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WData : in  STD_LOGIC_VECTOR (31 downto 0);
           RData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  CLK : in STD_LOGIC);
end component;
--signal RReg1 ,RReg2 , WReg, WData ,  RData1 ,RData2 ,RegWrite ;


component SIGN_EXTEND is
    Port ( SGNIN : in  STD_LOGIC_VECTOR (15 downto 0);
           SGNOUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SHIFT_LEFT_2 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU_CONTROL is
    Port ( OP : in  STD_LOGIC_VECTOR (1 downto 0);
           FF : in  STD_LOGIC_VECTOR (5 downto 0);
           CONTROL : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal control : STD_LOGIC_VECTOR (3 downto 0);

component Two_to_one_mux_32 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC);
end component;

component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           SEL : in  STD_LOGIC_VECTOR (3 downto 0);
           RES : out  STD_LOGIC_VECTOR (31 downto 0);
           ZERO : out  STD_LOGIC);
end component;

component DATA_MEMOMRY is
    Port ( CLK : in  STD_LOGIC;
           ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           WDATA : in  STD_LOGIC_VECTOR (31 downto 0);
           MemR : in  STD_LOGIC;
           MemW : in  STD_LOGIC;
           RData : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Two_to_one_mux_5 is
Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Z : out  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC);
end component;
signal mux_fivebits_out , RReg1 ,RReg2 , WReg :  STD_LOGIC_VECTOR (4 downto 0);
component InstructionMemory is
    Port ( ReadAddress : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC);
end component;
---------------------
begin
slct <= BRANCH and zero;

mux_five : Two_to_one_mux_5 port map (ins(20 downto 16),
												  ins(15 downto 11),
												  mux_fivebits_out,REGDUST);

pc_count : PC port map (new_pc,
								after_pc,
								CLK);--

add_adder : FULL_ADDER port map (after_pc,
											X"00000004",
											tmp);--

ins_memory : InstructionMemory port map (after_pc,
														ins(31 downto 0),
														CLK);--

shl_ext : SHIFT_LEFT_EXT_2 port map (ins(25 downto 0) ,
												DATA_OUT=>jadd (27 downto 0));--
												
												
												
jadd(31 downto 28)<= tmp(31 downto 28);--

reg : RegFile port map (ins(25 downto 21) ,
								ins(20 downto 16) ,
								mux_fivebits_out ,
								WData ,
								RData1 ,
								RData2 ,
								REGWRITE ,
								CLK);--
																									
sign_extd : SIGN_EXTEND port map (ins(15 downto 0),
												SGNOUT);--

shl : SHIFT_LEFT_2 port map (SGNOUT,
										data_out_shl);--

add_adder_after_shl :FULL_ADDER port map (tmp,
														data_out_shl,
														alu_result_shl);--

alu_control_add : ALU_CONTROL port map(OP_OUTPUT,
													ins(5 downto 0),
													control);--

mux_one : Two_to_one_mux_32 port map(RData2,
												SGNOUT,
												mux_one_output,
												ALUSRC);--

alu_alu : ALU port map(RData1,
								mux_one_output,
								control,
								res,
								zero);--

data_memory : DATA_MEMOMRY port map(CLK,
												res,
												RData2,
												MEMREAD,
												MEMWRITE,
												Rdata_out);--

mux_two : Two_to_one_mux_32 port map(res,
												Rdata_out,
												
												WData,
												MEMTOREG);--

mux_three :  Two_to_one_mux_32 port map(tmp,
													alu_result_shl,
													mux_three_output,
													slct);--

mux_four :  Two_to_one_mux_32 port map(
													mux_three_output,
													jadd,
													new_pc,
													JUMP);--


control_unit_unit : Control_unit port map(ins (31 downto 26),
													OP_OUTPUT,
													REGDUST,
													ALUSRC,
													MEMTOREG,
													REGWRITE,
													MEMREAD,
													MEMWRITE,
													BRANCH,
													JUMP); --



 


end Behavioral;

