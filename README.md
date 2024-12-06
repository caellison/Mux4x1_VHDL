## Descrição dos Arquivos e Pastas

- **/multiplexadores**: Contém os arquivos VHDL para os multiplexadores.
  
- **/testbench**: Contém o arquivo `testemux.vhdl`, que é o testbench usado para testar os multiplexadores. Este arquivo simula o comportamento dos multiplexadores para garantir que eles funcionem corretamente.

- **/imagens**: Contém as imagens geradas pelo GTKWave.

## Como Utilizar

1. **Compilar os arquivos VHDL**: Utilize o seu ambiente de desenvolvimento VHDL preferido (como ModelSim ou GHDL) para compilar os arquivos VHDL dentro da pasta `/multiplexadores`.

2. **Rodar o Testbench**: Execute o arquivo `testemux.vhdl` para simular o comportamento dos multiplexadores.

3. **Visualizar os Resultados no GTKWave**: Após rodar a simulação, abra os arquivos de onda gerados (os arquivos `.vcd` ou `.ghw`) no GTKWave para visualizar as formas de onda. As imagens na pasta `/imagens` representam os gráficos gerados durante a simulação.

4. **Análise**: Analise os gráficos para verificar o comportamento dos multiplexadores em diferentes cenários de entrada.

5. Aqui estão as formas de onda geradas no GTKWave durante a simulação do multiplexador 4x1:

### Forma de Onda 

![Forma de Onda](Multiplexadores_TesteBench/imagens/waveform_2.png)


![Forma de Onda](Multiplexadores_TesteBench/imagens/waveform_1.png)

---

Essas duas imagens representam as formas de onda simuladas no GTKWave para o testbench `testemux.vhdl`. 
