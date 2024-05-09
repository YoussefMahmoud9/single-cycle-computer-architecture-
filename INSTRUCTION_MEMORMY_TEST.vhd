
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY INSTRUCTION_MEMORMY_TEST IS
END INSTRUCTION_MEMORMY_TEST;
 
ARCHITECTURE behavior OF INSTRUCTION_MEMORMY_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT INSTRUCTION_MEMORY
    PORT(
         READ_ADDRESS : IN  std_logic_vector(31 downto 0);
         INS : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal READ_ADDRESS : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal INS : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: INSTRUCTION_MEMORY PORT MAP (
          READ_ADDRESS => READ_ADDRESS,
          INS => INS
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
  
      READ_ADDRESS<=X"00000000";
		WAIT FOR 100 NS;
		      READ_ADDRESS<=X"00000004";
		WAIT FOR 100 NS;


      -- insert stimulus here 

      wait;
   end process;

END;
