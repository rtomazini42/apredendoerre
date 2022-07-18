#criando objeto dataframe

A <- c(1,2,3,4)
B<- c("João","Maria","José","Pedro")
c <- c(3.0,5.0,2.5,1.0)
meu.branco <- data.frame("ID"= A, "Nome"= B, "Peso" =c, stringsAsFactors = FALSE)

meu.branco
str(meu.branco)


#acessando data sets prontos
head(PlantGrowth)
tail(PlantGrowth)
names(PlantGrowth)
str(PlantGrowth)
summary(PlantGrowth)

