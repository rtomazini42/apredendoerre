#média

#mean()
#rowMeans() 
#colMeans()

mean(airquality$Temp)

options(digits = 4)
mean(airquality$Temp)

rowMeans(airquality[c("Temp", "Wind")]) #medias das colunas com base nas colunas que queria somar

colMeans(airquality[c("Temp", "Wind")])


#MEdiana
#Posição central de uma séria de dados
# se numero impar de dados, o valor no meio da série será a mediana
# Se for par, a mediana é a média dos valores centrais

median(airquality$Temp)

#moda
#Valor que ocorre com maior frequência
#Não há função pronta, temos que implementar

x<- c(10,10,2,3,4,5,6)

y <- table(x)
#pegar elemento com maior frequencia
names(y)[wich(y==max(y))]
names(table(x))[table(x)==max(table(x))]

names(table(airquality$Temp))[table(airquality$Temp)==max(table(airquality$Temp))]

table(airquality$Temp) # quantas vezes quada um se repete

moda <- function(x){
  names(table(x))[table(x)==max(table(x))]
  
}
moda(airquality$Temp)

#Quartis, valores de uma série que a dividem em 4 partes iguais
#usando os conceitos de mediana
#q1,q2,q3
summary(airquality$Temp)


#Medidas de dispersão
#minimo Maximo, aplitude

min(airquality$Temp)
max(airquality$Temp)

#amplitude:
at<- max(airquality$Temp) - min(airquality$Temp)
at


#Desvio padrão
#Dispersao de dados em relação a média
#calcular antes a variancia

#Caculando variancia
var(airquality$Temp)

#desvio padrão
sd(airquality$Temp)

mean(airquality$Temp)

#temperaturas "normais"
cat("[", mean(airquality$Temp)-sd(airquality$Temp), "-", mean(airquality$Temp)+sd(airquality$Temp),"]")




#Estatística Inferencial
#Usar uma amostra da grande base de dados
#Erro amostral
#Aleatoria e simples
#Estratificada

#sample(x, size=1, replace = FALSE, prob = NULL)
#x é o conjunto de onde os dados serão retirados
#size é o número de amostras
#replace indica se a amostra deve ser feita com ou sem reposição
#prob permite remostarem de cada elemento com probabilidades diferentes

sample(x=1:10, size =5)
sample(x=1:10, size =10, replace = TRUE)

#Um programa que simula o lançamento de uma moeda justa 100 vezes
x<-c("cara","coroa")
y<-sample(x, size =100, replace = TRUE )

table(y)

#Amostragem simples
#Para especificar a probabilidade de cada elemento no vetor x ser selecionado, use o argumento prob.
#Usamos o agumento prob, que é padronizado a somar 1
sample(x=c("a","b"),
       prob = c(.9,.1),
       size=10,
       replace=TRUE)


#Um programa que simula o lançamento de uma moeda justa 100 vezes tendencioso para COROA

x<-c("cara","coroa")
y<-sample(x, size =100, replace = TRUE , prob = c(.1,.9))
table(y)



#amostragem Estratificada 
install.packages('splitstackshape')
library(splitstackshape)
stratified(indt, group=c("x","y"), size=10,replace=FALSE)
#idnt é o conjunto de dados do qual as amostras são retiradas
#group são os grupos de onde as amostras são estratificadas
#size é o numero de amostras
#Replace indica se deve ser feita reposição

stratified(iris, group = "Species", size=5, replace=T)
#5 amostras de cada uma das especies

#infert proporcionais a cada grupo da coluna education
levels(infert$education)

sum(infert$education=="0-5yrs")
sum(infert$education=="6-11yrs")
sum(infert$education=="12+ yrs")

sum(infert$education=="0-5yrs")/length(infert$education)
sum(infert$education=="6-11yrs")/length(infert$education)
sum(infert$education=="12+ yrs")/length(infert$education)


stratified(infert, group="education", size = c(.1,.5,.4), replace=T)


#tamanho da amostra 
#Um economista deseja estimar a renda média para o primeiro ano de trabalho de um Cientistada Computação;admite-se que esta população seja infinita.Quantos valores de renda devem ser tomados,se o economista deseja ter um nível de confiança 95% e um erro máximo de 500 reais?Suponha que saibamos,por um estudo prévio,que para tais rendas,σ=R$6250,00
sd <- 6250
erro <- 500
nc <- (1-0.95)/2
n<- ((qnorm(nc,lower.tail = F)*sd)/erro)**2
n

# E se não soubermos o erro, usamos 20% da variancia

#OmunicípiodeExuemPernambucodesejafazerumapesquisadopesodepapéisdescartadosmensalmentepelasresidênciasdacidade,paraefeitodeplanejamentodacoletadelixo.Opesomédiodepapeldescartado,porumaamostratestede31residências,foide9,4281kgeodesviopadrãodessaamostrafoide4,1681kg.Comoacidadepossui2.637residências,deseja-secalcularotamanhodaamostraasercoletada,comgraudeconfiançade95%eerronamargemde1kg.
sd <- 4.1681
N <- 2637
erro <- 1
nc <- (1-0.95)/2
n<- (qnorm(nc,lower.tail = F)**2*sd**2*N)/((erro**2*(N-1))+(qnorm(nc, lower.tail = F)**2*sd**2))
n

sd <- 4.1681
N <- 2637
erro <- 1
nc <- (1-0.99)/2
n<- (qnorm(nc,lower.tail = F)**2*sd**2*N)/((erro**2*(N-1))+(qnorm(nc, lower.tail = F)**2*sd**2))
n

#Se desvio padrão for desconhecido? 
#Ultilizar dp = amplitude/4


