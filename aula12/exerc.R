elementos <- c("a","b","c","d","e")
x<- c(5,7,12,15,10)

tabela <- data.frame(elementos, x, stringsAsFactors = F)



sd <- sd(tabela$x)
erro <- 500
nc <- (1-0.95)/2
n<- ((qnorm(nc,lower.tail = F)*sd)/erro)**2
n

mean(tabela$x)

var(tabela$x)


sd <- 4250.00
erro <- 300
nc <- (1-0.90)/2
n<- ((qnorm(nc,lower.tail = F)*sd)/erro)**2
n


sd <- 5.0
N <- 1500
erro <- 1.5
nc <- (1-0.955)/2
n<- (qnorm(nc,lower.tail = F)**2*sd**2*N)/((erro**2*(N-1))+(qnorm(nc, lower.tail = F)**2*sd**2))
n

sd <- 6.205
erro <- 1
nc <- (1-0.98)/2
n<- ((qnorm(nc,lower.tail = F)*sd)/erro)**2
n

var(10.00:30.0)
sd(10:30)

sd <- 6.205
N <- 5000
erro <- 1.5
nc <- (1-0.955)/2
n<- (qnorm(nc,lower.tail = F)**2*sd**2*N)/((erro**2*(N-1))+(qnorm(nc, lower.tail = F)**2*sd**2))
n

#>30
pnorm(31, mean= 50, sd= 10)

#<30
pnorm(30, mean= 50, sd= 10) -pnorm(1, mean= 50, sd= 10)

#Distribuição normal padrão
#desviopadrao = 1
#media 0
#z
#z=3-1/1

#P(X>1)
1-pnorm(1)

#P(x<2)
pnorm(-2)

#P(x<0)
pnorm(0)

#P(X>1)
1-pnorm(1.28)

qnorm(0.9, mean= 90, sd= 21)


#
dv <- 3.8
mediaAmostra <- 30.2
n<-100
nc<-(1-0.95)/2
#Erro> 
error<-dv/sqrt(n)

limiteInferior <- mediaAmostra-(qnorm(nc, lower.tail= F)*error)
limiteSuperior <- mediaAmostra+(qnorm(nc, lower.tail= F)*error)

cat("[",limiteInferior, "-", limiteSuperior,"]")

#penultima
dv <- 47
mediaAmostra <- 658
n<-100
nc<-(1-0.90)/2
#Erro> 
error<-dv/sqrt(n)

limiteInferior <- mediaAmostra-(qnorm(nc, lower.tail= F)*error)
limiteSuperior <- mediaAmostra+(qnorm(nc, lower.tail= F)*error)

cat("[",limiteInferior, "-", limiteSuperior,"]")



carbono <- c(4.37, 3.63, 2.78, 5.46, 2.18, 6.07, 3.24, 5.89, 4.86, 4.64)


dv <- sd(carbono)
mediaAmostra <- mean(carbono)
n<-10
nc<-(1-0.90)/2
#Erro> 
error<-dv/sqrt(n)
limiteInferior <- mediaAmostra-(qnorm(nc, lower.tail= F)*error)
limiteSuperior <- mediaAmostra+(qnorm(nc, lower.tail= F)*error)

cat("[",limiteInferior, "-", limiteSuperior,"]")