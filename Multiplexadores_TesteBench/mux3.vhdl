-- Autor: Caellison Bezerra Morais 
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saida

-- Biblioteca IEEE

   library ieee;
   use ieee.std_logic_1164.all;

-- Declaracao das variaveis de entrada e saida

       entity mux3 is
       port(

       I0 : in std_logic;  --Entrada de dados 0
       I1 : in std_logic;  --Entrada de dados 1
       I2 : in std_logic;  --Entrada de dados 2
       I3 : in std_logic;  --Entrada de dados 3
       s  : in std_logic_vector (1 downto 0);  --Selecao (S1,S0)
       y  : out std_logic  -- Saida

      );
      end mux3;

-- Arquitetura do multiplexador com logica combinacional
    
      architecture arch of mux3 is 
      begin

          y <= I0 when s = "00" else   --Seleciona I0
               I1 when s = "01" else   --Seleciona I1
               I2 when s = "10" else   --Seleciona I2
               I3 when s = "11" else   --Seleciona I3
              '0';                     --Garante 0 para nenhuma entrada

      end arch;
