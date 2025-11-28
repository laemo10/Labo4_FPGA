library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.matrix_pkg.all;

entity hdmi_digit_to_grey is
    Generic (
        -- Screen resolution 
        H_ACTIVE : integer := 1600;
        V_ACTIVE : integer := 900;
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
        -- Final Output 
        matrix_flat_out : out STD_LOGIC_VECTOR(255 downto 0);
        data_ready      : out STD_LOGIC
    );
end hdmi_digit_to_grey;

architecture Behavioral of hdmi_digit_to_grey is

    constant GRID_LEFT    : integer := (H_ACTIVE - RECT_WIDTH) / 2;             
    constant GRID_RIGHT   : integer := GRID_LEFT + RECT_WIDTH; -- Adjusted for simpler logic (< vs <=)
    constant GRID_TOP     : integer := (V_ACTIVE / 2) - ((RECT_HEIGHT * 2) / 9);      
    constant GRID_BOTTOM  : integer := (V_ACTIVE / 2) + ((RECT_HEIGHT * 4) / 9); 
    
    constant N_ROW        : integer := 8;
    constant N_COLUMN     : integer := 4;
    
    -- Integer division for constants is fine (computed at synthesis time)
    constant ROW_HEIGHT   : integer := RECT_HEIGHT / N_ROW;              
    constant COLUMN_WIDTH : integer := RECT_WIDTH / N_COLUMN;            

    -- Position Counters
    signal h_count : integer range 0 to H_ACTIVE := 0;
    signal v_count : integer range 0 to V_ACTIVE := 0;

    -- Sync edge detection
    signal vsync_prev : std_logic := '0';
    signal vde_prev   : std_logic := '0';
    signal v_started  : boolean := false;

    -- Grid Tracking Signals (To avoid division during runtime)
    signal curr_col      : integer range 0 to N_COLUMN - 1 := 0;
    signal curr_row      : integer range 0 to N_ROW - 1 := 0;
    signal sub_col_cnt   : integer range 0 to COLUMN_WIDTH := 0;
    signal sub_row_cnt   : integer range 0 to ROW_HEIGHT := 0;
    signal inside_grid_h : boolean := false;
    signal inside_grid_v : boolean := false;

    -- Grayscale Calculation
    signal gray_value : unsigned(7 downto 0);
    signal r_val, g_val, b_val : unsigned(7 downto 0);
    
    -- Configuration
    constant PIXEL_SHIFT : integer := 8; -- SET THIS: 8 means divide by 256 (e.g., 16x16 block)
    
    -- Internal storage (Must be large enough to hold the sum of a whole frame block)
    -- 24 bits is safe for blocks up to 65k pixels.
    type t_grid_acc is array (0 to N_ROW-1, 0 to N_COLUMN-1) of unsigned(23 downto 0);
    signal grid_accumulators : t_grid_acc;
    signal internal_matrix : t_gray_scale_grid;

begin

    ----------------------------------------------------------------
    -- 1. Position Counter (Standard VDE tracking)
    ----------------------------------------------------------------
    position_counter : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                h_count    <= 0;
                v_count    <= 0;
                v_started  <= false;
                vsync_prev <= '0';
                vde_prev   <= '0';
            else
                vsync_prev <= vsync_in;
                vde_prev   <= vde_in;

                -- Frame Reset logic
                if (vsync_in = '1' and vsync_prev = '0') then 
                    v_started <= false; 
                end if;

                -- Line & Pixel logic
                if (vde_in = '1' and vde_prev = '0') then
                    h_count <= 0; 
                    if (v_started = false) then
                        v_count   <= 0;
                        v_started <= true;
                    else
                        if v_count < V_ACTIVE - 1 then
                            v_count <= v_count + 1;
                        end if;
                    end if;
                elsif (vde_in = '1') then
                    if h_count < H_ACTIVE - 1 then
                        h_count <= h_count + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    ----------------------------------------------------------------
    -- 2. Grid Coordinate Logic (Optimized for Timing)
    ----------------------------------------------------------------
    
    grid_tracker : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' or (vsync_in = '1' and vsync_prev = '0') then
                inside_grid_v <= false;
                curr_row      <= 0;
                sub_row_cnt   <= 0;
            else
                
                -- Vertical Grid Tracking
                if v_count = GRID_TOP and h_count = 0 and vde_in = '1' and vde_prev = '0' then
                    -- Start of top grid line
                    inside_grid_v <= true;
                    curr_row      <= 0;
                    sub_row_cnt   <= 0;
                elsif inside_grid_v then
                    -- Increment row counters at the start of a new line
                    if vde_in = '1' and vde_prev = '0' then
                        if sub_row_cnt = ROW_HEIGHT - 1 then
                            sub_row_cnt <= 0;
                            if curr_row < N_ROW - 1 then
                                curr_row <= curr_row + 1;
                            else
                                inside_grid_v <= false; -- Passed the bottom
                            end if;
                        else
                            sub_row_cnt <= sub_row_cnt + 1;
                        end if;
                    end if;
                end if;

                -- Horizontal Grid Tracking
                if h_count = GRID_LEFT then
                    inside_grid_h <= true;
                    curr_col      <= 0;
                    sub_col_cnt   <= 0;
                elsif inside_grid_h then
                    if sub_col_cnt = COLUMN_WIDTH - 1 then
                        sub_col_cnt <= 0;
                        if curr_col < N_COLUMN - 1 then
                            curr_col <= curr_col + 1;
                        else
                            inside_grid_h <= false; -- Passed the right edge
                        end if;
                    else
                        sub_col_cnt <= sub_col_cnt + 1;
                    end if;
                end if;
                
                -- Force reset horizontal if line ends
                if vde_in = '0' then
                    inside_grid_h <= false;
                end if;

            end if;
        end if;
    end process;


    ----------------------------------------------------------------
    -- 3. Grayscale & Accumulation
    ----------------------------------------------------------------

    process(clk)
        variable r_mult   : unsigned(15 downto 0);
        variable g_mult   : unsigned(15 downto 0);
        variable b_mult   : unsigned(15 downto 0);
        variable sum_rgb  : unsigned(15 downto 0);
        variable gray_val : unsigned(7 downto 0);
    begin
        if rising_edge(clk) then
            -- Default ready signal to 0
            data_ready <= '0';

            if rst = '1' then
                grid_accumulators <= (others => (others => (others => '0')));
                internal_matrix   <= (others => (others => (others => '0')));
            else
                -- Frame Management (VSYNC Rising Edge = Frame Done)
                if vsync_in = '1' and vsync_prev = '0' then
                    
                    -- Calculate Means: Transfer Accumulator to 8-bit Output
                    for r in 0 to N_ROW-1 loop
                        for c in 0 to N_COLUMN-1 loop
                            internal_matrix(r, c) <= grid_accumulators(r, c)(7 + PIXEL_SHIFT downto PIXEL_SHIFT);
                        end loop;
                    end loop;

                    -- Signal that the 8-bit matrix is valid
                    data_ready <= '1';

                    -- Reset Accumulators for the next frame
                    grid_accumulators <= (others => (others => (others => '0')));

                else
                    -- Normal Active Video Processing
                    r_val <= unsigned(rgb_in(23 downto 16));
                    g_val <= unsigned(rgb_in(15 downto 8));
                    b_val <= unsigned(rgb_in(7 downto 0));

                    r_mult  := r_val * to_unsigned(77, 8);
                    g_mult  := g_val * to_unsigned(150, 8);
                    b_mult  := b_val * to_unsigned(29, 8);
                    sum_rgb := r_mult + g_mult + b_mult;
                    gray_val := sum_rgb(15 downto 8);

                    -- We simply add to the big bucket. No division yet.
                    if vde_in = '1' and inside_grid_v and inside_grid_h then
                        grid_accumulators(curr_row, curr_col) <= 
                            grid_accumulators(curr_row, curr_col) + resize(gray_val, 24);
                    end if;

                end if;
            end if;
        end if;
    end process;


    -------------------------------------------------------
    -- The "Flattening" Logic (Map 2D -> 1D)
    -------------------------------------------------------
    gen_flatten_row: for r in 0 to N_ROW-1 generate
        gen_flatten_col: for c in 0 to N_COLUMN-1 generate
            matrix_flat_out( ((r * 4 + c) * 8) + 7 downto ((r * 4 + c) * 8) ) 
                <= std_logic_vector( internal_matrix(r, c) );
        end generate;
    end generate;

end Behavioral;