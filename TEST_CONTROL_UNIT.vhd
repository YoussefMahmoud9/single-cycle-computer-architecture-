--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:34:40 03/16/2022
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Youssef_project/Youssef_project/Joe/TEST_CONTROL_UNIT.vhd
-- Project Name:  Joe
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Control_unit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_CONTROL_UNIT IS
END TEST_CONTROL_UNIT;
 
ARCHITECTURE behavior OF TEST_CONTROL_UNIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_unit
    PORT(
         OP_INPUT : IN  std_logic_vector(5 downto 0);
         OP_OUTPUT : OUT  std_logic_vector(1 downto 0);
         REGDUST : OUT  std_logic;
         ALUSRC : OUT  std_logic;
         MEMTOREG : OUT  std_logic;
         REGWRITE : OUT  std_logic;
         MEMREAD : OUT  std_logic;
         MEMWRITE : OUT  std_logic;
         BRANCH : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal OP_INPUT : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal OP_OUTPUT : std_logic_vector(1 downto 0);
   signal REGDUST : std_logic;
   signal ALUSRC : std_logic;
   signal MEMTOREG : std_logic;
   signal REGWRITE : std_logic;
   signal MEMREAD : std_logic;
   signal MEMWRITE : std_logic;
   signal BRANCH : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_unit PORT MAP (
          OP_INPUT => OP_INPUT,
          OP_OUTPUT => OP_OUTPUT,
          REGDUST => REGDUST,
          ALUSRC => ALUSRC,
          MEMTOREG => MEMTOREG,
          REGWRITE => REGWRITE,
          MEMREAD => MEMREAD,
          MEMWRITE => MEMWRITE,
          BRANCH => BRANCH
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
   OP_INPUT<="000000";
	WAIT FOR 50 NS;
	  OP_INPUT<="100011";
	WAIT FOR 50 NS;
	 OP_INPUT<="101011";
	WAIT FOR 50 NS;
	 OP_INPUT<="000100";
	WAIT FOR 50 NS;

      wait;
   end process;

END;
