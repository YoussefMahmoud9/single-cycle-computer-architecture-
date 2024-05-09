--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:46 02/23/2022
-- Design Name:   
-- Module Name:   C:/Youssef_project/Joe/TEST_TWO_TO_MUX_32.vhd
-- Project Name:  Joe
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Two_to_one_mux_32
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
 
ENTITY TEST_TWO_TO_MUX_32 IS
END TEST_TWO_TO_MUX_32;
 
ARCHITECTURE behavior OF TEST_TWO_TO_MUX_32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Two_to_one_mux_32
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Z : OUT  std_logic_vector(31 downto 0);
         Sel : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Sel : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Two_to_one_mux_32 PORT MAP (
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

   A<=X"FFFFFFFF";
	  B<=X"00000000";
	  Sel<='0';
	  wait for 100 ns;	
	  
	  
	  Sel<='1';   

      -- insert stimulus here 

      wait;
   end process;

END;
