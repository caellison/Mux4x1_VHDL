-- Autor: Caellison Bezerra Morais
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saida

-- Biblioteca IEEE
   library ieee;
   use ieee.std_logic_1164.all;

-- Declaracao das variaveis de entrada e saida

   entity mux4 is 
   port(
        
       I0 : in std_logic; -- Entrada de dados 0
       I1 : in std_logic; -- Entrada de dados 1
       I2 : in std_logic; -- Entrada de dados 2
       I3 : in std_logic; -- Entrada de dados 3
       S1, S0 : in std_logic; -- Entradas de Seleção (S1,S0)
       y : out std_logic  -- Saida

       );
    end mux4;

-- Arquitetura do multiplexador com logica combinacional

   architecture arch of mux4 is
   begin 
   
   y <= I0 when (S1 = '0' and S0 = '0') else  --seleciona I0
        I1 when (S1 = '0' and S0 = '1') else  --seleciona I1
        I2 when (S1 = '1' and S0 = '0') else  --seleciona I2
        I3 when (S1 = '1' and S0 = '1') else  --seleciona I3
        '0';  --Garante o valor 0 caso nenhuma das entradas seja selecionada

  end arch;
