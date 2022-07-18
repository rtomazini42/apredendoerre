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

PlantGrowth$weight
mean(PlantGrowth$weight)

#acessar duas colunas:
head(ToothGrowth[c("len","supp")])


#alterando o nome da primeira coluna para "a"
names(df)[1] <- "a"

#alterando o nome da segunda coluna para "b"
names(df)[2] <- "b"

#criar novo dataframe Survey
survey <- data.frame("index"= c(1,2,3,4,5), "age"=c(24,25,42,56,22))

#adiciona nova coluna no survey
survey$sex <- c("m","m","f","f","m")

#usando cbind
survey2 <- data.frame("index"= c(1,2,3,4,5), "age"=c(24,25,42,56,22))
sex <- c("m","m","f","f","m")
survey2 <- cbind(survey2, sex)


#criar data frame vazio

Data <- data.frame(Nome=character(0), idade=numeric(0), stringsAsFactors = FALSE)
Data[1,] <- c("José",30)
Data

#fatiamento
survey2[1,]
survey2[,3]
survey2[1:5, 2]

#criar um novo DF com apenas as linhas de TootGrowth
# $onde supp seja igual a "VC"

ToothGrowth.VC <- ToothGrowth[ToothGrowth$supp == "VC",]

#criar um novo DF com apenas as linhas de TootGrowth
# $onde supp seja igual a "OJ" e dose < 1
ToothGrowth.OJ.a <- ToothGrowth[ToothGrowth$supp== "OJ" & ToothGrowth$dose < 1,]

#criar um novo df com apenas as linhas de InsectSprays onde spray seja igual a "A" ou "B" e count<10
InsectSprays.novo <- InsectSprays[(InsectSprays$spray == "A" | InsectSprays$spray == "B") & (InsectSprays$count < 10),]


#funcao subset
#obter as linhas de ToothGrowth onde len < 20, supp == "OJ" e dose >=1
subset(x = ToothGrowth,
       subset = len <20 &
         supp == "OJ" &
         dose >= 1)

#subset(dataset, subset condiçoes)

#obtem as linhas de TootGrowth onde len > 30 e supp == "VC" porém apenas retonas as colunas len e dose
subset(x=ToothGrowth,
       subset= len>30 & supp == "VC",
       select = c("len", "dose"))

#subset(dataset, subset condiçoes, select = linhas que quero)

#qual o comprimento médio dos dentes dos porquinhos da india dado o suplemento OJ?

#step 1: criar um subconjunto do dataframe, OJ
oj <- subset(x=ToothGrowth, subset = supp== "OJ")

#step 2, calcular a media da coluna len com  o novo dataset
mean(oj$len)


#peso médio das galinhas de chikWight cuja dieta é 1
str(ChickWeight)
names(ChickWeight)

galinhas <- subset(x=ChickWeight, subset = Diet == 1)
galinhas2 <- subset(x=ChickWeight, subset = ChickWeight$Diet == 1)
mean(galinhas$weight)
mean(galinhas2$weight)


#Criar Data Frame Healt
health <- data.frame("age" = c(32,24,43,19), "height"=c(1.75,1.65,1.50,1.92), "weight" = c(70,65,62,79))
#forma tradicional de adicionar coluna de massa corporal (imc)
health$height/health$weight^2

#usando with
with(health, height/weight^2)


#saber quantidade de NA no dataset
total <- sum(is.na(airquality))
total

#apenas casos completos, sem na
x <- airquality[complete.cases(airquality),]
total <- sum(is.na(x))
total
