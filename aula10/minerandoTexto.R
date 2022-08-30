#renan tomazini
#2022

#pacotes a serem instalados
install.packages("tm")
install.packages("wordcloud")
install.packages("readr")
library(tm)
library(wordcloud)
library(readr)


#carregar
motivos <- read.csv("motivos.csv", header = T, stringsAsFactors = FALSE)
motivos <- read_csv("motivos.csv")


#colapsando todos os comentários em um vetor de uma posição

motivos <- paste(motivos$`2019.1`, collapse = " ")

#processar o texto é com tm
#converter os dados em um formato chamado corpus que
#pode ser processado pelo tm

VS <- VectorSource(motivos)
corpus <- Corpus(VS)

#Verificar o corpus gerado
inspect(corpus)


#limpeza

#tudo minúsculo
corpus <- tm_map(corpus, content_transformer(tolower))

#removendo pontuação
corpus <- tm_map(corpus, removePunctuation)

#removendo espaços extras em branco
corpus <- tm_map(corpus, stripWhitespace)

#remover numeros
corpus <- tm_map(corpus, removeNumbers)

#remover stopwords
corpus <- tm_map(corpus, removeWords, stopwords('portuguese'))

#verificação
inspect(corpus)


#converter para o formato de matrix

tdm <- as.matrix(TermDocumentMatrix(corpus))

#Fornecer as frequencias ordenadas de cada palavra

fre <- sort(rowSums(tdm), decreasing = TRUE)

#escolhedo um subconjunto dos dados
aux<- subset(fre, fre>2)

#plotar gráfico de barras
barplot(aux, las=2, col = rainbow(10))


wordcloud(corpus, min.freq = 1, max.words = 60,
          random.order = FALSE, rot.per = 0.35,
          colors=brewer.pal(8,"Dark2"))
