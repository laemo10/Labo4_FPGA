----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2025 11:59:27 PM
-- Design Name: 
-- Module Name: matrix_pkg - Behavioral
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

package matrix_pkg is
    -- Screen dimensions 
    constant H_ACTIVE : integer := 1600;
    constant V_ACTIVE : integer := 900;  
    
    -- Rectangle dimensions 
    constant RECT_WIDTH  : integer := 560;
    constant RECT_HEIGHT : integer := 720;
    
    -- rectangle boundaries 
    constant RECT_LEFT   : integer := 520;
    constant RECT_RIGHT  : integer := 1080;
    constant RECT_TOP    : integer := 90;
    constant RECT_BOTTOM : integer := 810;
    
    -- Edge thickness in pixels
    constant EDGE_WIDTH : integer := 4;
    
    -- Logic grid
    constant GRID_H_1 : integer := RECT_TOP + 300;
    constant GRID_H_2 : integer := RECT_TOP + 350;
    constant GRID_H_3 : integer := RECT_TOP + 411;
    constant GRID_H_4 : integer := RECT_TOP + 463;
    constant GRID_H_5 : integer := RECT_TOP + 522;
    constant GRID_H_6 : integer := RECT_TOP + 572;
    constant GRID_V_1 : integer := RECT_LEFT + 83;
    constant GRID_V_2 : integer := RECT_LEFT + 133;
    constant GRID_V_3 : integer := RECT_LEFT + 198;
    constant GRID_V_4 : integer := RECT_LEFT + 248;
    constant ROWS : integer := 5;
    constant COLS : integer := 3;
    
    -- Probe point
    constant CELL_1_P_1_H  : integer := RECT_TOP + 312;
    constant CELL_1_P_1_V  : integer := RECT_LEFT + 166;
    constant CELL_1_P_2_H  : integer := RECT_TOP + 324;
    constant CELL_1_P_2_V  : integer := RECT_LEFT + 166;
    constant CELL_1_P_3_H  : integer := RECT_TOP + 336;
    constant CELL_1_P_3_V  : integer := RECT_LEFT + 166;
    
    constant CELL_2_P_1_H  : integer := RECT_TOP + 380;
    constant CELL_2_P_1_V  : integer := RECT_LEFT + 95;
    constant CELL_2_P_2_H  : integer := RECT_TOP + 380;
    constant CELL_2_P_2_V  : integer := RECT_LEFT + 108;
    constant CELL_2_P_3_H  : integer := RECT_TOP + 380;
    constant CELL_2_P_3_V  : integer := RECT_LEFT + 120;
    
    constant CELL_3_P_1_H  : integer := RECT_TOP + 380;
    constant CELL_3_P_1_V  : integer := RECT_LEFT + 210;
    constant CELL_3_P_2_H  : integer := RECT_TOP + 380;
    constant CELL_3_P_2_V  : integer := RECT_LEFT + 223;
    constant CELL_3_P_3_H  : integer := RECT_TOP + 380;
    constant CELL_3_P_3_V  : integer := RECT_LEFT + 235;
    
    constant CELL_4_P_1_H  : integer := RECT_TOP + 424;
    constant CELL_4_P_1_V  : integer := RECT_LEFT + 166;
    constant CELL_4_P_2_H  : integer := RECT_TOP + 437;
    constant CELL_4_P_2_V  : integer := RECT_LEFT + 166;
    constant CELL_4_P_3_H  : integer := RECT_TOP + 450;
    constant CELL_4_P_3_V  : integer := RECT_LEFT + 166;
    
    constant CELL_5_P_1_H  : integer := RECT_TOP + 493;
    constant CELL_5_P_1_V  : integer := RECT_LEFT + 95;
    constant CELL_5_P_2_H  : integer := RECT_TOP + 493;
    constant CELL_5_P_2_V  : integer := RECT_LEFT + 108;
    constant CELL_5_P_3_H  : integer := RECT_TOP + 493;
    constant CELL_5_P_3_V  : integer := RECT_LEFT + 120;
    
    constant CELL_6_P_1_H  : integer := RECT_TOP + 493;
    constant CELL_6_P_1_V  : integer := RECT_LEFT + 210;
    constant CELL_6_P_2_H  : integer := RECT_TOP + 493;
    constant CELL_6_P_2_V  : integer := RECT_LEFT + 223;
    constant CELL_6_P_3_H  : integer := RECT_TOP + 493;
    constant CELL_6_P_3_V  : integer := RECT_LEFT + 235;
    
    constant CELL_7_P_1_H  : integer := RECT_TOP + 534;
    constant CELL_7_P_1_V  : integer := RECT_LEFT + 166;
    constant CELL_7_P_2_H  : integer := RECT_TOP + 546;
    constant CELL_7_P_2_V  : integer := RECT_LEFT + 166;
    constant CELL_7_P_3_H  : integer := RECT_TOP + 558;
    constant CELL_7_P_3_V  : integer := RECT_LEFT + 166;

    
    -- Total bits for the flattened output
    constant FLATTENED_WIDTH : integer := ROWS * COLS * 8;
    
    -- Types pour les tableaux
    type t_sum_array is array (0 to ROWS-1, 0 to COLS-1) of unsigned(31 downto 0);
    type t_count_array is array (0 to ROWS-1, 0 to COLS-1) of unsigned(15 downto 0);
    type t_mean_array is array (0 to ROWS-1, 0 to COLS-1) of unsigned(7 downto 0);
    
end package matrix_pkg;
