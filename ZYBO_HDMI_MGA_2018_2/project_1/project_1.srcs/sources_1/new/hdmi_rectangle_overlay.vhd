library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hdmi_rectangle_overlay is
    Generic (
        -- Screen resolution 
        H_ACTIVE : integer := 1920;
        V_ACTIVE : integer := 1080;
        -- Rectangle dimensions 
        RECT_WIDTH  : integer := 560;
        RECT_HEIGHT : integer := 720;
        -- Edge thickness in pixels
        EDGE_WIDTH : integer := 4;
        -- Debug Flag 
        ENABLE_DEBUG : boolean := true
    );
    Port (
        clk : in STD_LOGIC;                             -- Pixel clock 
        rst : in STD_LOGIC;                             -- Reset (active high)
        -- Input from DVI2RGB
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

    -- generous counter ranges (must hold across full line)
    signal h_count : integer range 0 to 8191 := 0;
    signal v_count : integer range 0 to 8191 := 0;

    -- rectangle boundaries (centered in active area)
    constant RECT_LEFT   : integer := (H_ACTIVE - RECT_WIDTH) / 2;
    constant RECT_RIGHT  : integer := RECT_LEFT + RECT_WIDTH - 1;
    constant RECT_TOP    : integer := (V_ACTIVE - RECT_HEIGHT) / 2;
    constant RECT_BOTTOM : integer := RECT_TOP + RECT_HEIGHT - 1;
    
    -- debug grid
    constant DEBUG_LEFT   : integer := RECT_LEFT;
    constant DEBUG_RIGHT  : integer := RECT_RIGHT;
    constant DEBUG_TOP    : integer := RECT_TOP - (RECT_HEIGHT * 5 / 18);      -- Smaller value (upper edge)
    constant DEBUG_BOTTOM : integer := RECT_BOTTOM + (RECT_HEIGHT / 18);       -- Larger value (lower edge)
    constant N_ROW        : integer := 4;
    constant N_COLUMN     : integer := 4;
    constant ROW_HEIGHT   : integer := (DEBUG_BOTTOM - DEBUG_TOP) / N_ROW;     -- Positive value
    constant COLUMN_WIDTH : integer := (DEBUG_RIGHT - DEBUG_LEFT) / N_COLUMN;  -- Fixed divisor
    signal is_debug_grid        : std_logic := '0';
    signal is_debug_grid_reg    : std_logic := '0';

    -- sync previous samples for edge detection
    signal hsync_prev : std_logic := '0';
    signal vsync_prev : std_logic := '0';

    -- pipeline registers to align timing
    signal vde_reg    : std_logic := '0';
    signal hsync_reg  : std_logic := '0';
    signal vsync_reg  : std_logic := '0';
    signal rgb_reg    : std_logic_vector(23 downto 0) := (others => '0');

    -- rectangle edge detection signals
    signal is_edge        : std_logic := '0';
    signal is_edge_reg    : std_logic := '0';

    -- color
    constant RED_COLOR : std_logic_vector(23 downto 0) := x"FF0000";

begin

    ----------------------------------------------------------------
    -- Count pixels across the entire line (including blanking)
    -- Use hsync rising edge to reset horizontal counter and advance v_count.
    -- Use vsync rising edge to reset vertical counter.
    ----------------------------------------------------------------
    position_counter : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                h_count    <= 0;
                v_count    <= 0;
                hsync_prev <= '0';
                vsync_prev <= '0';
            else
                -- Mémoriser les valeurs précédentes des syncs
                hsync_prev <= hsync_in;
                vsync_prev <= vsync_in;
                
                -- Détection du front montant de vsync = début de nouvelle frame
                if (vsync_in = '1' and vsync_prev = '0') then
                    v_count <= 0;
                    h_count <= 0;
                
                -- Détection du front montant de hsync = nouvelle ligne
                elsif (hsync_in = '1' and hsync_prev = '0') then
                    h_count <= 0;
                    -- Incrémenter v_count seulement si on est dans la zone active verticale
                    if v_count < V_ACTIVE - 1 then
                        v_count <= v_count + 1;
                    end if;
                
                -- Pendant les pixels actifs, compter horizontalement
                elsif vde_in = '1' then
                    if h_count < H_ACTIVE - 1 then
                        h_count <= h_count + 1;
                    end if;
                end if;
                
            end if;
        end if;
    end process;

    ----------------------------------------------------------------
    -- Detect rectangle edge
    ----------------------------------------------------------------
    rectangle_detect : process(h_count, v_count)
    begin
        -- left edge
        if (h_count >= RECT_LEFT and h_count < RECT_LEFT + EDGE_WIDTH) and
           (v_count >= RECT_TOP and v_count <= RECT_BOTTOM) then
            is_edge <= '1';
        -- right edge
        elsif (h_count <= RECT_RIGHT and h_count > RECT_RIGHT - EDGE_WIDTH) and
           (v_count >= RECT_TOP and v_count <= RECT_BOTTOM) then
            is_edge <= '1';
        -- top edge
        elsif (v_count >= RECT_TOP and v_count < RECT_TOP + EDGE_WIDTH) and
           (h_count >= RECT_LEFT and h_count <= RECT_RIGHT) then
            is_edge <= '1';
        -- bottom edge
        elsif (v_count <= RECT_BOTTOM and v_count > RECT_BOTTOM - EDGE_WIDTH) and
           (h_count >= RECT_LEFT and h_count <= RECT_RIGHT) then
            is_edge <= '1';
        else
            is_edge <= '0';
        end if;
        
        if (ENABLE_DEBUG) then 
            is_debug_grid <= '0';  -- default value
            
            -- Vertical lines
            for i in 0 to N_COLUMN-1 loop
                if (h_count >= (DEBUG_LEFT + i * COLUMN_WIDTH) and 
                    h_count < (DEBUG_LEFT + i * COLUMN_WIDTH + EDGE_WIDTH) and
                    v_count >= DEBUG_TOP and v_count <= DEBUG_BOTTOM) then
                    is_debug_grid <= '1'; 
                end if;
            end loop;
            
            -- Horizontal lines
            for i in 0 to N_ROW-1 loop
                if (v_count >= (DEBUG_TOP + i * ROW_HEIGHT) and 
                    v_count < (DEBUG_TOP + i * ROW_HEIGHT + EDGE_WIDTH) and
                    h_count >= DEBUG_LEFT and h_count <= DEBUG_RIGHT) then
                    is_debug_grid <= '1';
                end if;
            end loop;
        end if;
       
    end process;
    
    ----------------------------------------------------------------
    -- Pipeline the incoming signals (1-cycle)
    ----------------------------------------------------------------
    pipeline_stage : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                vde_reg    <= '0';
                hsync_reg  <= '0';
                vsync_reg  <= '0';
                rgb_reg    <= (others => '0');
                is_edge_reg <= '0';
                
                if (ENABLE_DEBUG) then 
                    is_debug_grid <= '0';
                end if;
            else
                vde_reg    <= vde_in;
                hsync_reg  <= hsync_in;
                vsync_reg  <= vsync_in;
                rgb_reg    <= rgb_in;
                is_edge_reg <= is_edge;
                
                if (ENABLE_DEBUG) then 
                    is_debug_grid_reg <= is_debug_grid;
                end if;
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

                if (is_edge_reg = '1') and (vde_reg = '1') then
                    rgb_out <= RED_COLOR;
                else
                    if (ENABLE_DEBUG) then 
                        if (is_debug_grid_reg = '1') and (vde_reg = '1') then
                            rgb_out <= RED_COLOR;
                        else
                            rgb_out <= rgb_reg;
                        end if;
                    else
                        rgb_out <= rgb_reg;
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
