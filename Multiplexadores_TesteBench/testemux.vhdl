-- Autor: Caellison Bezerra Morais 
-- Data: 30/11/2024
-- TesteBench para Multiplexadores de 4 entradas e 1 saida

-- Biblioteca IEEE

   library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

   entity testemux is
   end testemux;

-- Arquitetura do testebench

	architecture arch of testemux is 

-- Componente a ser testada ( troque 'mux1' por 'mux2' ou 'mux...')
 	component mux1 
	port(
		I0, I1, I2, I3 : in std_logic;
		s	       : in std_logic_vector (1 downto 0);
		y	       : out std_logic
	);
	end component;

-- Sinais para simulacao

	signal I0, I1, I2, I3 : std_logic := '0' ; 
	signal s	      : std_logic_vector(1 downto 0) := "00";
	signal y	      : std_logic;

begin

-- Instaciacao do multiplexador ( trocar 'mux1' pelo nome do multiplexador desejado )

	uut1: mux1 port map(I0, I1, I2, I3, s, y);

-- Processo de geração de dados
	process
	begin 

--Testando todas combinacoes de selecao
	
	for i in 0 to 3 loop
	s <= std_logic_vector(to_unsigned(i, 2));   -- converscao para sinais de selecao ajustada

	I0 <= '0';  I1 <= '1';  I2 <= '0';  I3 <= '1' ; wait for 10 ns;

	wait for 10 ns;

	--Reinicia as entradas para as diferentes combinacoes de selecao
	I0 <= '1';  I1 <= '0';  I2 <= '1';  I3 <= '1'; wait for 10 ns;
end loop;

	wait; --Finaliza simulacao
end process;
end arch;
