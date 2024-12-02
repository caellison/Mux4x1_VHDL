-- Autor: Caellison Bezerra Morais
-- Data: 29/11/2024
-- Multiplexador de 4 entradas e 1 saída

-- Biblioteca IEEE

	library ieee;
	use ieee.std_logic_1164.all;
	
-- Declaração das variáveis de entrada e saída

	entity mux1 is
	port (
	
	I0 : in std_logic; -- Entrada de dados 0
	I1 : in std_logic; -- Entrada de dados 1
	I2 : in std_logic; -- Entrada de dados 2
	I3 : in std_logic; -- Entrada de dados 3
	s  : in std_logic_vector (1 downto 0); --Seleção das entradas (S1,S0)
	y  : out std_logic -- Saída

	); 
	end mux1 ;
	
	-- Arquitetura do muxtiplexador com lógica sequêncial utilizando (quando)
	
	architecture hardware of mux1 is
	begin
				process(I0, I1, I2, I3, s)
				begin
				case s is
			
				when "00" => y <= I0; -- Seleciona I0
				when "01" => y <= I1; -- Seleciona I1
				when "10" => y <= I2; -- Seleciona I2
				when "11" => y <= I3; -- Seleciona I3
				when others => y <= '0';					-- Garante o valor 0 para nenhuma das entradas
				end case;
				end process;
	end hardware;