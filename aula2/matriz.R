#Matriz é uma coleção de valores de um mesmo tipo
#composto por colunas e linhas

v<-matrix(1:12, 3,3) #elementos, linhas e colunas

dim(v)
nrow(v)
ncol(v)
rownames(v)
colnames(v)
cbind(v)
rbind(v)


A<-matrix(0,3,4)

A<-matrix(nrow=3, ncol=4)

rownames(A) <- c("linha1","linha2","linha3")
colnames(A) <- c("Coluna1","coluna2","coluna3","coluna4")
colnames(A)
rownames(A)

#acrescentando elementos
coluna5 <- c(1,1,1)
linha4 <- c(1,1,1,1,1)
A=cbind(A, coluna5)
A=rbind(A, linha4)
A

#acessando elementos
A[3,1]
A[,1]
A[3,]

A<- matrix(1:12,3,4)
rownames(A) <- c("linha1","linha2","linha3")
colnames(A) <- c("coluna1","coluna2","coluna3","coluna4")
coluna5<-c(0,0,0)
linha4<- c(1,1,1,1,1)
A=cbind(A,coluna5)
A=rbind(A,linha4)
A

#acessar apenas a matriz 2x2 de A
A[1:2,1:2]

#acessar apenas os valores maiores que 3
A[,]>3
A[A[,]>3]


#soma
A<-matrix(1,3,3)
A
B<-matrix(c(1,1,1,2,2,2,3,3,3),3,3)
B
A+B


#multiplicaçao
A%*%B

#transposta
t(B)


B<-matrix(c(1,3,4,3,25,40,3,3,3),3,3)
B

colMeans(B) #media de todas as colunas
colSums(B) #soma todas as colunas
rowMeans(B)
colSums(B)
