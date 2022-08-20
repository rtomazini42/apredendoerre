

#1
library(stringr)
strings <- c("5!eAZ",
             "!6!rrrrDFGT",
             "R99Tf34!RR",
             "123?aSd",
             "1.z11111")
grep("^([0-4][[:punct:]][a-z])", strings, value= TRUE)


#2
#fileURL<- "https://www.dropbox.com/s/ed4kb56305t1udj/gambler.txt?dl=0"
#download.file(fileURL, method = "auto", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/Prova/gambler.txt")
gambler <- read.table(file="gambler.txt", header = FALSE)
gambler <- read.delim(file="gambler.txt", header = FALSE)
install.packages("readr")
library(readr)

gambler <- read_file("gambler.txt")
nchar(gambler) 

#3
install.packages("babynames")
install.packages("stringr")
library(babynames)
library(stringr)
sessionInfo()
babynames <- as.data.frame(babynames)
?str_count
babynames$name
babynames$nameqtdA <- str_count(babynames$name, pattern = "a")
babynames$nameqtdA == 5

bebesNome<- subset(babynames,subset = babynames$nameqtdA == 5)

for(i in seq_along(babynames)){
  ifelse(babynames$nameqtdA == 5){
    print(babynames$name)
  }
}

contagem <- ifelse(babynames$nameqtdA == 5, babynames$name, "False")
print(lista[ranque,"name"])
str_count(babynames$name, pattern = "a")


#4
#fileURL<- "https://www.dropbox.com/s/rl86524vniqb8fh/Forbes2000_V2.csv?dl=0"
#download.file(fileURL, method = "curl", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/Prova/Forbes.csv")
forbes <- read.csv("Forbes2000_V2.csv", header = T)
library(dplyr)

ranqueamento <- function(ranque, categoria=NULL, opcao){
  if(opcao== 1){
    lista <- arrange(forbes,desc(marketvalue))
    print(lista[ranque,"name"])
    print(lista[ranque,"category"])
  }
  if(opcao== 2){
    empresas <- subset(forbes,subset = forbes$category == categoria)
    lista <- arrange(empresas,marketvalue)
    print(lista)
    print(lista[ranque,"name"])
    print(lista[ranque,"category"])
  }
  
}
empresas <- subset(forbes,subset = forbes$category == "Bancos hardware & equipment")
forbes$category
ranqueamento(ranque=1,opcao=1)
ranqueamento(ranque=1, categoria="Software & services", opcao=2) 


#5
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
help(diamonds)
diamondsVeryGood <- subset(diamonds,subset = diamonds$cut == "Very Good" & diamonds$carat > 0.7)
mean(diamondsVeryGood$price)

diamondsBiggerCarat <- subset(diamonds,subset = diamonds$carat > 0.5)
min(diamondsBiggerCarat$price)

prop.table(table(diamonds$cut == "Premium"))

#6
install.packages("AER")
library(AER)
?Fertility
data("Fertility")
sessionInfo()

#7
catfish <- read.csv("Catfish.csv", header = T)
catfishTrat2 <- subset(catfish,subset = catfish$Tank == "Tank2" & catfish$Sex =="Male")
mean(catfishTrat2$April)


catfishAcimaDaMedia <- subset(catfish,subset = catfish$April > mean(catfish$April))
table(catfishAcimaDaMedia$Tank)

ifelse(catfish$April>mean(catfishTrat2$April), "V", "F")


#8
babynames[[5:10]]
