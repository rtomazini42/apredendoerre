#criar a lista

AvRuralinda <-list(Nome="joão",cpf=000000, def=c("Respeito","Compromisso","Amizade"))

str(AvRuralinda)

#nomes
names(AvRuralinda)

#acessar elementos da lista
AvRuralinda$Nome

AvRuralinda[3]
AvRuralinda[[3]][1]


#alterando elementos
AvRuralinda[[3]][3]<-"Amor"
AvRuralinda[[3]][3]

#deletar elementos
AvRuralinda[2]<-NULL

#adicionar elementos
AvRuralinda$CPF<-111111

str(AvRuralinda)

#lista num vetor

x<-unlist(AvRuralinda)

x
