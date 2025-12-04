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
        digit_in : in std_logic_vector(6 downto 0);
        -- out         
        out0, out1, out2, out3, out4, out5, out6 : out std_logic
    );
end speed_detection;

architecture Behavioral of speed_detection is

begin

out0 <= digit_in(0);
out1 <= digit_in(1);
out2 <= digit_in(2);
out3 <= digit_in(3);
out4 <= digit_in(4);
out5 <= digit_in(5);
out6 <= digit_in(6);

end Behavioral;
