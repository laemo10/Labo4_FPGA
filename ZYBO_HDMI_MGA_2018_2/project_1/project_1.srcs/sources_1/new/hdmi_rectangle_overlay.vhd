library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.matrix_pkg.all;

entity hdmi_rectangle_overlay is
    Port (
        clk : in STD_LOGIC;  -- Pixel clock 
        rst : in STD_LOGIC;  -- Reset (active high)
        -- Input from DVI2RGB
        h_count : in std_logic_vector(31 downto 0);
        v_count : in std_logic_vector(31 downto 0);
        vde_in    : in STD_LOGIC;
        hsync_in  : in STD_LOGIC;
        vsync_in  : in STD_LOGIC;
        rgb_in    : in STD_LOGIC_VECTOR(23 downto 0);   
        -- Outputs
        vde_out   : out STD_LOGIC;
        hsync_out : out STD_LOGIC;
        vsync_out : out STD_LOGIC;
        rgb_out   : out STD_LOGIC_VECTOR(23 downto 0)
    );
end hdmi_rectangle_overlay;

architecture Behavioral of hdmi_rectangle_overlay is
    
    -- unsigned counters
    signal h_count_u : unsigned(31 downto 0) := (others => '0');
    signal v_count_u : unsigned(31 downto 0) := (others => '0');

    -- sync previous samples for edge detection
    signal hsync_prev : std_logic := '0';
    signal vsync_prev : std_logic := '0';
    signal vde_prev : std_logic := '0';
    signal v_started : boolean := false;

    -- pipeline registers to align timing
    signal vde_reg    : std_logic := '0';
    signal hsync_reg  : std_logic := '0';
    signal vsync_reg  : std_logic := '0';
    signal rgb_reg    : std_logic_vector(23 downto 0) := (others => '0');

    -- rectangle edge detection signals
    signal is_edge              : std_logic := '0';
    signal is_edge_reg          : std_logic := '0';
    signal is_logic_grid        : std_logic := '0';
    signal is_logic_grid_reg    : std_logic := '0';

    -- color
    constant RED_COLOR : std_logic_vector(23 downto 0) := x"FF0000";
    constant GREEN_COLOR : std_logic_vector(23 downto 0) := x"0000FF";

begin
    
    -- Transform vector to unsigned
    h_count_u <= unsigned(h_count);
    v_count_u <= unsigned(v_count);
    
    ----------------------------------------------------------------
    -- Detect rectangle edge
    ----------------------------------------------------------------
    rectangle_detect : process(h_count_u, v_count_u)
    begin
        -- left edge
        if (h_count_u >= RECT_LEFT and h_count_u < RECT_LEFT + EDGE_WIDTH) and
           (v_count_u >= RECT_TOP and v_count_u <= RECT_BOTTOM) then
            is_edge <= '1';
        -- right edge
        elsif (h_count_u <= RECT_RIGHT and h_count_u > RECT_RIGHT - EDGE_WIDTH) and
           (v_count_u >= RECT_TOP and v_count_u <= RECT_BOTTOM) then
            is_edge <= '1';
        -- top edge
        elsif (v_count_u >= RECT_TOP and v_count_u < RECT_TOP + EDGE_WIDTH) and
           (h_count_u >= RECT_LEFT and h_count_u <= RECT_RIGHT) then
            is_edge <= '1';
        -- bottom edge
        elsif (v_count_u <= RECT_BOTTOM and v_count_u > RECT_BOTTOM - EDGE_WIDTH) and
           (h_count_u >= RECT_LEFT and h_count_u <= RECT_RIGHT) then
            is_edge <= '1';
        else
            is_edge <= '0';
        end if;
    end process;
    
    grid_detect : process(h_count_u, v_count_u)
    variable rel_x, rel_y : unsigned(31 downto 0) := (others => '0');
    begin
        -- V1
        if (h_count_u >= GRID_V_1 and h_count_u < GRID_V_1 + EDGE_WIDTH) and
           (v_count_u >= GRID_H_1 and v_count_u <= GRID_H_6) then
            is_logic_grid <= '1';
        -- V2
        elsif (h_count_u >= GRID_V_2 and h_count_u < GRID_V_2 + EDGE_WIDTH) and
           (v_count_u >= GRID_H_1 and v_count_u <= GRID_H_6) then
            is_logic_grid <= '1';
        -- V3
        elsif (h_count_u >= GRID_V_3 and h_count_u < GRID_V_3 + EDGE_WIDTH) and
           (v_count_u >= GRID_H_1 and v_count_u <= GRID_H_6) then
            is_logic_grid <= '1';
        -- V4
        elsif (h_count_u >= GRID_V_4 and h_count_u < GRID_V_4 + EDGE_WIDTH) and
           (v_count_u >= GRID_H_1 and v_count_u <= GRID_H_6) then
            is_logic_grid <= '1';
        -- H1
        elsif (v_count_u >= GRID_H_1 and v_count_u < GRID_H_1 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        -- H2
        elsif (v_count_u >= GRID_H_2 and v_count_u < GRID_H_2 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        -- H3
        elsif (v_count_u >= GRID_H_3 and v_count_u < GRID_H_3 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        -- H4
        elsif (v_count_u >= GRID_H_4 and v_count_u < GRID_H_4 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        -- H5
        elsif (v_count_u >= GRID_H_5 and v_count_u < GRID_H_5 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        -- H6
        elsif (v_count_u >= GRID_H_6 and v_count_u < GRID_H_6 + EDGE_WIDTH) and
           (h_count_u >= GRID_V_1 and h_count_u <= GRID_V_4) then
            is_logic_grid <= '1';
        else
            is_logic_grid <= '0';
        end if;
     end process;
    
    ----------------------------------------------------------------
    -- Pipeline the incoming signals (1-cycle)
    ----------------------------------------------------------------
    pipeline_stage : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                vde_reg             <= '0';
                hsync_reg           <= '0';
                vsync_reg           <= '0';
                rgb_reg             <= (others => '0');
                is_edge_reg         <= '0';
                is_logic_grid_reg   <= '0';
            else
                vde_reg             <= vde_in;
                hsync_reg           <= hsync_in;
                vsync_reg           <= vsync_in;
                rgb_reg             <= rgb_in;
                is_edge_reg         <= is_edge;
                is_logic_grid_reg   <= is_logic_grid;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------
    -- Forward the pixel to output and modify if needed
    ----------------------------------------------------------------
    output_mux : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                vde_out   <= '0';
                hsync_out <= '0';
                vsync_out <= '0';
                rgb_out   <= (others => '0');
            else
                -- pass-through syncs (pipelined)
                vde_out   <= vde_reg;
                hsync_out <= hsync_reg;
                vsync_out <= vsync_reg;
                
                -- -- pass-through color (pipelined)
                if (is_edge_reg = '1') and (vde_reg = '1') then
                    rgb_out <= RED_COLOR;
                elsif (is_logic_grid_reg = '1') and (vde_reg = '1') then
                    rgb_out <= GREEN_COLOR;
                else
                    rgb_out <= rgb_reg;
                end if;
                
            end if;
        end if;
    end process;

end Behavioral;
