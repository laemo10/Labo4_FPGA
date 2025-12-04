library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity systeme_regulation_vitesse is
    Port (
        clk : in std_logic;
        reset : in std_logic;     
        -- Entrée depuis la caméra (module de détection)
        vitesse_panneau_camera : in std_logic_vector(7 downto 0);
        vitesse_panneau_valid : in std_logic;
        vitesse_vehicule : out std_logic_vector(7 downto 0)
    );
end systeme_regulation_vitesse;

architecture Behavioral of systeme_regulation_vitesse is

    signal vitesse_actuelle_interne : std_logic_vector(7 downto 0);
    signal vitesse_cible_interne : std_logic_vector(7 downto 0);
    signal vitesse_cible_valid_interne : std_logic;
    
    -- Déclaration du comparateur
    component comparateur_regulateur_vitesse is
        Port ( 
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            vitesse_panneau : in STD_LOGIC_VECTOR(7 downto 0);
            vitesse_panneau_valid : in STD_LOGIC;
            vitesse_actuelle : in STD_LOGIC_VECTOR(7 downto 0);
            vitesse_cible : out STD_LOGIC_VECTOR(7 downto 0);
            vitesse_cible_valid : out STD_LOGIC
        );
    end component;
    
    -- Déclaration du générateur
    component gen_vitesse is
        Port (
            clk : in std_logic;
            reset : in std_logic;
            vitesse_imposee : in std_logic_vector(7 downto 0);
            vitesse_imposee_valid : in std_logic;
            vit_cond : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Instanciation du comparateur/régulateur
    U_COMPARATEUR: comparateur_regulateur_vitesse
        port map (
            clk => clk,
            reset => reset,
            vitesse_panneau => vitesse_panneau_camera,
            vitesse_panneau_valid => vitesse_panneau_valid,
            vitesse_actuelle => vitesse_actuelle_interne,
            vitesse_cible => vitesse_cible_interne,
            vitesse_cible_valid => vitesse_cible_valid_interne
        );
    
    -- Instanciation du générateur de vitesse
    U_GENERATEUR: gen_vitesse
        port map (
            clk => clk,
            reset => reset,
            vitesse_imposee => vitesse_cible_interne,
            vitesse_imposee_valid => vitesse_cible_valid_interne,
            vit_cond => vitesse_actuelle_interne
        );
    
    -- Sortie vers le PWM
    vitesse_vehicule <= vitesse_actuelle_interne;

end Behavioral;