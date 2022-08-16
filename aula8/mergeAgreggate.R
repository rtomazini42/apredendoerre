#merge() : combina dados
#aggregate()> agregação agrupada
#dplyr
#tidyr



#merge -> mesclagem de duas tabelas

risco.survey <- data.frame(
  "ID.part" = c(1,2,3,4,5),
  "av.risco" = c(3,4,5,3,1)
)

felicidade.survey <- data.frame(
  "ID.part" = c(4,2,5,1,3),
  "av.risco" = c(20,40,50,90,53)
)

Combinado.survey <- merge(x=risco.survey,
                          y=felicidade.survey,
                          by="ID.part",
                          alt=T)


#aggreagate()
#divide um data frame x em subconjuntos, cria um sumários estatístico para cada um dos subconjuntos e retorna o resultado de uma forma conveniente
#estrutura?
aggregate(formula = dv ~ iv, #dv é a variavel IV é o grupo
          FUN = fun, #função que se deseja aplicar
          data = df) #objeto dataframe contendo dv e iv


#Qual o pppeso médio das galinhas de ChickWeight para cada dieta?
aggregate(x = weight ~ Diet,
          FUN = mean,
          data = ChickWeight)

airquality


#media de temperatura para cada mês em Airquality
aggregate(x = Temp ~ Month,
          FUN = mean,
          data = airquality)

#subset
#Qual o pppeso médio das galinhas de ChickWeight para cada dieta se os filhotes tivessem menos de 10 dias?
aggregate(x = weight ~ Diet,
          FUN = mean,
          subset = Time<10,
          data = ChickWeight)


#media de temperatura para cada mês em Airquality, mas somente para casos que o vento foi menor que 10
aggregate(x = Temp ~ Month,
          FUN = mean,,
          subset = Wind<10,
          data = airquality)



