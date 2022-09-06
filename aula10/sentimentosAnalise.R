install.packages("syuzhet")
library(rtweet)
library(tm)
library(wordcloud)
library(syuzhet)
library(dplyr)


tweets <- search_tweets("@UP80BR", n=500, lang="pt")
typeof(tweets)

#convertendo para formato DF
#tweets <- twListToDF(tweets)
dataFrame <- tweets %>% 
  as_tibble()

tweets <- dataFrame$text


#write(tweets, file = "tweetsUP.txt")

#pontuando os tweets
s<-get_nrc_sentiment(tweets)

#plotando grafico com sentimentos
barplot(colSums(s), las=2, col=rainbow(10),
        ylab = "Contagem", main = "Sentimentos com a palavra @UP80BR em 500 tweets")





#processar o texto ?? com tm
#converter os dados em um formato chamado corpus que
#pode ser processado pelo tm

VS <- VectorSource(tweets)
corpus <- Corpus(VS)

#Verificar o corpus gerado
inspect(corpus)


#limpeza

#tudo min??sculo
corpus <- tm_map(corpus, content_transformer(tolower))

#removendo pontua????o
corpus <- tm_map(corpus, removePunctuation)

#removendo espa??os extras em branco
corpus <- tm_map(corpus, stripWhitespace)

#remover numeros
corpus <- tm_map(corpus, removeNumbers)

#remover stopwords
corpus <- tm_map(corpus, removeWords, stopwords('portuguese'))
corpus <- tm_map(corpus, removeWords, stopwords('english'))

#verifica????o
inspect(corpus)


#converter para o formato de matrix

tdm <- as.matrix(TermDocumentMatrix(corpus))

#Fornecer as frequencias ordenadas de cada palavra

fre <- sort(rowSums(tdm), decreasing = TRUE)

#escolhedo um subconjunto dos dados
aux<- subset(fre, fre>2)

aux2 <- aux[2:26]

#plotar gr??fico de barras
par(mar=c(8,4,4,4))
barplot(aux2, las=2, col ="#6d271b", main ="Palavras mais usadas",names.arg = names(aux2),)



wordcloud(corpus, min.freq = 1, max.words = 65,
          random.order = FALSE, rot.per = 0.25,
          colors=brewer.pal(10,"Dark2"),res=8,scale=c(10,.25))


barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")