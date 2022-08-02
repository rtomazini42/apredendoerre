#funcoes Basicas string

print("Hello world")
cat("Eu", "amo", "a", "Rural")


paste("Eu", "amo", "a", "Rural")
paste("Eu", "amo", "a", "Rural", sep="_")


txt <- ("  Eu amo a Ruralinda  ")
strsplit(txt,split = " ")

toupper(txt)
tolower(txt)


library(stringr)
str_trim(txt)

#subistuição de texto
txt1 <- ("Eu amo a Ruralinda")
gsub("Ruralinda", "UFRPE", txt1)


#fatiando string
substr(str_trim(txt),1,6)

#conta a quantidade de caracteres
nchar(txt)


#expressões regulares
#necessario pacote stringr
strings <- c("^ab","ab","abc","abd","abe", "ab 12")
grep("ab.",strings, value = TRUE)

texto = c("Eu", "Amo", "a", "Rural")
grep(pattern = "al", texto, value = TRUE)
grep(pattern = "[al]", texto, value = TRUE)


txt <-("Eu.amo.a.Ruralinda")
gsub(pattern = "\\.", " ", txt)


strings <-c("a","ab","acb","accb","acccb","accccb")
grep("ac*b", strings, value= TRUE)

grep("ac+b", strings, value= TRUE)

grep("ac?b", strings, value= TRUE)

grep("ac{2}b", strings, value= TRUE)
grep("ac{2,}b", strings, value= TRUE)
grep("ac{2,3}b", strings, value= TRUE)


grep("^ac", strings, value= TRUE)

grep("ab$", strings, value= TRUE)

string <-c ("Eu amo a Rural 2020")
gsub("\\d", "_", string)


strings <- c("^ab","ab","abc","abd","abe", "ab 12")

grep("abc|abd",strings, value = TRUE)


texto <-"Eu gosto de Cerveja! #cerveja, @cade_minha_cerveja, Eu gosto (v3.2.2) #rr2020"
# remove espaços em branco ou tabs> 
gsub(pattern= "[[:blank:]]", replacement= "", texto)

# Substitui pontuação por espaçoesem branco> 
gsub(pattern= "[[:punct:]]", replacement= " ", texto)

# remove caracteres alfanuméricos>
gsub(pattern= "[[:alnum:]]", replacement= "", texto)


#removendo caracteres
string<- "Meu numero é 1006781"
gsub(pattern = "[^0-9]", replacement = "",x=string)


#retornando o index de um valor
valores <-c("A1","A2","A3","A4","A5","A6","A7")
grep(pattern = "A1|A4", x= valores, value= F)
