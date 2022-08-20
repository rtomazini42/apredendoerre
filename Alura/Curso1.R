v1 <- read.csv("dados.csv",
               header = T,
               strip.white = T,
               stringsAsFactors = T,
               na.strings = "")


#O dataset tem Renda, provinda das pessoas de mais de 10 anos de idade com trabalho mensal

#idade - Idade do morador na data de referência em anos

#altura - Aleatoria

#UF, código por estado.

#Sexo 0 masculino, feminino

#cor, 0 indigena, 2 branca, 4 preta, 6 amarela, 8 parda, 9 sem declaração

sessionInfo()
install.packages("dplyr")
library(dplyr)


?select

v1
head(v1,5)
str(v1)

summary(v1)


anosDeEstudo <- select(v1,Anos.de.Estudo)

unique(select(v1,Anos.de.Estudo))

arrange(unique(select(v1,Anos.de.Estudo)),Anos.de.Estudo)

head(arrange(v1, Renda),10)

#transformando todos em vetor:
c(arrange(unique(select(v1,Anos.de.Estudo)),Anos.de.Estudo))

sprintf('De %s até %s anos', min(v1$Idade), max(v1$Idade))

library(glue)
glue('De {min(v1$Idade)} até {max(v1$Idade)} anos')


glue('De {min(v1$Altura)} até {max(v1$Altura)} anos')


####aula2

table(v1$Sexo)
#0 homens, 1 mulheres
prop.table(table(v1$Sexo)) *100

prop.table(table(v1$Cor)) *100

dist_freq_qualitativas <- cbind(freq = table(v1$Sexo), percent = prop.table(table(v1$Sexo)) * 100)
dist_freq_qualitativas

c('frequencia', 'Porcentagem %')
c('Masculino', 'Feminino')

colnames(dist_freq_qualitativas) <- c('frequencia', 'Porcentagem %')
rownames(dist_freq_qualitativas) <- c('Masculino', 'Feminino')
dist_freq_qualitativas
