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
use IEEE.NUMERIC_STD.ALL;

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
        flaten_gray_in : in STD_LOGIC_VECTOR((ROWS * COLS * 8) - 1 downto 0);
        flaten_gray_out : out STD_LOGIC_VECTOR((ROWS * COLS * 8) - 1 downto 0);
        
        out0, out1, out2, out3, out4, out5, out6, out7 : out std_logic
    );
end gray_scale_reg;

architecture Behavioral of gray_scale_reg is
    signal flaten_gray_sig : STD_LOGIC_VECTOR((ROWS * COLS * 8) - 1 downto 0) := (others => '0');
begin

process(clk)
    -- On crée un buffer pour ne pas toucher au signal vidéo direct
    variable v_buffer_gray : std_logic_vector((ROWS * COLS * 8) - 1 downto 0);
begin 
    if (rst = '1') then
        
    elsif (rising_edge(clk)) then
    
        if (rdy = '1') then
            -- ÉTAPE 1 : ISOLATION (PIPELINE)
            v_buffer_gray := flaten_gray_in; 
           
            
            -- Segment A
            if (unsigned(v_buffer_gray(15 downto 8)) > x"C0") then
                out0 <= '1';
            else 
                out0 <= '0';
            end if;
            
            -- Segment B
            if (unsigned(v_buffer_gray(47 downto 40)) > x"C0") then
                out1 <= '1';
            else 
                out1 <= '0';
            end if;
            
            -- Segment C
            if (unsigned(v_buffer_gray(95 downto 88)) > x"C0") then
                out2 <= '1';
            else 
                out2 <= '0';
            end if;
            
            -- Segment D
            if (unsigned(v_buffer_gray(111 downto 104)) > x"C0") then
                out3 <= '1';
            else 
                out3 <= '0';
            end if;
            
            -- Segment E
            if (unsigned(v_buffer_gray(79 downto 72)) > x"C0") then
                out4 <= '1';
            else 
                out4 <= '0';
            end if;
            
            -- Segment F
            if (unsigned(v_buffer_gray(31 downto 24)) > x"C0") then
                out5 <= '1';
            else 
                out5 <= '0';
            end if;
            
            -- Segment G
            if (unsigned(v_buffer_gray(63 downto 56)) > x"C0") then
                out6 <= '1';
            else 
                out6 <= '0';
            end if;
            
        end if;
    end if;
end process;

end Behavioral;
