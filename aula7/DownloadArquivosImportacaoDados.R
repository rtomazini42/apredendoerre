#como organizar os dados?
#1. Importe os dados
#2. Verifique, limpe e prepare seus dados (80% do projeto)
#3. Realize as análises
#4. exporte os resultados
#5. Limpe o ambiente R e feche a sessão

#Colunas devem conter variáveis
#As linhas observações, medidas, casos, etc
#Primeira linha para nome das variáveis
#Insira NA em celulas de valores ausentes
#Evitar nomes que contenham espaços
#armazenas em csv ou txt para ser lido pelo R

#importar dados: setwd(), getwd()
# fileURL<-"https://www.dropbox.com/s/c6nhu4v7yq9pyto/Snail_feeding.csv?dl=1"
# download.file(fileURL, destfile= "C:\\Users\\ermes\\Downloads\\Snail_feeding.csv", method= "curl")
# list.files("C:\\Users\\ermes\\Downloads\\")


#extensões .txt, .dat ou .csv
#read.table() arquivos .txt
#read.csv() arquivos .csv




fileURL<- "https://uce083227837c57c48034575dee7.dl.dropboxusercontent.com/cd/0/get/Bqgde75dHeuz0bvyJimhduc1bCJRHnZYGwulV5l6wnDAcIGzRHC5Y2lQuBJN20H4ZTwm94JaRXlGJ4nGH7S0GYg50xlUAmC-nl5mY0RhDy0dNKV1xuLQAgBXKkhannbs-L3kGX90yx1QBCiBAVSiqaQf3QB-yI78Dwj2otI-IBg9xQ/file?dl=1#"
download.file(fileURL, method = "curl", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/aula7/pica-pau.txt")

V1 <- read.table("pica-pau.txt", header = TRUE, sep ="", dec=".")
# sep significa como o conjunto de dados do R é separado.
# sep="," quando as entradas são separadas por VÍRGULA. 
# sep="nt" quando as entradas são separadas por TAB
# sep="" quando as entradas são separadas por ESPAÇO.
# dec: Determina o separador decimal; O default é ”.”

sum(V1$especie == "verde")



fileURL<-"https://uc49e8e095a5fb390753f4ec4ef8.dl.dropboxusercontent.com/cd/0/inline/BqiajK8Qpe4J4zIivkT5BcXypp0kbGNvexm4IgoYwcp-PUa2ePjp1BkCbB-d-yAHQVy1ic3ZiwC89r7T3pnMF795gJW29aMs0dTsKHSvYdjC8xvocMYhvi1HojD5ugjKb7IaJanS5Oo3_2lr8Gg3IEDjq5MOF_aQiwl16wxbpKfIKg/file?dl=1#"
download.file(fileURL, method = "curl", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/aula7/Snail_feeding.csv")

Caracol_data <- read.csv(file="Snail_feeding.csv",
                         header = T, #cabeçario
                         strip.white = T, #remove espaços em branco antes ou depois dos dados
                         stringsAsFactors=TRUE, #normalizar como factor os dados
                         na.strings = "") #substitui vazias por NA

str(Caracol_data)
#os resultados mostram coisas que não deveriam estar ali, vamos cortar
Caracol_data <- Caracol_data[,1:7]
str(Caracol_data)

#se tiver fator com numericos, converter para caractere e depois para numérico
#Caracol_data$Distance <- as.character(Caracol_data$distance)
#Caracol_data$Distance <- as.numeric(Caracol_data$distance)
str(Caracol_data$Sex)
unique(Caracol_data$Sex)
levels(Caracol_data$Sex)
#levels(Caracol_data$Sex)
#[1] "female"   "female s" "male"     "Male"    
#[5] "males" 
levels(Caracol_data$Sex) [2] <- "female"
levels(Caracol_data$Sex) [3] <- "male"
levels(Caracol_data$Sex) [3] <- "male"
levels(Caracol_data$Sex)

#for(element in Caracol_data$Sex){
#  print(Caracol_data$Sex)
#  if(is.na(Caracol_data$Sex[element])){
#    print("element")
#    next
#  }
#  else{
#    if(Caracol_data$Sex[element] == "males" | Caracol_data$Sex[element] == "Male"){
#      Caracol_data$Sex[element] = "male"
#      print("Alterado")
#    }
#    if(Caracol_data$Sex[element] == "female s"){
#      Caracol_data$Sex[element] = "female"
#    }
#    
#  }
#
#}

str(Caracol_data)
Caracol_data$Distance <- as.character(Caracol_data$Distance)
Caracol_data$Distance <- as.numeric(Caracol_data$Distance)
#ao converter alguns se tornam NA
#para corrigir isso:

which(is.na(Caracol_data$Distance))
Caracol_data$Distance[682] <- 0.58
Caracol_data$Distance[755] <- 0.356452

which(is.na(Caracol_data$Distance))

str(Caracol_data)

#verificar se existem linhas duplicadas e remove:

which(duplicated(Caracol_data))
index <- which(duplicated(Caracol_data))
Caracol_data<-Caracol_data[-index,]
which(duplicated(Caracol_data))
str(Caracol_data)


summary(Caracol_data)

#linha muito fora do padrão, vamos trocar:
Caracol_data[which(Caracol_data$Depth > 2),]
Caracol_data[8,6] <- 1.62 #linha 8, variavel 6
summary(Caracol_data)

#sort e order
#ordenar vetores únicos:
sort(Caracol_data$Depth)

#ordenar data frame
Caracol_data[order(Caracol_data$Depth,Caracol_data$Temp),]

#decrescente
Caracol_data[order(Caracol_data$Depth,Caracol_data$Temp,decreasing= TRUE),  ]


#exportar dados
write.table() #para o .txt

write.csv( Caracol_data, #objeto que quero exportar
           file="Caracol_data_checked.csv", #nome do arquivo
           row.names = FALSE #exclui nome das linhas
  
) #para o csv

#podemos trabalhar com outros formatos, como xlsx, XML e Json