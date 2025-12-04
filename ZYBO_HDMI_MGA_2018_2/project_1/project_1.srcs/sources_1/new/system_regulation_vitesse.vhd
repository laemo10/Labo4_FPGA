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
    
    -- Déclaration du générateur
    component gen_vitesse is
        Port (
            clk : in std_logic;
            reset : in std_logic;
            vitesse_imposee : in std_logic_vector(7 downto 0);
            vitesse_imposee_valid : in std_logic;
            vit_sortie : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    
    -- Instanciation du générateur de vitesse
    U_GENERATEUR: gen_vitesse
        port map (
            clk => clk,
            reset => reset,
            vitesse_imposee => vitesse_panneau_camera,
            vitesse_imposee_valid => vitesse_panneau_valid,
            vit_sortie => vitesse_vehicule
        );
    
end Behavioral;