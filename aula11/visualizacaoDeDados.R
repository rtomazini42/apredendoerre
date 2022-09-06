# Produzir gráficos de maneira fácil e rápida

# Três maneiras diferentes de criar gráficos em R
## Gráficos tradicionais (básicos) do R
## Pacote lattice
## Pacote ggplot2

par()



# Gráfico de Linhas

### Geralmente usado para indentificar tendencias nos dados
### Função plot()

### exemplo:
x<-1:15
y<- x**1.75
plot(x,y)
# conectando os pontos:
plot(x,y, type = "l")

plot(x,y, type = "o", pch=2)
plot(x,y, type = "o", pch='@')

#alterar tamanho e cor
plot(x,y, type = "o", pch=2,
    cex=2, col="red")

#titulo e eixos
plot(x,y, type = "o", pch=2,
     cex=2, col="red",
     xlab = "Eixo X",
     ylab = "Eixo y",
     main= "Gráfico simples")


#tamanho das fontes
plot(x,y, type = "o", pch=2,
     cex=2, col="red",
     xlab = "Eixo X",
     ylab = "Eixo y",
     main= "Gráfico simples",
     cex.lab=1.5, cex.axis=2, cex.main=2)
#adiciona nova linha
t<- x**3
lines(t, type = "o", col="blue")

#alterar tamanhos dos eixos x e y
#xlim = e ylim=
plot(x,y, type = "o", pch=2,
     cex=2, col="red",
     xlab = "Eixo X",
     ylab = "Eixo y",
     main= "Gráfico simples",
     cex.lab=1.5, cex.axis=2, cex.main=2,
     xlim = c(0,15),
     ylim= c(0,3375))
lines(t, type = "o", col="blue")


#adicionar legenda
#legend(x,y)
legend("topleft", pch = c(2,1),
       col = c("red","blue"),
       legend = c("Dados 1", "Dados 2"))

#para conter mais de um gráfico
#par(mfrow=c())
#par(mfrow=c(1,2)) divide a janela gráfica em um frame que permite acomodar dois gráficos em uma linha
par(mfrow=c(1,2)) #apenas uma janela com 2 gráficos

plot(x,y, type = "o", pch=3, cex=2, col="red")
plot(x,y, type = "o", pch=3, xlab="Eixo x", ylab = "Eixo Y",
     main = "Gráfico simples", cex.lab=1.5, cex.axis=2)


#gráfico de dispersão
#scatterplot
#Gráficos de dispersão são um dos tipos de gráficos mais usados na analise de dados
#São usados para representar correlação entre duas variáveis ou mais variáveis
#No R, ultiliza-se a função plot()


#dataset iris
plot(iris$Sepal.Length,
     iris$Petal.Length, main = "Iris dados")

plot(iris$Sepal.Length,
     iris$Petal.Length, main = "Iris dados", col = iris$Species)

#aumentar elementos
plot(iris$Sepal.Length,
     iris$Petal.Length, main = "Iris dados", col = iris$Species,
     pch=17, cex=2,
     xlab = "Sepal Length",
     ylab = "Petal Length")

#adicionar legend
legend(x= 4.5, y =7, pch = 17,
       col = c(1:3), legend = levels(iris$Species))


#Gráfico de barras
#barplot()

max.temp <- c(30,35,40,38,25,24,23)

barplot(max.temp)

#incrementando
barplot(max.temp, main="Temperatura Recife",
        xlab = "Dias", ylab = "Temperatura", 
        names.arg = c("Segunda","Terca","Quarta","Quinta","Sexta","Sabado","Domingo"),
        col = "yellow")

barplot(max.temp, main="Temperatura Recife",
        xlab = "Dias", ylab = "Temperatura", 
        names.arg = c("Segunda","Terca","Quarta","Quinta","Sexta","Sabado","Domingo"),
        col = rainbow(7))

#na horizontal só usar horiz = TRUE
barplot(max.temp, main="Temperatura Recife",
        xlab = "Dias", ylab = "Temperatura", 
        names.arg = c("Segunda","Terca","Quarta","Quinta","Sexta","Sabado","Domingo"),
        col = rainbow(7),
        horiz = T)


#Gráfico de barras empilhadas
#são criadas usando matriz

colors <- c("green", "orange", "brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

#matriz de valores
Values <- matrix(c(2,1,0,11,9,4,8,7,3,12,5,2,8,10,11),
                 nrow = 3, ncol = 5, byrow = T)

barplot(Values, main= "Rendimento total",
        names.arg = months, xlab = "Meses", ylab ="Rendimento",
        col = colors)


#beside para facilitar o entendimento
barplot(Values, main= "Rendimento total",
        names.arg = months, xlab = "Meses", ylab ="Rendimento",
        col = colors,
        beside = T)

legend("topleft", pch = c(15,15,15), col = colors,
  legend= regions)

#Histograma
#Visualizar e analisar os dados
#divide varivel em eixo x e eixo y
#hist()

Temperature <- airquality$Temp
hist(Temperature, col="grey")

Temperature <- airquality$Temp
hist(Temperature, col="grey", density = 10)

#Podemos escolher o numero de quebras da variavel com breaks=

hist(Temperature, col="grey", breaks = 20)

#se eu quiser densindade ao invés da frequencia:
hist(Temperature, col="grey", freq = F)

#Adicionar curva de densidade
densityTemp <- density(Temperature)
lines(densityTemp)


#Grafico de Pizza
#proporções de diferentes classes de dados
#pie()
x <- c(32,12,50,53)
labels <- c("Recife","Poa","SP","RJ")
pie(x,labels)

sum(USArrests$Murder)
typeof(USArrests)
pie(USArrests$Murder, rownames(USArrests))
head(trees)
pie(trees$Volume, rownames(trees))

#colocar titulo e cores
x <- c(32,12,30,53)
labels <- c("Recife","Poa","SP","RJ")
pie(x,labels, main = "Gráfico de cidades",
    col=rainbow(4))

#com as porcentagens
pct <- round(x/sum(x)*100)
lbls <- paste(labels, pct)
lbls <- paste(lbls,"%", sep="")
pie(x,labels=lbls,main = "Gráfico de cidades",
     col=rainbow(4))

legend("topright",
       legend= labels,
       cex = 0.8, fill=rainbow(length(x)))

#outro
x <- c(32,12,30,53)
labels <- c("Recife","Poa","SP","RJ")
pct <- round(x/sum(x)*100)
lbls <- paste(pct,"%", sep="")
pie(x,labels=lbls,main = "Gráfico de cidades",
    col=rainbow(4))

legend("topright",
       legend= labels,
       cex = 0.8, fill=rainbow(length(x)))

#Diagrama de caixa
#Box plot, distribuição de dados

boxplot(mtcars$mpg)

#verificar a relação entrempg e cyl
boxplot(mpg ~ cyl, data=mtcars,
        xlab = "Número de cilindros",
        ylab = "Milhas por galão",
        main="Dados de milhagem")

head(ChickWeight)
boxplot(weight ~ Diet, data=ChickWeight,
        xlab = "Dieta",
        ylab = "Peso",
        main="Media de Peso por dieta")

#tirando outlines dos dados
boxplot(weight ~ Diet, data=ChickWeight,
        xlab = "Dieta",
        ylab = "Peso",
        main="Media de Peso por dieta",
        outline = F)

#Salvamento automatico de dados criados

#Abra o ambiente grafico especificando o formato do arquivo
#que deseja salvar seu grafico usando funções como jpeg(),png(),svg() ou pdf()
#Argumentos adicionais como largura e altura da imagem também podem ser usados

#criar o gráfico

#Fechar o ambiente gráfico com a função dev.off()

pdf(file="saving_plot4.pdf")
Temperature <- airquality$Temp
hist(Temperature)
dev.off()