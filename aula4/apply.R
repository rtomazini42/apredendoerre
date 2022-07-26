#familia apply

Bebidas <-c("Brahma","Cacildis","Heineken","Skol","Corona","BudLight","DeBron","Budweiser","Ekäut","SnowBeer","Bavária","Bohemia","Crystal","Kaiser", "Itaipava","Schin","Antarctica","Amstel","Colorado","Capunga")
set.seed(100)
precos<-runif(20, min = 2, max= 10)
vendas <-runif(20, min = 20, max= 100)
estoque <-sample(c(20:50), size= 20, replace= TRUE)


# criação de um dataset
dataset_loja<-data.frame(id_produto= c(1:20), Bebidas = Bebidas, preco= precos, total_vendas= vendas, total_estoque= estoque)
head(dataset_loja)

#funcao apply: aplica uma função a um array (matriz ou data frame) a partir de uma margem especificada
apply(X = dataset_loja[,-c(1,2)], MARGIN = 2, FUN =sum)
#Colunas que será aplicada, margem que a função será aplicada, função
#coluna com exceção da 1 e 2, margem linha 1 coluna 2, função

#lapply -> aplicado para outros objetos como listas, vetores e dataframes, retorna uma lista
lapply(X = dataset_loja[,-c(1,2)], FUN = sum)

#sapply >- A saída é apenas um vetor
sapply(X = dataset_loja[,-c(1,2)], FUN = sum)

sapply(X = dataset_loja, FUN = class)

sapply(X = dataset_loja, FUN = length)

sapply(X = dataset_loja$Bebidas, FUN = nchar)


#adicionando variavel ao dataset
dataset_loja$fornecedores <- sample(c("Fornecedor 1","Fornecedor 2","Fornecedor 3","Fornecedor 4"), size =20, replace = TRUE)

#media dos precos pra cada fornecedor
tapply(dataset_loja[,"preco"], dataset_loja[,"fornecedores"], mean)

#mapply um sapply que recebe como argumentos uma função e um conjunto de argumentos, A função é aplicada em cada um dos argumentos sequencialmente

mapply(FUN= function(x,y,z)((x*y)+z), dataset_loja[,c("preco")],dataset_loja[,c("total_estoque")],dataset_loja[,c("total_vendas")])

aux<-c("Eu", "amo", "a rural")
mapply(paste, aux, "**", sep="")

mapply(rep, "Eu amo a rural", 1:5)
