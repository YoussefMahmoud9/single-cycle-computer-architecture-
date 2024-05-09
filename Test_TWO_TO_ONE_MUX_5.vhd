--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:01:41 04/22/2022
-- Design Name:   
-- Module Name:   E:/TERM 6/ARCH/LAB/sdgfszdgzdsrgzgf/Youssef_project/Youssef_project/Joe/Test_TWO_TO_ONE_MUX_5.vhd
-- Project Name:  Joe
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Two_to_one_mux_5
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
 
ENTITY Test_TWO_TO_ONE_MUX_5 IS
END Test_TWO_TO_ONE_MUX_5;
 
ARCHITECTURE behavior OF Test_TWO_TO_ONE_MUX_5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Two_to_one_mux_5
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         Z : OUT  std_logic_vector(4 downto 0);
         Sel : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');
   signal Sel : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Two_to_one_mux_5 PORT MAP (
          A => A,
          B => B,
          Z => Z,
          Sel => Sel
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

   A<="11100";
	  B<="00000";
	  Sel<='0';
	  wait for 100 ns;	
	  
	  
	  Sel<='1';   

      -- insert stimulus here 

      wait;
   end process;

END;
