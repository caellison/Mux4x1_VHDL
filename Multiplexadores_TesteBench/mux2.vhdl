-- Autor: Caellison Bezerra Morais 
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saida

-- Biblioteca IEEE

     library ieee;
     use ieee.std_logic_1164.all;

-- Declaração das variaveis de entrada e saida

    entity mux2 is 
    port(

    I0 : in std_logic; -- Entrada de dados 0
    I1 : in std_logic; -- Entrada de dados 1
    I2 : in std_logic; -- Entrada de dados 2
    I3 : in std_logic; -- Entrada de dados 3
    s  : in std_logic_vector (1 downto 0 );  --Seleção de entradas (S1 e S0)
    y  : out std_logic -- Saida

   );

   end mux2;

-- Arquitetura do multiplexador com logica sequencial 

   architecture arch of mux2 is
   begin
        process(I0, I1, I2, I3, s)
        begin 
             if s = "00" then    --Seleciona I0
        y <= I0;

         elsif s = "01" then     --Seleciona I1
        y <= I1;

         elsif s = "10" then     --Seleciona I2
        y <= I2;

         elsif s = "11" then     --Seleciona I3
       y <= I3;

       end if;
       end process;

    end arch;
