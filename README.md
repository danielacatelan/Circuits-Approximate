#####################################################################

Author: Daniela Luiza Catelan \
Professor at Federal University of Mato Grosso do Sul

#####################################################################

Este repositório, apresenta circuitos aritméticos aproximados, de 1 a 32 bits, em linguagem VHDL.

O projeto de circuitos aritméticos aproximados faz parte do meu projeto de doutorado, cujo o tema é: Exploração do Espaço de Projeto com Computação Aproximada.

O detalhamento do projeto pode ser visto nos artigos publicados:

-> Daniela Catelan, Ricardo Santos, and Liana Duenha. Accuracy and physical characterization of approximate arithmetic circuits. In Anais do XXI Simposio em Sistemas 
Computacionais de Alto Desempenho, pages 143–154, Porto Alegre, RS, Brasil, 2020. SBC. <https://sol.sbc.org.br/index.php/wscad/article/view/14065>

-> Daniela Catelan, Ricardo Santos, and Liana Duenha. Evaluation and characterization of approximate arithmetic circuits. In Concurrency and Computation: 
Practice and Experience, page e6865. Special Issue:WSCAD 2020. PDCAT 2020/PDCAT-PAAP 2020, 2022. <https://doi.org/10.1002/cpe.6865>


# Circuitos Aritméticos Aproximados

## Descrição:
With the end of Dennard's scale, processor designers have been looking for new technical alternatives so that  approximate computing (AC) has managed to attract the attention of researchers by 
offering techniques ranging from the application level to the circuit level. When applying approximate circuits into hardware design, the program user may speed up the application. At the same time, 
a designer may save area and power dissipation at the cost of less accuracy on the results of operations. This paper discusses the compromise between controlled accuracy versus physical efficiency
by evaluating a set of arithmetic circuits designs. The paper also presents new mixed organization approximate designs. To evaluate the approximate design benefits, we performed a comprehensive set 
of experiments from tailor-made approximate arithmetic circuits on Field-Programmable Gate Array (FPGA) and Application Specific Integrated Circuits (ASIC) technologies. Our results reveal that our 
proposed mixed approximate designs have promising results on error rates, area usage, and power dissipation  compared to the related work.  Another interesting result is that one should care about the  
prototyping platform where the approximate hardware will be synthesized. Tailor-made approximate cells may take advantage on intrinsic design details than standard cells or even general prototyping platforms.

# Ferramentas
Todos os circuitos foram projetados em VHDL, sintetizados no Cyclone IV GX FPGA com a ferramenta IDE ALTERA Quartus II Web Edition 13.1.
Scripts de simulação e testbenches foram simulados usando a ferramenta Altera-ModelSim 10.


#**Contact**
Daniela Luiza Catelan (daniela.catelan@ufms.br)
