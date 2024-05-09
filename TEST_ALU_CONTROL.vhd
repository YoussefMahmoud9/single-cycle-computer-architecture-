--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:40:15 03/09/2022
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Youssef_project/Youssef_project/Joe/TEST_ALU_CONTROL.vhd
-- Project Name:  Joe
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_CONTROL
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
 
ENTITY TEST_ALU_CONTROL IS
END TEST_ALU_CONTROL;
 
ARCHITECTURE behavior OF TEST_ALU_CONTROL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_CONTROL
    PORT(
         OP : IN  std_logic_vector(1 downto 0);
         FF : IN  std_logic_vector(5 downto 0);
         CONTROL : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal FF : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal CONTROL : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_CONTROL PORT MAP (
          OP => OP,
          FF => FF,
          CONTROL => CONTROL
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
     
	  OP<="00";
	  WAIT FOR 50 NS;
	  
	   OP<="01";
	  WAIT FOR 50 NS;
	  
	   OP<="10";
		FF<="000000";
	  WAIT FOR 50 NS;
	  
	  OP<="10";
	  FF<="000010";
	  WAIT FOR 50 NS;
	  
	    OP<="11";
	  FF<="000010";
	  WAIT FOR 50 NS;
	  
	  OP<="10";
		FF<="000100";
	  WAIT FOR 50 NS;
	  
	  OP<="10";
		FF<="000101";
	  WAIT FOR 50 NS;
	  
	  OP<="10";
		FF<="001010";
	  WAIT FOR 50 NS;
	  
	  	  OP<="11";
		FF<="001010";
	  WAIT FOR 50 NS;

      wait;
   end process;

END;
