
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY SIGN_EXTEND_TEST IS
END SIGN_EXTEND_TEST;
 
ARCHITECTURE behavior OF SIGN_EXTEND_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIGN_EXTEND
    PORT(
         SGNIN : IN  std_logic_vector(15 downto 0);
         SGNOUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SGNIN : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal SGNOUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIGN_EXTEND PORT MAP (
          SGNIN => SGNIN,
          SGNOUT => SGNOUT
        );

   

   -- Stimulus process
   stim_proc: process
   begin	

     SGNIN <= "1010110000100010";
	  
	
      -- hold reset state for 100 ns.
      wait for 500 ns;	
     SGNIN <= "0101100000000010";


      -- insert stimulus here 

      wait;
   end process;

END;
