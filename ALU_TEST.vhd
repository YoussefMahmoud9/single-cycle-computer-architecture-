
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY ALU_TEST IS
END ALU_TEST;
 
ARCHITECTURE behavior OF ALU_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         SEL : IN  std_logic_vector(3 downto 0);
         RES : OUT  std_logic_vector(31 downto 0);
         ZERO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal SEL : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal RES : std_logic_vector(31 downto 0);
   signal ZERO : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          SEL => SEL,
          RES => RES,
          ZERO => ZERO
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
	
	  WAIT FOR 50 ns;
	  
     A<=X"00000001";--1
	  B<=X"00000000";--0
	  SEL<="0000";
	  WAIT FOR 50 ns;
	  
	  SEL<="0001";
	  WAIT FOR 50 ns;
	  
	  SEL<="0010";
	  WAIT FOR 50 ns;
	  
	  SEL<="0110";
	  WAIT FOR 50 ns;
	  
	  SEL<="0111";
	  WAIT FOR 50 ns;
	  
	  SEL<="1100";
	  WAIT FOR 50 ns;
	  
	  
	  
	  
	  
	  
     

      -- insert stimulus here 

      wait;
   end process;

END;
