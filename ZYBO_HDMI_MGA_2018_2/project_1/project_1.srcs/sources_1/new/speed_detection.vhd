----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2025 09:32:02 PM
-- Design Name: 
-- Module Name: speed_detection - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity speed_detection is
    Port ( 
        -- in
        clk         : in STD_LOGIC;
        rst         : in STD_LOGIC; 
        grid_in     : in std_logic_vector(7 downto 0);
        -- out
        speed_out   : out std_logic_vector(7 downto 0);  
        speed_valid : out std_logic
    );
end speed_detection;

architecture Behavioral of speed_detection is
    alias digit_in : std_logic_vector(6 downto 0) is grid_in(6 downto 0);
    alias is_not_valid : std_logic is grid_in(7);
    
    signal debug_speed : std_logic_vector(7 downto 0);
    
begin

    process(clk, rst, digit_in)
    begin
    
        if rst = '1' then
            speed_out <= (others => '0');
            speed_valid <= '0';
            
        elsif rising_edge(clk) then
            debug_speed <= (others => '0');
            if (is_not_valid = '0') then
                -- Detect 1
                if( digit_in = "0100100" ) then
                    speed_out <= x"0A";
                    speed_valid <= '1';
                    debug_speed(0) <= '1';
                -- Detect 2
                elsif ( digit_in = "1011101" ) then
                    speed_out <= x"14";
                    speed_valid <= '1';
                    debug_speed(1) <= '1';
                -- Detect 3
                elsif ( digit_in = "1101101" ) then
                    speed_out <= x"1E";
                    speed_valid <= '1';
                    debug_speed(2) <= '1';
                -- Detect 4
                elsif ( digit_in = "1101110" ) then
                    speed_out <= x"28";
                    speed_valid <= '1';
                    debug_speed(3) <= '1';
                -- Detect 5
                elsif ( digit_in = "1101011" ) then
                    speed_out <= x"32";
                    speed_valid <= '1';
                    debug_speed(4) <= '1';
                -- Detect 6
                elsif ( digit_in = "1111011" ) then
                    speed_out <= x"3C";
                    speed_valid <= '1';
                    debug_speed(5) <= '1';
                -- Detect 7
                elsif ( digit_in = "0100101" ) then
                    speed_out <= x"46";
                    speed_valid <= '1';
                    debug_speed(6) <= '1';
                -- Detect 8
                elsif ( digit_in = "1111111" ) then
                    speed_out <= x"50";
                    speed_valid <= '1';
                    debug_speed(7) <= '1';
                -- Detect 9
                elsif ( digit_in = "0101111" ) then
                    speed_out <= x"5A";
                    speed_valid <= '1';
                else
                    speed_valid <= '0';
                end if;
            else
                speed_valid <= '0';
            end if;
        end if;
        
    end process;

end Behavioral;
