-- Autor: Caellison Bezerra Morais 
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saida

-- Biblioteca IEEE

   library ieee;
   use ieee.std_logic_1164.all;

-- Declaracao das variaveis de entrada e saida

   entity mux6 is 
   port (

   I0 : in std_logic;  --Entrada de dados 0
   I1 : in std_logic;  --Entrada de dados 1
   I2 : in std_logic;  --Entrada de dados 2
   I3 : in std_logic;  --Entrada de dados 3
   S1,S0 : in std_logic; -- Selecao de entradas (S1,S0)
   y  : out std_logic  --Saida

        );
   end mux6;

-- Arquitetura do multiplexador com portas logicas

   architecture arch of mux6 is 
   signal ent0, ent1, ent2, ent3 : std_logic; -- Sinais Internos
   begin

           y <= ent0 or ent1 or ent2 or ent3;
             
            ent0 <= I0 and not S1 and not S0;
            ent1 <= I1 and not S1 and     S0;
            ent2 <= I2 and     S1 and not S0;
            ent3 <= I3 and     S1 and     S0;

   end arch;
