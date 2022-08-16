#organizador de dados
#integra com o dplyr

install.packages("tidyr")
library(tidyr)

#gather
#junta linhas que poderiam estar na mesma coluna

USArrests$State <- row.names(USArrests)
head(USArrests)

#fazer junção das colunas

df1 <- USArrests %>%
  gather(key = "tipo_crime", 
         value="valor",
         -State)

head(df1)

filter(df1, tipo_crime=="Murder")
filter(df1, State=="Alaska")


#spread
#inverso do gather, espalha varias colunas

df2 <- df1 %>%
  spread(key = "tipo_crime", value = "valor")

head(df2)


#use a função spread para decompor a variavel spray em 
#relação a count do dataset InsectSprays
library(tidyr)
library(dplyr)

colnames(InsectSprays)

df3 <- InsectSprays %>%
  spread(key="spray",value="count")

#precisamos criar uma coluna com valores unicos no dataset
df3 <- InsectSprays %>%
  group_by(spray) %>%
  mutate(grouped_id = row_number()) #nova coluna com nome da coluna

df4 <- df3 %>%
  spread(key="spray",value="count")%>%
  select(-grouped_id)


head(df3)


####gather
df5 <- df4 %>% gather(key = "spray", value="valor","A","B","C","D","E","F")
df5 <- df4 %>% gather(key = "spray", value="valor")#ou assim


###unite 
#junta colunas em um só usando um operador

df6 <- USArrests%>%
  unite(col="Murder_Assault",
        Murder,Assault,
        sep="_")

head(df6)

###separate
#separar colunas

df7 <- df6%>%
  separate(col = "Murder_Assault",
           into = c("Murder", "Assault"),
           sep="_")
