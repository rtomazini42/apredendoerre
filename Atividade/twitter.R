#install.packages("twitterR")
install.packages("rtweet")

#library(twitteR)
library(rtweet)
library(tm)
library(wordcloud)


packageurl <- "https://cran.r-project.org/src/contrib/Archive/rtweet/rtweet_0.7.0.tar.gz"
install.packages(packageurl, contriburl=NULL, type="source")

#chaves de acesso

API_Key <- ""
API_Key_Secret <- ""
Access_Token <- ""
Access_Token_Secret <- ""

token <- create_token(app= "ape_is_not_monkey",
                      
                      API_Key,
                      
                      API_Key_Secret,
                      
                      Access_Token,
                      
                      Access_Token_Secret)

#essa função abre o navegador pra autenticação
auth_setup_default()

#consultando o twitter
tweets <- search_tweets("Brasil", n=500, lang="pt")

#salvando dataFrame
#save(tweets,file="datTweetsBrasil.Rda")
saveRDS(tweets, file="datTweetsBrasil.Rda")

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

write.csv(fre, "brasilTweets.csv", row.names = TRUE)
#write_delim(tweets_t, "brasilTweetsTexto.txt")
writeLines(tweets_t, "brasilTweetsTexto.txt")         
