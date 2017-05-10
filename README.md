## **592.5906** *Modularidade: conectando padrões e processos em evolução multivariada*


# Preliminares

## R

Inicialmente, você deve instalar o **R** no seu computador. 
Você pode encontrá-lo no sítio <http://www.r-project.org>.
Neste sítio existem instruções (em inglês) para instalá-lo em vários sistemas operacionais diferentes; versões para Windows, Mac OS e Linux estão disponíveis.
Em suma, vá a um dos espelhos do *Comprehensive R Archive Network* (CRAN), por exemplo <http://brieger.esalq.usp.br/CRAN/>, e siga os links de download e instale o pacote referente ao seu sistema operacional.
Usuários de Linux provavelmente possuem um gerenciador de pacotes instalado em seu sistema, como por
exemplo *apt* ou *dnf*, que podem também ser utilizados para a instalação.

A instalação básica do R no Windows ou MAC OS providencia uma interface básica para execução de rotinas; no entanto, recomendamos a instalação do **R Studio**, uma interface bastante intuitiva para
utilizarmos o R. 
Esta interface pode ser encontrada no sítio <http://www.rstudio.com> para Windows, MAC OS ou Linux.

O curso foi pensado para pessoas que não são familiarizadas com o R; não esperamos que você seja, a princípio, capaz de escrever rotinas na linguagem. 
Os tutoriais propostos se baseiam em rotinas prontas, uma para cada aula, de modo que estes exercícios consistem em executar estas rotinas, observar e entender o que foi feito, e responder algumas perguntas. 
Assim, estes exercícios servem como ponto de partida para você começar a entender a linguagem. 
Durante o curso, nós vamos introduzir alguns conceitos que são cruciais para o entendimento das rotinas que estamos disponibilizando aqui.

Se você quiser começar a entender a linguagem antes do curso iniciar, recomendamos o sítio <http://ecologia.ib.usp.br/bie5782/>, da disciplina básica de R oferecida pelo Departamento de Ecologia do IB-USP. 
O link "Atividades Preparatórias" oferece um introdução da linguagem.

# Aulas Teóricas

[Leituras](leituras.zip)

### 0. Histórico

+ [Apresentação](Aulas/Historico.pptx)

### 1. *Níveis de modularidade: individual e populacional*

+ [Apresentação](Aulas/Niveis_modularidade.pptx)

+ Leitura principal: 

  * Cheverud, J M. “Developmental Integration and the Evolution of Pleiotropy.” American Zoology 36 (1996): 44–50.

    * Atentem para as ideias de níveis de integração/modularidade e a interrelação entre eles; de seleção estabilizadora e efeitos genéticos pleiotrópicos.

+ Leituras complementares: 
  
  * Bowler, P. “Variation from Darwin to the Modern Synthesis.” *In* Variation: A Central Concept in Biology, 2003. 
  
  * Klingenberg, C P. “Morphological Integration and Developmental Modularity.” Annual Review of Ecology, Evolution, and Systematics 39, no. 1 (2008): 115–132. doi:10.1146/annurev.ecolsys.37.091305.110054.

  * Young, N. M., B. Hallgrímsson. “Serial Homology and the Evolution of Mammalian Limb Covariation Structure.” Evolution 59, no. 12 (2005): 2691–2704.

  * Zelditch, M. L., D. L. Swiderski. “Epigenetic Interactions: The Developmental Route to Functional Integration.” *In* Epigenetics: Linking Genotype and Phenotype in Development and Evolution, 290–316, 2011.

### 2. *Homologias, Caracteres e Mensurações* 

+ [Apresentação](Aulas/02/index.html?presentme=false)

+ Leituras principais:

  * Wagner, G. P. “What is 'homology thinking' and what is it for?” Journal of Experimental Zoology Part B: Molecular and Developmental Evolution 326, no. 1 (2016): 3–8. doi:10.1002/jez.b.22656.

  * Houle, D., C. Pélabon, G. P. Wagner, T. F. Hansen. “Measurement and Meaning In Biology.” The Quartely Review of Biology 86, no. 1 (2011): 3–34.
    
	* Ler do início até a seção “Pragmatic Measurement Theory” (13 páginas).

+ Leituras complementares:
  
  * Hansen, T. F., D. Houle. “Measuring and Comparing Evolvability and Constraint in Multivariate Characters.” Journal of Evolutionary Biology 21, no. 5 (2008): 1201–1219. doi:10.1111/j.1420-9101.2008.01573.x.

  * Wagner, G. P., M. D. Laubichler. “Character Identification in Evolutionary Biology: The Role of the Organism.” Theory in Biosciences 119, no. 1 (2000): 20–40.

### 3. *Caracterização de variação em dimensionalidade alta*

+ [Apresentação](Aulas/Quantificando variação multivariada.pdf)

+ Caracteres e matrizes

+ Modelos lineares

+ Componentes principais

+ Caracterização de variação direcional

### 4. *Detecção de Padrões de Modularidade*

+ Leituras Principais

  * Cheverud, J. M., G. P. Wagner, M. M. Dow. “Methods for the Comparative Analysis of Variation Patterns.” Evolution 38, no. 3 (1989): 201–213.

  * Goswami, A., J. A. Finarelli. “EMMLi: A Maximum Likelihood Approach to the Analysis of Modularity.” Evolution 70, no. 7 (July 1, 2016): 1622–37. doi:10.1111/evo.12956.


### 5. *Paisagem adaptativa fenotípica*

+ Fenótipo e seleção
+ Superfícies adaptativas individuais e populacionais
+ Modelos lineares e estimativas de seleção
+ Os 3 tipos de &#x03B2; (gradientes, parâmetros de modelos lineares, e covariância com aptidão)
+ Matriz &#x03B3;

### 6. *Consequências evolutivas: restrição, evolvabilidade e flexibilidade*

+ Leituras principais:

  * Klingenberg, C. P. “Developmental constraints, modules and evolvability.” Variation: A central concept in biology (2005): 219-247.
    
	* Ler do início até o final da seção "Evolvability and Constraints" (páginas 219 a 224). 

  * Collar, D. C., Wainwright, P. C., Alfaro, M. E., Revell, L. J., Mehta, R. S. “Biting disrupts integration to spur skull evolution in eels.” Nature communications, 5 (2014). 

  * Marroig, G., Shirai, L., Porto, A., de Oliveira, F., De Conto, V. “The evolution of modularity in the mammalian skull II: evolutionary consequences.”  Evolutionary Biology 36, no. 1 (2009): 136-148.

+ Leituras complementares:
  * Armbruster, W. S, Pélabon, C., Bolstad, G. H., Hansen, T. “Integrated phenotypes: understanding trait covariation in plants and animals.” Phil. Trans. R. Soc. B 369, no. 1649 (2014): 20130245.

  * Arnold, S. J. “Constraints on phenotypic evolution.” The American Naturalist 140 (1992): S85-S107.

# Tutoriais

**Tutorial 1**: [*Introdução ao R*](Tutoriais/inicio.html)

**Tutorial 2**: [*Básico de Álgebra Linear*](Tutoriais/algelin.html)

**Tutorial 3**: [*Estimando matrizes e componentes principais*](Tutoriais/matrizes.html)

**Tutorial 4**: [*Detectando Modularidade*](Tutoriais/detectando_modularidade.html)

**Tutorial 6**: [*Consequências Evolutivas*](Tutoriais/consequencias_evolutivas.html)
