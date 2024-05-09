
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY TEST_PC IS
END TEST_PC;
 
ARCHITECTURE behavior OF TEST_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         INPUT_PC : IN  std_logic_vector(31 downto 0);
         OUTPUT_PC : OUT  std_logic_vector(31 downto 0);
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUTPUT_PC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          INPUT_PC => INPUT_PC,
          OUTPUT_PC => OUTPUT_PC,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin			
      wait for CLK_period*10;

      -- insert stimulus here 
INPUT_PC <= X"00000000";
WAIT FOR 100 NS ;
INPUT_PC <= X"12345678";
wait for 100 ns;
      wait;
   end process;

END;
