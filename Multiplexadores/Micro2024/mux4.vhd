-- Autor: Caellison Bezerra Morais
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saída

-- Biblioteca IEEE
library ieee;
use ieee.std_logic_1164.all;

-- Declaração das variáveis de entrada e saída
entity mux4 is
    port (
        I0 : in std_logic; -- Entrada de dados 0
        I1 : in std_logic; -- Entrada de dados 1
        I2 : in std_logic; -- Entrada de dados 2
        I3 : in std_logic; -- Entrada de dados 3
        S1, S0 : in std_logic; -- Entradas de seleção (S1, S0)
        y : out std_logic -- Saída
    );
end mux4;

-- Arquitetura do multiplexador com lógica combinacional
architecture hardware of mux4 is
begin
    -- Lógica do multiplexador
    y <= I0 when (S1 = '0' and S0 = '0') else	-- Seleciona I0
         I1 when (S1 = '0' and S0 = '1') else	-- Seleciona I1
         I2 when (S1 = '1' and S0 = '0') else	-- Seleciona I2
         I3 when (S1 = '1' and S0 = '1') else	-- Seleciona I3
         '0'; 												-- Garante o valor 0 para nenhuma das entradas
end hardware;
