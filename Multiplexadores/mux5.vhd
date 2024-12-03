-- Autor: Caellison Bezerra Morais
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saída

-- Biblioteca IEEE

	library ieee;
	use ieee.std_logic_1164.all;
	
-- Declaração das variáveis de entrada e saída

	entity mux5 is
	port (
	
	I0 : in std_logic; -- Entrada de dados 0
	I1 : in std_logic; -- Entrada de dados 1
	I2 : in std_logic; -- Entrada de dados 2
	I3 : in std_logic; -- Entrada de dados 3
	S0,S1  : in std_logic; --Seleção das entradas (S1,S0)
	y  : out std_logic -- Saída

	); 
	end mux5 ;
	
	-- Arquitetura do muxtiplexador com portas lógicas
	
	architecture hardware of mux5 is
	begin
				y <= ( I0 and not S1 and not S0) or 
					  ( I1 and not S1 and  S0) or 
					  ( I2 and  S1 and not S0) or 
					  ( I3 and  S1 and  S0);
	end hardware;