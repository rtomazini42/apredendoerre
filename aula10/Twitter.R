install.packages("twitterR")
#install.packages("rtweet")

#library(twitteR)
library(rtweet)
library(tm)
library(wordcloud)


#chaves de acesso

API_Key <- "61TkRahBoehFNx9LDG5bisob1"
API_Key_Secret <- "5UyzoZRuA3ClGmihjDru1YS14kRgYBo3ShAtlfcRvMimoW0G1M"
Access_Token <- "153453487-NXsIctctRcQC9HDEAZtfxr1o1K2YcCzwV7JkZqF6"
Access_Token_Secret <- "XXK40bMtwMFUSMVigye7TjZOorp1k7LhdY5nNob4FgtAj"

token <- create_token(app= "ape_is_not_monkey",
                      
                      API_Key,
                      
                      API_Key_Secret,
                      
                      Access_Token,
                      
                      Access_Token_Secret)

#essa função abre o navegador pra autenticação
auth_setup_default()


#consultando o twitter
tweets <- search_tweets("Bolsonaro", n=500, lang="pt")

#colapsando todos os twittes em um vetor de uma posição
tweets_t <- paste(tweets$text, collapse = " ")

#criando corpus
tweets_S <- VectorSource(tweets_t)
corpus <- Corpus(tweets_S)


#limpeza
corpus <- tm_map(corpus, tolower)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, removeWords, stopwords('portuguese'))

inspect(corpus)

#remover URLs
removeURL <- function(x) gsub("http[^[:space:]]*","", x)
corpus <- tm_map(corpus, content_transformer(removeURL))



#remover qualquer coisa que não seja letras em português e espaço
removeNumPunct <- function(x) gsub("[^[:alpha:][:space:]]","", x)
corpus <- tm_map(corpus, content_transformer(removeNumPunct))

#criar matriz
dtm <- TermDocumentMatrix(corpus)
dtm <- as.matrix(dtm)

fre <- sort(rowSums(dtm), decreasing = TRUE)


top20 <- fre[0:20]
top20<-data.frame(top20)
top20 <- cbind(palavra = rownames(top20), top20)
rownames(top20) <- 1:nrow(top20)


#Gerar nuvem

wordcloud(corpus, min.freq = 3, max.words = 150,
          random.order = FALSE, rot.per = 0.15,
          colors=brewer.pal(8,"Dark2"), scale = c(3,.8))


