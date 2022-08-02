v<-c(20,30,4,934,1077,22)
paste(c(v),'m', sep="")
nchar(v)

poema = read.delim("aula5/poema.txt", header=FALSE)
nchar(poema)
poema
grep("pedra", poema, value= TRUE)

txt = c("eeer","3ca1n","fg","can","man","sigmean","fa3nta","fan")
grep(pattern = "(c|m|f)an", txt, value=TRUE)


library(stringr)
txt = "eeer3GHJca1nfgSigmanfaUIOntafan"
str_extract_all(string=txt,pattern="[A-Z]|[0-9]") 

str_extract_all(string=txt,pattern="[[:upper:]]|[[:digit:]]") 


txt = "tttyUFRPE19PPGIAkjgkjghk2j34j321UFRPEcapdPPGIA"
str_extract_all(string=txt,pattern="UFRPE[\\w]{2,4}PPGIA")

mlk = read.delim("aula5/mlk.txt", header=FALSE)
mlk
grep(pattern = "(n|N)egr(a|o)(s)?", readLines("aula5/mlk.txt"), value = TRUE)



grup <- c("abababa","aaba","aabbaa","aba","aabababa")
grep(pattern="a(ab)*a", grup, value = T)


grup <- c("abc","ac","abbb","bbc")
grep(pattern="ab+c?", grup, value = T)

grup <- c("abc","abbbbbbbb","azc","abcbcbcbc","ac","asccbbbbcbcccc")
grep(pattern="a.[bc]+", grup, value = T)

grup <- c("abc","xyz","abc|xyz")
grep(pattern="abc|xyz", grup, value = T)

grup <- c("battle!",
            "Hot",
          "green",
          "swamping.",
          "jump up.",
          "undulate?",
            "is.?")
grep(pattern="[a-z]+[\\.\\?!]", grup, value = T)


grup <- c("Butt=",
            "BotHEr,=",
            "Ample",
          "FIdDlE7h=",
            "Brittle =",
            "Other.=")
grep(pattern="[a-zA-Z]*[^,]=", grup, value = T)


grup <- c("A. B",
          "c! d",
          "e f",
          "g. H",
          "i? J",
          "k L")
grep(pattern="[a-z][\\.\\?!]\\s+[A-Z]", grup, value = T)

grup <- c("very fat man",
          "fat tall man",
          "very very fat ugly man",
          "very very very tall man")
grep(pattern="(very )+(fat )?(tall|ugly) man", grup, value = T)


grup <- c("<an xml tag>",
            "<opentag> <closetag>",
            "</closetag>",
            "<>",
            "<with attribute=”77”>")
grep(pattern="<[^>]+>", grup, value = T)


aux<- read.delim("https://www.dropbox.com/s/4yr2woj8r1p5sbn/gapminderDataFiveYear.txt?dl=1")
grep(pattern="\\s(and)\\s",aux$country, value= TRUE)


grep(pattern="^Ba",aux$country, value= TRUE)
grep(pattern="land$",aux$country, value= TRUE)
grep(pattern="Ga",aux$country, value= TRUE)
