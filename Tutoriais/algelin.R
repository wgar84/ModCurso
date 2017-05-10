# definindo alguns vetores
u <- c(0, -4)
v <- c(2, 2)
w <- c(-1, 3)

# essa pequena função facilita bastante representar vetores na janela gráfica
plotVector <- function(v, color = 'black', width = 1)
  arrows(x0 = 0, y0 = 0, x1 = v[1], y1 = v[2],
         col = color, lwd = width, angle = 10)

# vamos apenas inicializar uma região gráfica vazia;
# xlim e ylim se referem aos limites desta janela;
# xlab e ylab são os nomes de cada eixo (nada, no caso).
plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), xlab = '', ylab = '', asp = 1)

# vamos também desenhar linhas que representam o sistema de coordenadas
for(i in (-5):5)
{
  abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
  abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
}

# agora, podemos usar a função que desenha vetores
plotVector(u, 'darkgreen')
plotVector(v, 'blue')
plotVector(w, 'red')
## Soma de vetores

u <- c(5, 1)
v <- c(-1, 3)

# esta função desenha um vetor 'v' a partir da ponta de outro vetor 'u'
plotDislocatedVector <- function(v, u, color = 'black', width = 1)
    arrows(x0 = u[1], y0 = u[2], x1 = u[1] + v[1], y1 = u[2] + v[2],
           col = color, lwd = width, angle = 10)

# novamente, vamos inicializar um gráfico vazio
plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), xlab = '', ylab = '', asp = 1)

for(i in (-5):5)
    {
        abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
        abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
    }

plotVector(u, 'blue')
plotDislocatedVector(v, u, 'red')
plotVector(u + v, 'purple', width = 2)


### Exercício 1
# 1. O que acontece com um vetor após esta operação?

u <- c(2, 1)

plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), xlab = '', ylab = '', asp = 1)

for(i in (-5):5)
{
  abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
  abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
}

plotVector(u, 'blue')
plotVector(2 * u, 'red')

# 2. O que acontece se você multiplicar um vetor por um número negativo?

plotVector(-2 * u, 'pink', width = 3)

### Exercício 2
require(evolqg)

# o pacote evolqg possui uma função que normaliza um vetor
?Normalize

# vamos gerar alguns vetores aleatórios em duas dimensões

# primeiro, vamos gerar alguns números advindos de uma distribuição normal padrão
rand.vec <- rnorm(2000)

# agora, vamos organizar esses números como vetores em uma tabela
rand.vec <- matrix(rand.vec, nrow = 1000, ncol = 2)

# cada vetor aleatório corresponde a uma linha desta tabela
# quero normalizar cada vetor, utilizando a função aaply
?aaply
norm.vec <- aaply(rand.vec, 1, Normalize)

# agora, vamos plotar estes vetores
# aqui, não vou me preocupar em representá-los como setas
# apenas o ponto no plot entre suas coordenadas é suficiente
plot(norm.vec, asp = 1, pch = 20)


# 1. Os pontos parecem desenhar uma forma em particular? Que forma é essa?

# 2. Aumente o número de vetores gerados para mil.

# 3. Você consegue elaborar uma razão para esta forma estar sendo gerada?

## Bases

## Exercício 3

# 1. Escreva o vetor $(5, 1)$ como uma combinação linear dos vetores $(-2, 1)$ e $(1, 3)$.

u <- c(-2, 1)
v <- c(1, 3)
w <- c(5, 1)

# aqui vão suas soluções
# descomente o código para executar essas linhas quando você achar as soluções

# -2 alpha + 1 beta = 5
#  1 alpha + 3 beta = 1

A = matrix(c(-2, 1, 1, 3), 2, 2)
b = c(5, 1)

ab = solve(A, b)

alpha <- ab[1]
beta  <- ab[2]

plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), xlab = '', ylab = '', asp = 1)

for(i in (-5):5)
    {
        abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
        abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
    }

# confira sua solução
# enquanto vc não achar alpha e beta e atribuir valores
# esse código não vai funcionar
plotVector(alpha * u, 'darkgreen')
plotDislocatedVector(beta * v, alpha * u, 'blue')
plotVector(w, 'red', width = 2)
# se estiver certo a ponta dos vetores vai coincidir

# 2. Escreva o mesmo vetor $(5, 1)$ como combinação linear dos vetores $(-2, 1)$ e $(2, -1)$.

# o mesmo código deve ajudar você a entender o que está acontecendo nesta situação
u <- c(-2, 1)
v <- c(2, -1)
w <- c(5, 1)

A = matrix(c(-2, 1, 2, -1), 2, 2)
b = c(5, 1)

ab = solve(A, b)

alpha <- ab[1]
beta  <- ab[2]


plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), xlab = '', ylab = '', asp = 1)

for(i in (-5):5)
    {
        abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
        abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
    }

plotVector(u, 'darkgreen')
plotVector(v, 'blue')
plotVector(w, 'red', width = 2)

# Matrizes

## primeiro vamos definir R
R <- matrix(c(0, 1,
              -1, 0), byrow = TRUE, nrow = 2)

## e dar uma olhada nesta matriz
R

## vamos definir alguns vetores
u <- c(3, 2)
v <- c(-1, 4)
w <- c(0, -2)

## e operar sobre eles com R
f.u <- R %*% u
f.v <- R %*% v
f.w <- R %*% w

## essa operação aí em cima representa a multiplicação de matrizes e vetores
## por isso eu disse que você não precisa se preocupar com isso

## vou usar esse código bastante, então vamos fazer uma pequena função
plotEmptyCanvas <- function()
    {
        plot(NA, xlim = c(-6, 6), ylim = c(-6, 6), xlab = '', ylab = '', asp = 1)
        for(i in (-6):6)
        {
            abline(h = i, col = ifelse(i != 0, 'grey', 'black'))
            abline(v = i, col = ifelse(i != 0, 'grey', 'black'))
        }
    }

par(mfrow = c(1, 2))

# plotar os vetores que entram
plotEmptyCanvas()
plotVector(u, 'darkgreen')
plotVector(v, 'blue')
plotVector(w, 'red')

# e os vetores que saem
plotEmptyCanvas()
plotVector(f.u, 'darkgreen')
plotVector(f.v, 'blue')
plotVector(f.w, 'red')



## vamos desenhar um quadrado
quadrado <- matrix(c(0, 0,
                     0, 2,
                     2, 2,
                     2, 0), byrow = TRUE, nrow = 4)

S <- matrix(c(2, 1,
              0, 1), byrow = TRUE, nrow = 2)

f.quadrado <- S %*% t(quadrado)
## esse função t() troca as linhas pelas colunas da matriz quadrado
## isso garante que cada aresta do quadrado seja um vetor coluna pra ser multiplicado

f.quadrado <- t(f.quadrado)
## cada aresta do quadrado transformado é uma linha agora

## vamos também olhar para o que acontece com os vetores que definem a base canônica do R2
ihat <- c(1, 0)
jhat <- c(0, 1)

f.ihat <- S %*% ihat
f.jhat <- S %*% jhat

par(mfrow = c(1, 2))

plotEmptyCanvas()
points(quadrado, type = 'b')
plotVector(ihat, 'purple')
plotVector(jhat, 'orange')

plotEmptyCanvas()
points(f.quadrado, type = 'b')
plotVector(f.ihat, 'purple')
plotVector(f.jhat, 'orange')

## Exercício 4

# Vamos considerar o que acontece com composições entre matrizes.

# 1. Obtenha o produto entre a matriz $\mathbf{R}$, definida no início desta seção, e os vetores $(2, 0)$ e $(1, 1)$. 
# Escreva estes produtos na forma de combinações lineares entre as colunas da matriz $\mathbf{R}$.

# 2. Leia o código abaixo: 


### aqui a gente roda o paralelogramo
fg.quadrado <- t(R %*% t(f.quadrado))

plotEmptyCanvas()
points(fg.quadrado, type = 'b')

# Este código aplica a matriz R sobre a saída de multiplicar 
# as arestas do quadrado por S. 
# Você consegue escrever um código que faça o oposto 
# (pega o quadrado, aplica R, depois aplica S e mostra o resultado)?

g.quadrado <- t(R %*% t(quadrado))

plotEmptyCanvas()
points(g.quadrado, type = 'b')

gf.quadrado <- t(S %*% t(g.quadrado))



### 3. As duas formas geradas são iguais?

par(mfrow = c(1, 2))

plotEmptyCanvas()
points(fg.quadrado, type = 'b')

plotEmptyCanvas()
points(gf.quadrado, type = 'b')
