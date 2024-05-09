--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:20:39 03/30/2022
-- Design Name:   
-- Module Name:   D:/Youssef_project/Youssef_project/Joe/RegFile_TEST.vhd
-- Project Name:  Joe
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegFile
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
 
ENTITY RegFile_TEST IS
END RegFile_TEST;
 
ARCHITECTURE behavior OF RegFile_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegFile
    PORT(
         RReg1 : IN  std_logic_vector(4 downto 0);
         RReg2 : IN  std_logic_vector(4 downto 0);
         WReg : IN  std_logic_vector(4 downto 0);
         WData : IN  std_logic_vector(31 downto 0);
         RData1 : OUT  std_logic_vector(31 downto 0);
         RData2 : OUT  std_logic_vector(31 downto 0);
         RegWrite : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RReg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal RReg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal WReg : std_logic_vector(4 downto 0) := (others => '0');
   signal WData : std_logic_vector(31 downto 0) := (others => '0');
   signal RegWrite : std_logic := '0';

 	--Outputs
   signal RData1 : std_logic_vector(31 downto 0);
   signal RData2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegFile PORT MAP (
          RReg1 => RReg1,
          RReg2 => RReg2,
          WReg => WReg,
          WData => WData,
          RData1 => RData1,
          RData2 => RData2,
          RegWrite => RegWrite
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
     
	  RReg1<="00000";
	  RReg1<="11111";
	  
	  wait for 100 ns;
	  
	  RegWrite<='1';
	  WReg<="00000";
	  WData<=X"11111111";
	   RegWrite<='1';
	  
      

       

      wait;
   end process;

END;
