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

