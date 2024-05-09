
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY DATA_MEMORMY_TEST IS
END DATA_MEMORMY_TEST;
 
ARCHITECTURE behavior OF DATA_MEMORMY_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DATA_MEMOMRY
    PORT(
         CLK : IN  std_logic;
         ADDRESS : IN  std_logic_vector(31 downto 0);
         WDATA : IN  std_logic_vector(31 downto 0);
         MemR : IN  std_logic;
         MemW : IN  std_logic;
         RData : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal ADDRESS : std_logic_vector(31 downto 0) := (others => '0');
   signal WDATA : std_logic_vector(31 downto 0) := (others => '0');
   signal MemR : std_logic := '0';
   signal MemW : std_logic := '0';

 	--Outputs
   signal RData : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DATA_MEMOMRY PORT MAP (
          CLK => CLK,
          ADDRESS => ADDRESS,
          WDATA => WDATA,
          MemR => MemR,
          MemW => MemW,
          RData => RData
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		 ADDRESS <= X"00000000";
          WDATA <= X"AAAAAAAA";
          MemR <= '1';
          MemW <= '0';
			 wait for 100 ns;
           ADDRESS <=X"00000000";
          WDATA <= X"AAAAAAAA";
          MemR <= '0';
          MemW <= '1';
			 

      wait;
   end process;

END;
