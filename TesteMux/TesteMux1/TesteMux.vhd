-- Autor: Caellison Bezerra Morais
-- Data: 02/12/2024
-- Testbench para o multiplexador mux1

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Biblioteca para usar to_unsigned

entity TesteMux is
end TesteMux;

architecture hardware of TesteMux is
    -- Componente a ser testado
    component mux1
        port(
            I0, I1, I2, I3 : in std_logic;
            s              : in std_logic_vector(1 downto 0);
            y              : out std_logic
        );
    end component;

    -- Sinais para simulação
    signal I0, I1, I2, I3 : std_logic := '0';
    signal s              : std_logic_vector(1 downto 0) := "00";
    signal y              : std_logic;

begin
    -- Instanciação do multiplexador
    uut1: mux1 port map(I0, I1, I2, I3, s, y);

    -- Processo de geração de estímulos
    process
    begin
        -- Testando todas as combinações de seleção
        for i in 0 to 3 loop
            -- Convertendo para sinais de seleção
            s <= std_logic_vector(to_unsigned(i, 2)); -- Conversão ajustada

            -- Variação das entradas de I0, I1, I2, I3
            I0 <= '0'; I1 <= '1'; I2 <= '0'; I3 <= '1'; wait for 10 ns;
            
            -- Testa para as diferentes combinações de seleção
            wait for 10 ns; -- Aguarda para testar os valores

            -- Reinicia as entradas para o próximo ciclo
            I0 <= '1'; I1 <= '0'; I2 <= '1'; I3 <= '0'; wait for 10 ns;
        end loop;

        -- Finaliza a simulação
        wait;
    end process;

end hardware;
