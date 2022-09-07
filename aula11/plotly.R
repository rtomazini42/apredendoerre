#Plotly
install.packages("plotly")
library(plotly)



ChickWeight$Diet
fig <- plot_ly(data=ChickWeight, x=~weight, y=~Diet)

#Gráfico de dispersão
plot_ly(data=ChickWeight, x=~weight, y=~Diet)

fig <- plot_ly(data=iris, x=~Sepal.Length, y=~Petal.Length)
fig


#grafico de linha
trace_0 <- rnorm(100,mean=5)
x <- c(1:100)
data <- data.frame(x,trace_0)
fig<- plot_ly(data, x=~x, y=~trace_0, mode='lines')
fig


#gráfico de barra
Animals <- c("Macacos", "Girafas", "Micos")
SF_Zoo <- c(20,14,26)

data <- data.frame(Animals,SF_Zoo)

fig<- plot_ly(data, x=~Animals, y=~SF_Zoo, type='bar')
fig

#Gráfico de caixa
#Boxplot
#plot_ly(data=Dataframe, y=~coluna, type='box')
data <- data.frame(values=rnorm(50), index =c(1:50))

plot_ly(data = data, y=~values, type='box')
plot_ly(data = data, x=~values, type='box')

#Gráfico de pizza
#Legendar
#plot_ly(data=Dataframe, labels=~coluna_label,values=~coluna_values, type='pie')

presentes <- c(38,44,3)
genero <-c("Mulher","Homem","Não binario")

data <-data.frame(genero,presentes)

fig<- plot_ly(data, labels=~genero, values=~presentes, type='pie')

fig

#tabelas
plot_ly(
  type='table',
  columnwidth = c(50,50), #divisão da tabela
  columnorder = c(0,1), #ordenada apenas pelo segundo fator
  header = list( #cabeçario, estilo
    values =c("Cut","Price"),
    align= c("center","center"),
    line=list(width=1.5, color = 'black'),
    font = list(family="Arial", size = 12, color=c("black"))
  ), 
  cells=list( #valores da tabela
    values = rbind(diamonds$cut,diamonds$price),
    align= c("center","center"),
    line = list(width=1.5, color="black"),
    font = list(family="Arial", size = 12, color=c("black"))
    
  )
)            


