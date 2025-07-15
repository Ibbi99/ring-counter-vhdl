----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2020 02:15:12
-- Design Name: 
-- Module Name: RingCounter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2020 02:15:12
-- Design Name: 
-- Module Name: RingCounter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2020 02:15:12
-- Design Name: 
-- Module Name: RingCounter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For arithmetic operations

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RingCounter is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end RingCounter;

architecture Behavioral of RingCounter is
signal count : UNSIGNED(3 downto 0);  -- 4-bit counter
begin
process(clk, clr)
    begin
        if clr = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            if count = 11 then  -- Reset after reaching 11
                count <= (others => '0');
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    q <= STD_LOGIC_VECTOR(count);  -- Output as std_logic_vector
end Behavioral;


