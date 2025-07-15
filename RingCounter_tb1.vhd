library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RingCounter_tb1 is
end RingCounter_tb1;

architecture Behavioral of RingCounter_tb1 is

    component RingCounter
        Port (
            clk : in STD_LOGIC;
            clr : in STD_LOGIC;
            q   : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal clk : std_logic := '0';
    signal clr : std_logic := '0';
    signal q   : STD_LOGIC_VECTOR(3 downto 0);  -- Updated to 5 bits

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: RingCounter
        port map (
            clk => clk,
            clr => clr,
            q   => q
        );

    -- Clock process: 10 ns clock period (5 ns high, 5 ns low)
    clock_process : process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin        
        -- Apply asynchronous clear for 20 ns
        clr <= '1';
        wait for 20 ns;
        clr <= '0';

        -- Let the simulation run long enough to see full modulo-26 cycle
        wait for 300 ns;

        -- Optionally stop simulation
        wait;
    end process;

end Behavioral;