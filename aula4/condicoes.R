#estruturas condicionais
x <- -5
if(x>0){
  print("Non negative")
}

x<-2
if(x <0){
  print("Negativo")
} else if(x>0){
  print("Positivo")
} else{
  print("Zero")
}

#condicao em cadeia

x <- c("Rural","é","Maravilhosa")
if("rural" %in% x){
  print("Rural está contida na palavra encontrada na primeira condição")
} else if ("Rural" %in% x){
  print("Rural encontrada na segunda condicao")
} else {
  print("Rural não encontrada")
}


#ifelse <- Esse comando é para que cada elemento de um vetor passe por um teste lógico
a<- c(5,7,2,9,8,12)
ifelse(a%%2==0, "even", "odd")


#while

i <- 1
while (i<6){
  print(i)
  i = i+1
}

v<- c("Olá", "while loop")
cnt<-2
while(cnt<7){
  print(v)
  cnt=cnt+1
}

#for <- permite iterar sobre os elementos de uma sequencia
#essas sequencias podem ser: strings, listas, tuplas ou buffers
#for(variavel in sequencia){
#<comandos>}

for(k in 1:100){
  print(k)
}


a <- c("Eu","amo","a Rural")
for(x in a){
  print(x)
}


#calcular a medias das colunas de airquality
saida <- vector("double", ncol(airquality)) #vetor vazio com numero de colunas de airquality

for(i in seq_along(airquality)){
  saida[i]<- mean(airquality[,i],na.rm = T)
}


#calcular a soma das colunas 5 e 6 de airquality
saida<-vector()
seq<- 5:6
for(i in seq){
  saida<-cbind(saida,mean(airquality[,i], na.rm = T)) 
}

#break ou next
#break dentro do loop e ele sai do loop
#next pula para o inicio do loop
x<-1:5
for(val in x){
  if(val==3){
    break
  }
  print(val)
}

x<-1:5
for(val in x){
  if(val==3){
    next
  }
  print(val)
}

#repeat
#executa várias vezes até encontrar break

x<-1
repeat{
  print(x)
  x = x+1
  if(x==6){
    break
  }
}



