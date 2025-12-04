library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.matrix_pkg.all;

entity hdmi_digit_to_grey is
    Port (
        clk             : in STD_LOGIC; -- Pixel clock 
        rst             : in STD_LOGIC; -- Reset (active high)
        
        -- Input 
        h_count         : in std_logic_vector(31 downto 0);
        v_count         : in std_logic_vector(31 downto 0);
        vde_in          : in STD_LOGIC;
        hsync_in        : in STD_LOGIC;
        vsync_in        : in STD_LOGIC;
        rgb_in          : in STD_LOGIC_VECTOR(23 downto 0);
        
        -- Final Output 
        valid_pixel     : out STD_LOGIC;
        current_row     : out std_logic_vector(7 downto 0);
        current_column  : out std_logic_vector(7 downto 0);
        pixel_value     : out std_logic_vector(7 downto 0);
        end_of_frame    : out STD_LOGIC
    );
end hdmi_digit_to_grey;

architecture Behavioral of hdmi_digit_to_grey is          

    -- Unsigned counters
    signal h_count_u : unsigned(31 downto 0) := (others => '0');
    signal v_count_u : unsigned(31 downto 0) := (others => '0');

    -- Grid Tracking Signals
    signal pixel_in_grid : std_logic := '0';
    signal grid_i, grid_j : unsigned(7 downto 0) := (others => '0');
    
    -- Register
    signal pixel_in_grid_reg : std_logic := '0';
    signal grid_i_reg, grid_j_reg : unsigned(7 downto 0) := (others => '0');
    signal grey_value_reg : unsigned(7 downto 0) := (others => '0');
    signal vSync_reg : std_logic := '0';
    signal is_valid_pixel : std_logic := '0';
    
    -- Gray Scale Converter
    signal r_byte, g_byte, b_byte : unsigned(7 downto 0);
    
    -- Matrix
    signal grid_sums   : t_sum_array;
    signal grid_counts : t_count_array;

begin

    -- Transform vector to unsigned
    h_count_u <= unsigned(h_count);
    v_count_u <= unsigned(v_count);

    ----------------------------------------------------------------
    -- 1. Grid Coordinate Logic 
    ----------------------------------------------------------------
    grid_i_position_finder : process(h_count_u, v_count_u)
    begin
        if (v_count_u >= GRID_H_1 and v_count_u < GRID_H_2) and 
           (h_count_u >= GRID_V_1  and h_count_u < GRID_V_4) then
            grid_i <= x"00";
        elsif (v_count_u >= GRID_H_2 and v_count_u < GRID_H_3) and 
           (h_count_u >= GRID_V_1  and h_count_u < GRID_V_4) then
            grid_i <= x"01";
        elsif (v_count_u >= GRID_H_3 and v_count_u < GRID_H_4) and 
           (h_count_u >= GRID_V_1  and h_count_u < GRID_V_4) then
            grid_i <= x"02";
        elsif (v_count_u >= GRID_H_4 and v_count_u < GRID_H_5) and 
           (h_count_u >= GRID_V_1  and h_count_u < GRID_V_4) then
            grid_i <= x"03";
        elsif (v_count_u >= GRID_H_5 and v_count_u < GRID_H_6) and 
           (h_count_u >= GRID_V_1  and h_count_u < GRID_V_4) then
            grid_i <= x"04";
        else
            grid_i <= x"FF";
        end if;
    end process;
    
    grid_j_position_finder : process(h_count_u, v_count_u)
    begin
        if (h_count_u >= GRID_V_1 and h_count_u < GRID_V_2) and 
           (v_count_u >= GRID_H_1  and v_count_u < GRID_H_6) then
            grid_j <= x"00";
        elsif (h_count_u >= GRID_V_2 and h_count_u < GRID_V_3) and 
           (v_count_u >= GRID_H_1  and v_count_u < GRID_H_6) then
            grid_j <= x"01";
        elsif (h_count_u >= GRID_V_3 and h_count_u < GRID_V_4) and 
           (v_count_u >= GRID_H_1  and v_count_u < GRID_H_6) then
            grid_j <= x"02";
        else
            grid_j <= x"FF";
        end if;
    end process;
    
    ----------------------------------------------------------------
    -- 2. Pipeline Logic & Grayscale (CORRIGÉ)
    ----------------------------------------------------------------
    -- Correction de l'ordre des couleurs (RGB Standard : R=23:16, G=15:8, B=7:0)
    r_byte <= unsigned(rgb_in(23 downto 16));
    g_byte <= unsigned(rgb_in(7 downto 0)); 
    b_byte <= unsigned(rgb_in(15 downto 8)); 
    
    pipeline_grid_position : process(clk, rst)
        variable v_r_mult : unsigned(15 downto 0);
        variable v_g_mult : unsigned(15 downto 0);
        variable v_b_mult : unsigned(15 downto 0);
        variable v_sum    : unsigned(15 downto 0);
    begin
        if (rst = '1') then
            is_valid_pixel <= '0';
            grey_value_reg <= (others => '0');
            grid_i_reg     <= (others => '0');
            grid_j_reg     <= (others => '0');
        elsif (rising_edge(clk)) then
        
            -- A. Mise en mémoire des coordonnées
            grid_i_reg <= grid_i;
            grid_j_reg <= grid_j;
            vSync_reg  <= vSync_in;
            
            -- B. Validation du Pixel
            if (grid_i /= x"FF" and grid_j /= x"FF" and vde_in = '1') then
                is_valid_pixel <= '1';
            else 
                is_valid_pixel <= '0';
            end if;
            
            -- C. Calcul du niveau de gris
            v_r_mult := r_byte * 77;
            v_g_mult := g_byte * 150;
            v_b_mult := b_byte * 29;
            v_sum    := v_r_mult + v_g_mult + v_b_mult;
            
            -- On garde les 8 bits de poids fort (division par 256)
            grey_value_reg <= v_sum(15 downto 8);  
        end if;
    end process;
    
    ----------------------------------------------------------------
    -- 3. Output 
    ----------------------------------------------------------------
    end_of_frame    <= vSync_reg;
    valid_pixel     <= is_valid_pixel;
    current_row     <= std_logic_vector(grid_i_reg);
    current_column  <= std_logic_vector(grid_j_reg);
    pixel_value     <= std_logic_vector(grey_value_reg);
   
end Behavioral;