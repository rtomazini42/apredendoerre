#Dplyr 


install.packages("dplyr")
library(dplyr)


#filter seleciona linhas especificas de acordo com o desejado
filter(airquality, Temp<70, Wind>14)


#select ultilizado na seleção de variaveis (colunas)

head(select(airquality,Temp, Wind))

#mutate, usada para criar novas variaveis

df <- mutate(airquality, 
             celsius = (airquality$Temp-32)/1.8)


head(df)


#arrange, semelhante ao order, para ordenar colunas

head(arrange(df, celsius))


#summarise: Transforma um vetor em um único número de acordo com a função
summarise(airquality,
          maxfahrenheit=max(Temp),
          Contador=n()) #maior elemento e a quantidade de elementos que foram considerados

#grup_by, agrupando elementos
temp_by_month<-group_by(airquality,Month)
summarise(temp_by_month,
          maxfahrenheit=max(Temp)) #assim obtem a temperatura maxima para cada mês

#operador %>% (chamado de pipe)
#concatenamos váruias operações em sequencia com o operador

airquality %>%
  group_by(Month) %>%
  filter(Temp >80) %>%
  summarise(
    SomaTemp = sum(Temp),
    mediaWind = mean(Wind)
  )


#filter(dataset, varible == numeric_value)

#dataset %>% filter(varible == numeric_value)

?mtcars
#selecionar todas as colunas, exceto a de transmissão (am)
mtcars %>% select(-am)

#selecionar linhas 10 e 25

mtcars %>% slice(c(10,25))

#ordenar dataset
mtcars %>% arrange(mpg)

mtcars %>% arrange(desc(mpg))


#selecionar as linhas onde a quantidade de cilindros (cyl) seja igual  6

mtcars %>% filter(cyl==6)

#selecionar as linhas onde a quantidade de cilindros (cyl) seja igual a 6 
#e engrenagens (gear) seja igual a 5
mtcars %>% filter(cyl==6 & gear ==5)


#determinar a média e a mediana da variavel Milhas/galão (mpg)

mtcars %>% summarise(media=mean(mpg), median(mpg))

#determinar a média e a mediana da variável Milhas/galão (mpg) de acordo com o tipo do motor(vs)

mtcars %>% 
  group_by(vs) %>%
  summarise(media=mean(mpg),median(mpg))

#determinar a media e mediana da variavel milhas/galão (mpg) de acordo com o
#tipo de motor(vs) e o tipo de transmissão
mtcars %>%
  group_by(vs,am)%>%
  summarise(media=mean(mpg), median(mpg))


#determinar a média e a mediana da variável Milhas/galão (mpg) de acordo com o tipo do motor(vs)
#e transmissão (am) porém apenas para carros com mais de 4 cilindros (cyl)
mtcars %>%
  group_by(vs,am)%>%
  filter(cyl>4)%>%
  summarise(media=mean(mpg), median(mpg))

