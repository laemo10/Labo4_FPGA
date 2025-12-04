----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2025
-- Design Name: grid_processor
-- Module Name: logic_grid_processor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Processeur de grille avec aplatissement pipeliné et debug
-- 
-- Dependencies: simple_divider, matrix_pkg
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Assurez-vous que ce paquet est bien compilé dans votre projet
use work.matrix_pkg.all;

entity grid_processor is
    Port ( 
        clk           : in std_logic;
        reset         : in std_logic;
        
        -- Inputs Pixel
        valid_pixel   : in std_logic;
        pixel_row     : in std_logic_vector(7 downto 0);
        pixel_col     : in std_logic_vector(7 downto 0);
        pixel_val     : in std_logic_vector(7 downto 0);
        
        -- Synchro
        frame_done    : in std_logic; 
        
        -- Sortie aplatie (120 bits si 5x3)
        flattened_out : out std_logic_vector((ROWS * COLS * 8) - 1 downto 0);
        data_ready    : out std_logic
        
        -- Debug LEDs
        --out0, out1, out2, out3, out4, out5, out6, out7 : out std_logic
    );
end grid_processor;

architecture Behavioral of grid_processor is

    -- Signaux de stockage (Mémoires de la grille)
    signal grid_sums   : t_sum_array   := (others => (others => (others => '0')));
    signal grid_counts : t_count_array := (others => (others => (others => '0')));
    -- Note: grid_means n'est plus strictement nécessaire pour la sortie car on écrit directement 
    -- dans flattened_buf, mais on le garde pour le debug ou usage futur.
    signal grid_means  : t_mean_array  := (others => (others => (others => '0')));

    -- Buffer pour construire le vecteur aplati petit à petit (Pipeline)
    signal flattened_buf : std_logic_vector((ROWS * COLS * 8) - 1 downto 0) := (others => '0');

    -- Signaux pour le module Divider
    signal div_start    : std_logic := '0';
    signal div_dividend : unsigned(31 downto 0) := (others => '0');
    signal div_divisor  : unsigned(15 downto 0) := (others => '0');
    signal div_quotient : unsigned(7 downto 0);
    signal div_done     : std_logic;
    
    -- Signal intermédiaire pour capturer le résultat de la division
    signal safe_quotient : unsigned(7 downto 0) := (others => '0');

    -- Machine à états
    type t_state is (ACCUMULATE, LOAD_DIVIDER, WAIT_DIVIDER, SAVE_RESULT, FINISHED);
    signal state : t_state := ACCUMULATE;
    
    -- Itérateurs pour le balayage de la grille
    signal current_row : integer range 0 to 255 := 0;
    signal current_col : integer range 0 to 255 := 0;
    signal r           : integer range 0 to 255 := 0;
    signal c           : integer range 0 to 255 := 0;
    
    -- Signaux pour la détection de front (Edge Detector)
    signal frame_done_prev : std_logic := '0';
    signal frame_end_pulse : std_logic := '0';

    -- Compteur d'activité pour le Debug visuel (Clignotement visible)
    signal pixel_activity : unsigned(24 downto 0) := (others => '0');

begin
    
    -- Conversion des entrées
    current_row <= to_integer(unsigned(pixel_row));  
    current_col <= to_integer(unsigned(pixel_col));     

    -- Instantiation du Diviseur
    inst_divider: entity work.simple_divider
    port map (
        clk      => clk,
        start    => div_start,
        dividend => div_dividend,
        divisor  => div_divisor,
        quotient => div_quotient,
        done     => div_done
    );

    ----------------------------------------------------------------
    -- DEBUG VISUEL (Logique Combinatoire - Toujours active)
    ----------------------------------------------------------------
    -- LED 0 : Clignote si des pixels valides entrent
    --out0 <= std_logic(pixel_activity(24)); 

    -- LED 1 : Allumée si en attente (ACCUMULATE)
    --out1 <= '1' when state = ACCUMULATE else '0';

    -- LED 2 : Allumée pendant le calcul (LOAD/WAIT/SAVE)
    --out2 <= '1' when (state = LOAD_DIVIDER or state = WAIT_DIVIDER or state = SAVE_RESULT) else '0';

    -- LED 3 : Allumée quand terminé (FINISHED)
    --out3 <= '1' when state = FINISHED else '0';

    -- LED 4 : Flash quand frame_done arrive (Front montant)
    --out4 <= frame_end_pulse;

    -- LED 5 : Non utilisé (0)
    --out5 <= '0';

    -- LED 6 : Non utilisé (0)
    --out6 <= '0';

    -- LED 7 : État du Reset
    --out7 <= reset;


    ----------------------------------------------------------------
    -- PROCESS PRINCIPAL (Machine à États)
    ----------------------------------------------------------------
    process(clk)
        variable v_flat_idx : integer; -- Variable pour le calcul d'index
    begin
        if rising_edge(clk) then
            
            -- 1. Détecteur de Front Montant pour frame_done
            -- Cela évite que la machine boucle indéfiniment si frame_done reste à 1 longtemps.
            frame_done_prev <= frame_done;
            if frame_done = '1' and frame_done_prev = '0' then
                frame_end_pulse <= '1';
            else
                frame_end_pulse <= '0';
            end if;

            -- 2. Compteur d'activité (Indépendant du Reset pour voir si l'horloge tourne)
            if valid_pixel = '1' then
                pixel_activity <= pixel_activity + 1;
            end if;

            -- 3. Logique de Reset et FSM
            if reset = '1' then
                state <= ACCUMULATE;
                grid_sums <= (others => (others => (others => '0')));
                grid_counts <= (others => (others => (others => '0')));
                flattened_buf <= (others => '0');
                data_ready <= '0';
                div_start <= '0';
                safe_quotient <= (others => '0');
                r <= 0;
                c <= 0;
            else
                case state is
                    
                    -- ÉTAT 1 : Accumulation des pixels
                    when ACCUMULATE =>
                        -- Si on détecte le front montant de fin de frame
                        if frame_end_pulse = '1' then
                            state <= LOAD_DIVIDER;
                            r <= 0;
                            c <= 0;
                            data_ready <= '0';
                        
                        -- Sinon, on accumule si le pixel est valide
                        elsif valid_pixel = '1' then
                            grid_sums(current_row, current_col) <= 
                                grid_sums(current_row, current_col) + unsigned(pixel_val);
                            grid_counts(current_row, current_col) <= 
                                grid_counts(current_row, current_col) + 1;
                        end if;

                    -- ÉTAT 2 : Chargement du diviseur
                    when LOAD_DIVIDER =>
                        -- Protection division par zéro (Si case vide)
                        if grid_counts(r, c) = 0 then
                            safe_quotient <= (others => '0');
                            state <= SAVE_RESULT; -- On saute la division
                        else
                            div_dividend <= grid_sums(r, c);
                            div_divisor  <= grid_counts(r, c);
                            div_start    <= '1'; -- Start Pulse
                            state        <= WAIT_DIVIDER;
                        end if;

                    -- ÉTAT 3 : Attente du résultat
                    when WAIT_DIVIDER =>
                        div_start <= '0'; -- Stop Pulse
                        
                        if div_done = '1' then
                            -- Capture immédiate du résultat pour ne pas le perdre
                            safe_quotient <= div_quotient;
                            state <= SAVE_RESULT;
                        end if;

                    -- ÉTAT 4 : Sauvegarde et Aplatissement (Pipeline)
                    when SAVE_RESULT =>
                        -- On stocke dans la matrice (optionnel)
                        grid_means(r, c) <= safe_quotient;
                        
                        -- PIPELINE : Écriture directe dans le vecteur de sortie
                        -- Calcul de l'index linéaire : (Ligne * NbCols + Col) * 8 bits
                        v_flat_idx := (r * COLS + c) * 8;
                        flattened_buf(v_flat_idx + 7 downto v_flat_idx) <= std_logic_vector(safe_quotient);

                        -- Gestion des boucles imbriquées (Colonnes puis Lignes)
                        if c = COLS-1 then
                            c <= 0;
                            if r = ROWS-1 then
                                state <= FINISHED;
                            else
                                r <= r + 1;
                                state <= LOAD_DIVIDER;
                            end if;
                        else
                            c <= c + 1;
                            state <= LOAD_DIVIDER;
                        end if;

                    -- ÉTAT 5 : Fin de traitement
                    when FINISHED =>
                        data_ready <= '1'; -- Les données aplaties sont prêtes
                        
                        -- On attend le PROCHAIN front de fin de frame pour repartir
                        if frame_end_pulse = '1' then 
                            state <= ACCUMULATE;
                            -- Reset des accumulateurs pour la nouvelle image
                            grid_sums <= (others => (others => (others => '0')));
                            grid_counts <= (others => (others => (others => '0')));
                            -- On garde flattened_buf tel quel jusqu'au prochain calcul
                        end if;
                        
                end case;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------
    -- SORTIE FINALE
    ----------------------------------------------------------------
    -- Connexion directe du buffer interne vers la sortie
    flattened_out <= flattened_buf;

end Behavioral;