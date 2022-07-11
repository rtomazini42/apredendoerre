fator<-gl(2,100,labels = c("M","F"))
drinks <- factor(c("beer","beer","wine","water"))
summary(drinks)
mean(drinks=="beer")

levels(drinks)[1] <- "water"
drinks



nomes=c("João", "Paula", "Maria", "Ingrid", "José", "Marcos")
pesos=c(80, 65, 70, 58, 78, 70)
alturas=c(1.70, 1.66, 1.65, 1.60, 1.76, 1.70)
IMC<-pesos/(alturas*2)
nomes[1]
lista_pessoas=list(nomes,pesos,alturas,(pesos/(alturas*2))
str(lista_pessoas)
View(lista_pessoas)
lista_pessoas[[1]][1]
table(lista_pessoas)
lista_pessoas[[4]][3]
