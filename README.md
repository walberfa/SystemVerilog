# SystemVerilog
Implementações em SystemVerilog para a disciplina Projeto de Sistemas VLSI do Mestrado em Ciência da Computação (2021.1)

A seguir breves explicações dos códigos.

*Nota: os arquivos com "_tb" são arquivos de testbench, precisam ser utilizados na simulação junto com os outros arquivos* 

<h2> ula_simples </h2>
  
Unidade lógica e aritmética (ULA) simples.

Possui uma entrada *ctrl* de controle, com 3 bits, e outras duas entradas *src0* e *src1* com 8 bits cada.

A saída *result* também tem 8 bits.

Obedece a tabela verdade a seguir:

| ctrl | result  |
| ------------------- | ------------------- |
| 0** | src0 + 1 |
| 100 | src0 + src1 |
| 101 | src0 - src1 |
| 110 | src0 and src1 |
| 111 | src0 or src1 |

<h2> greater_than </h2>
Este greater than é um comparador de 2 bits cuja saída fica em nível lógico alto quando A é maior que B.

Deste modo, o circuito obedecerá a seguinte tabela verdade: 

| a | b  | a > b |
| ------ | -------- | ------- |
| 00 | 00 | 0 |
| 00 | 01 | 0 |
| 00 | 10 | 0 |
| 00 | 11 | 0 |
| 01 | 00 | 1 |
| 01 | 01 | 0 |
| 01 | 10 | 0 |
| 01 | 11 | 0 |
| 10 | 00 | 1 |
| 10 | 01 | 1 |
| 10 | 10 | 0 |
| 10 | 11 | 0 |
| 11 | 00 | 1 |
| 11 | 01 | 1 |
| 11 | 10 | 1 |
| 11 | 11 | 0 |


<h2> Os códigos podem ser testados no https://www.edaplayground.com/ </h2>
  
  Como testar?
  
  - Fazer login no site com conta do Google ou Facebook
  - Copiar e colar os arquivos de design e testbench nos respectivos lugares
  - Verificar se a linguagem do site está configurada para "SystemVerilog/Verilog" 
  - Escolher a ferramenta Aldec Riviera em "Tools & Simulators"
  - Marcar a opção "Open EPWave after run" para visualizar a forma de onda gerada no teste
  - Clique em "Run" para executar
