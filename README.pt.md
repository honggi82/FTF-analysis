# Análise de tempo-frequência (FTF) do valor F
![F-value time-frequency (FTF) analysis](FTF_analysis.JPG)

<div align="center">
  <a href="README.md">English</a> |
  <a href="README.de.md">Deutsch</a> |
  <a href="README.es.md">Español</a> |
  <a href="README.fr.md">français</a> |
  <a href="README.ja.md">日本語</a> |
  <a href="README.ko.md">한국어</a> |
  <a href="README.pt.md"><strong>Português</strong></a> |
  <a href="README.ru.md">Русский</a> |
  <a href="README.zh.md">中文</a>
</div>

Este repositório fornece o código MATLAB para o método de análise de frequência de tempo de valor F (FTF) proposto no artigo "Análise de frequência de tempo de valor F (FTF): análise de variância entre dentro".

## Algoritmo: Análise de Tempo-Frequência (FTF) de valor F

A análise FTF é uma nova técnica que visualiza a significância estatística em um mapa de tempo-frequência, aplicando o valor F de uma Análise de Variância (ANOVA). Ele foi projetado para identificar e quantificar diferenças entre múltiplas condições em dados de séries temporais, como eletroencefalografia (EEG).

### Principais recursos e metodologia
* **Visualização estatística**: Ao contrário dos gráficos tradicionais de tempo-frequência que mostram apenas potência ou amplitude, o gráfico FTF visualiza diretamente o valor F em cada ponto de tempo-frequência. Isso permite que os pesquisadores identifiquem imediatamente onde estão as diferenças mais significativas entre as condições experimentais.
* **Análise de Variância**: O núcleo do método é calcular a razão entre a variação entre condições e a variação dentro da condição. Um valor F alto indica que a variação entre as condições é significativamente maior do que a variação dentro de cada condição, sugerindo um efeito verdadeiro.
* **Interpretação intuitiva**: O mapa FTF resultante destaca os pontos de tempo específicos e as bandas de frequência onde os sinais divergem significativamente entre as condições. Isso fornece uma ferramenta intuitiva e poderosa para analisar sinais neurais complexos, como os de tarefas de imagens motoras, sem a necessidade de testes estatísticos post-hoc nos próprios mapas de potência.

O código MATLAB neste repositório inclui as funções e scripts de exemplo necessários para realizar a análise FTF em seus próprios dados de série temporal.

## Citação

Se você usar este código para sua pesquisa, cite o seguinte artigo:

* Yeom, HG (2021). Análise de tempo-frequência (FTF) do valor F: análise de variância entre dentro. *Fronteiras em Neurociências*, 15, 729449.
    (https://doi.org/10.3389/fnins.2021.729449)

## Uso

Para obter instruções detalhadas, consulte os scripts e a documentação do MATLAB neste repositório.
https://doi.org/10.3389/fnins.2021.729449
