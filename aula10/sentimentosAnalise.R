install.packages("syuzhet")
library(rtweet)
library(tm)
library(wordcloud)
library(syuzhet)
library(dplyr)


tweets <- search_tweets("Abin", n=500, lang="pt")
typeof(tweets)

#convertendo para formato DF
#tweets <- twListToDF(tweets)
dataFrame <- tweets %>% 
  as_tibble()

tweets <- dataFrame$text


#pontuando os tweets
s<-get_nrc_sentiment(tweets)

#plotando grafico com sentimentos
barplot(colSums(s), las=2, col=rainbow(10),
        ylab = "Contagem", main = "Sentimentos em relação a ABIN")
