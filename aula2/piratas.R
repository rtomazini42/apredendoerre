piratas<-c("Heidel","Andrew","Becki","Maidsen", "David")

beber<-c(12,8,1,6,2)
escalada<-c(100,520,430,200,700)

#padronizar a variavel beber
beber.n <- (beber-mean(beber))/sd(beber)

#padronizar a variavel escalada
escalada.n <- (escalada-mean(escalada))/sd(escalada)

media <-beber.n+escalada.n/2

max(media)

piratas[max(media)==media]
