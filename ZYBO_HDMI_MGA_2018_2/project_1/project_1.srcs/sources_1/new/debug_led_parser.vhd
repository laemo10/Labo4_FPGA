----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2025 12:35:09 AM
-- Design Name: 
-- Module Name: debug_led_parser - Behavioral
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

library work;
use work.matrix_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debug_led_parser is
    Port ( 
        -- temp for debuging
        grid_in : in STD_LOGIC_VECTOR(255 downto 0);        
        out0, out1, out2, out3, out4, out5, out6 : out std_logic
    );
end debug_led_parser;

architecture Behavioral of debug_led_parser is

begin

out0 <= grid_in(0);
out1 <= grid_in(1);
out2 <= grid_in(2);
out3 <= grid_in(3);
out4 <= grid_in(4);
out5 <= grid_in(5);
out6 <= grid_in(6);

end Behavioral;
