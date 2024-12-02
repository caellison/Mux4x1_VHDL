-- Autor: Caellison Bezerra Morais
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saída

-- Biblioteca IEEE

	library ieee;
	use ieee.std_logic_1164.all;
	
-- Declaração das variáveis de entrada e saída

	entity mux2 is 
	port(
	
	I0 : in std_logic;	-- Entrada de dados 0
	I1 : in std_logic;	-- Entrada de dados 1
	I2 : in std_logic;	-- Entrada de dados 2
	I3 : in std_logic;	-- Entrada de dados 3
	s  : in std_logic_vector (1 downto 0);  -- Seleção de entradas (S0,S1)
	y  : out std_logic -- Saída 
	
	);
	end mux2;
	
-- Arquitetura do multiplexador com lógica sequêncial utilizando (se)

	architecture hardware of mux2 is
	begin
			process(I0, I1, I2, I3, s)
			begin
					if s = "00" then		-- seleciona I0
					y <= I0;
					
					elsif s = "01" then	-- seleciona I1
					y <= I1; 
					
					elsif s = "10" then	-- seleciona I2
					y <= I2;
					
					elsif s = "11" then	-- seleciona I3
					y <= I3;
					
					end if;
				end process;
	end hardware;
