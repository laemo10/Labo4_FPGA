----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2025 12:27:21 AM
-- Design Name: 
-- Module Name: gray_scale_reg - Behavioral
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

entity gray_scale_reg is
    Port ( 
        rst, clk, rdy : in std_logic;
        grid_in : in STD_LOGIC_VECTOR(255 downto 0);
        grid_out : out STD_LOGIC_VECTOR(255 downto 0)
    );
end gray_scale_reg;

architecture Behavioral of gray_scale_reg is

begin

process(clk, rdy, rst)
begin 

    if(rst = '1') then
        grid_out <= (others => '0');
    elsif(rising_edge(clk))then
        if (rdy = '1') then
            grid_out <= grid_in;
        end if;
    end if;

end process;

end Behavioral;
