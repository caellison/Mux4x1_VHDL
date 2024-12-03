-- Autor: Caellison Bezerra Morais
-- Data: 02/12/2024
-- Testbench para os multiplexadores mux1, mux2, mux3, mux4, mux5, mux6

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Biblioteca para usar to_unsigned

entity tb_mux is
end tb_mux;

architecture hardware of tb_mux is
    -- Componentes a serem testados
    component mux1
        port(
            I0, I1, I2, I3 : in std_logic;
            s              : in std_logic_vector(1 downto 0);
            y              : out std_logic
        );
    end component;

    component mux2
        port(
            I0, I1, I2, I3 : in std_logic;
            s              : in std_logic_vector(1 downto 0);
            y              : out std_logic
        );
    end component;

    component mux3
        port(
            I0, I1, I2, I3 : in std_logic;
            s              : in std_logic_vector(1 downto 0);
            y              : out std_logic
        );
    end component;

    component mux4
        port(
            I0, I1, I2, I3 : in std_logic;
            S1, S0         : in std_logic;
            y              : out std_logic
        );
    end component;

    component mux5
        port(
            I0, I1, I2, I3 : in std_logic;
            S0, S1         : in std_logic;
            y              : out std_logic
        );
    end component;

    component mux6
        port(
            I0, I1, I2, I3 : in std_logic;
            S0, S1         : in std_logic;
            y              : out std_logic
        );
    end component;

    -- Sinais para simulação
    signal I0, I1, I2, I3 : std_logic := '0';
    signal s              : std_logic_vector(1 downto 0) := "00";
    signal S1, S0         : std_logic := '0';
    signal y1, y2, y3, y4, y5, y6 : std_logic;

begin
    -- Instanciações dos multiplexadores
    uut1: mux1 port map(I0, I1, I2, I3, s, y1);
    uut2: mux2 port map(I0, I1, I2, I3, s, y2);
    uut3: mux3 port map(I0, I1, I2, I3, s, y3);
    uut4: mux4 port map(I0, I1, I2, I3, S1, S0, y4);
    uut5: mux5 port map(I0, I1, I2, I3, S0, S1, y5);
    uut6: mux6 port map(I0, I1, I2, I3, S0, S1, y6);

    -- Processo de geração de estímulos
    process
    begin
        -- Testando todas as combinações de seleção
        for i in 0 to 3 loop
            -- Convertendo para sinais de seleção
            s <= std_logic_vector(to_unsigned(i, 2)); -- Conversão ajustada
            S1 <= s(1);
            S0 <= s(0);

            -- Aplicando diferentes valores às entradas
            I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '0'; wait for 10 ns;
            I0 <= '1'; wait for 10 ns;
            I1 <= '1'; wait for 10 ns;
            I2 <= '1'; wait for 10 ns;
            I3 <= '1'; wait for 10 ns;

            -- Resetando entradas
            I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '0'; wait for 10 ns;
        end loop;

        -- Finaliza a simulação
        wait;
    end process;

end hardware;
