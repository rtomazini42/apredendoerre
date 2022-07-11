myList <-list(Nome="Renan",CPF=0000000, resp=c(TRUE,FALSE,TRUE))
myList
str(myList)


#acessando elementos
myList[2]

myList[c(T,F,T)]

myList$Nome

myList[[3]][3]

#alterando elementos
myList[2]<- 11111111
myList

myList[[3]][2]<-TRUE
myList[3]
