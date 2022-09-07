#plotly

library(plotly)

#Gráfico de dispersão
fig <- plot_ly(
  data = iris,
  x =~Sepal.Length,
  y =~Petal.Length
)

fig

#renomeando eixos do gráfico

fig <- fig %>% layout(
  xaxis = list(title="Sépalas"),
  yaxis = list(title="Pétalas")
)
fig

#alterando paleta de cores
fig <- plot_ly(
  data = iris,
  x =~Sepal.Length,
  y =~Petal.Length,
  color = ~Species
)

fig

fig <- plot_ly(
  data = iris,
  x =~Sepal.Length,
  y =~Petal.Length,
  color = ~Species,
  colors = "Dark2"
)

fig <- fig %>% layout(
  xaxis = list(title="Sépalas"),
  yaxis = list(title="Pétalas")
)
fig

#Renomer valores na legenda
levels(iris$Species)
levels(iris$Species) <- c("Setosa","Versicolor","Virginica")

fig <- plot_ly(
  data = iris,
  x =~Sepal.Length,
  y =~Petal.Length,
  color = ~Species,
  colors = "Dark2"
)

fig <- fig %>% layout(
  xaxis = list(title="Sépalas"),
  yaxis = list(title="Pétalas")
)
fig

#Gráfico de linha
data <- data.frame(
  x=c(1:100),
  trace_0=rnorm(100, mean = 5),
  trace_1=rnorm(100, mean = 0),
  trace_2=rnorm(100, mean = -5)
)

fig <- plot_ly(
  data,
  x = ~x,
  y = ~trace_0,
  mode= 'lines',
  name= 'trace 0'
)
fig

#multiplas linhas em gráfico

fig <- plot_ly(
  data,
  x= ~x
) %>%
  add_trace(
    y = ~trace_0,
    mode= 'lines',
    name= 'trace 0'
  ) %>%
  add_trace(
    y = ~trace_1,
    mode= 'lines+markers',
    name= 'trace 1'
  ) %>%
  add_trace(
    y = ~trace_2,
    mode= 'markers',
    name= 'trace 2'
  ) 
fig


#Multiplas barras

Animals <- c("Macacos", "Girafas", "Micos")
DoisIrmaos_Zoo <- c(20,14,22)
Outro_Zoo <- c(13,23,19)
data <- data.frame(Animals, DoisIrmaos_Zoo, Outro_Zoo)

fig <- plot_ly(
  data,
  x =~Animals,
  y =~DoisIrmaos_Zoo,
  type = 'bar',
  name = "Zoo Dois Irmãos"
) %>%
  add_trace(
    y =~Outro_Zoo,
    name= "outro Zoo"
  ) %>%
  layout(
    yaxis = list(title="Quantidade")
  )

fig


#gráfico de caixa
data <- data.frame(
  values<-rnorm(50),
  index=c(1:50)
)

fig <- plot_ly(
  data=data,
  y=~values,
  type="box"
)
fig

#Dois gráficos
data <- data.frame(
  values1=rnorm(50),
  values2=rnorm(50),
  index=c(1:50)
)

fig <- plot_ly(
  data = data,
  y=~values1,
  type='box',
  name = "values 1"
) %>%
  add_trace(
    y=~values2,
    name = "Values 2"
) %>%
  layout(
    yaxis = list(title="valores")
    
  )
fig

#Gráfico de pizza
presentes <- c(51,82,3)
genero <- c("Mulher","Homem","NB")

data <- data.frame(
  genero, presentes
)

fig <- plot_ly(
  data,
  labels=~genero,
  values=~presentes,
  type = 'pie'
)
fig


#tabela
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
