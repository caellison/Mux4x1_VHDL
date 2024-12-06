-- Autor: Caellison Bezerra Morais
-- Data 29/11/2024
-- Multiplexador de 4 entradas e 1 saida

-- Biblioteca IEEE

  library ieee;
  use ieee.std_logic_1164.all;

-- Declaracao das variaveis de entrada e saida

  entity mux5 is 
  port (
       
       I0 : in std_logic;  --Entrada de dados 0
       I1 : in std_logic;  --Entrada de dados 1
       I2 : in std_logic;  --Entrada de dados 2
       I3 : in std_logic;  --Entrada de dados 3
       S0,S1 : in std_logic; --Selecao de entradas (S1,S0)
       y  : out std_logic  --Saida

      );
  end mux5;

-- Arquitetura do multiplexador com portas lógicas

  architecture arch of mux5 is 
  begin 
         y <= ( I0 and not S1 and not S0 ) or
              ( I1 and not S1 and     S0 ) or 
              ( I2 and     S1 and not S1 ) or
              ( I3 and     S1 and     S0 );
  end arch;
