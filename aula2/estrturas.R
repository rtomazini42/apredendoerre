#vetores

#criação
vetor <- c(1,2,3,4,4,5)
vetor2 <- c(3,2,1)
vetor3 <- c(vetor,vetor2)

vetor4 <- rep(0,100) #cria vetor de 100 0

#repeticao vetor
vetor5 <- c(2,3,5)
vetor6 <- c(TRUE, FALSE, TRUE, FALSE)
vetor7 <- c("Um","vetor","de","String")
vetor8 <- rep(vetor5,3)
vetor9 <- rep(c(1,2,3), 1:3)
vetor10 <- rep(c(1,2,3), each=3)


vetor11 <- seq(1,5,1)

summary(vetor)

#indexação númerica, acesso via indice.
vetor[2]
vetor[c(1,2)]
vetor[1:3]

#indexação lógica.
boat.names <-c("a","b","c","d")
boat.colors <- c("black","green","pink","blue")
boat.ages <- c(143,53,356,23)
boat.costs <- c(52,80,20,100)

boat.ages >100
boat.names == "c"

boat.names != boat.costs
boat.costs[boat.ages>100] #todos que são maior que 100
boat.names[boat.ages>100]

boat.costs>70 | boat.costs<40
boat.colors=="blue" & boat.costs>80

#%in%
x <-c("a","b","c","e","z")
x %in% c("a","b","c","d")

#wich = quais
v <- c(1,1,1,10,10)
which(v>3) #retorna indice
v[which(v>3)] #retorna elementos

x <- c(1,2,3,-5,-5,-5,-5)
sum (x>0) #conta maiores que 0
mean(x>0) #porcentagem dos maiores que 0

#nomes
x<-1:3
names(x) #NULL

names(x) <- c("um","dois","três")
names(x)
x["um"]

#alterar elemento
v <-c(2,3,0,5)
v[2]<-0
v

v<3
v[v<3] <-1


#criando vetor vazio
v <- vector(mode = "numeric", length = 3)

v[1]<-1
v<-c(v,5)
v

#valores não disponiveis, NA

v <- c(1,2,3,NA,6)
is.na(v)
mean(v)
mean(v,na.rm = TRUE) #removendo valor na

#Escore padronizado
#normalizar váriaveis
#colocar em escala comum para poder comparar
#padronizar um vetor é subtrair o vetor pela MÉDIA e divdir o resultado pelo desvio padrão do vetor
a<- c(5,3,7,5,5,3,4)
mean(a)
sd(a)

a.z <- (a-mean(a))/sd(a)
a.z
