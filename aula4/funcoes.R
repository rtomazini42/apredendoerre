#para criar a função se usa a seguinte estrutura:

#nome <- function(arg1,arg2,...){
#comando 1
#...
#comando n
#return(resultado)
#}

#para usar nome(arg1,arg2,...)


#calcula média
media<- function(dados){
  med<- sum(dados)/length(dados)
  return(med)
}

x<-c(1,3,4,5)
media(x)

#sub
sub <- function(x,y){
  return(x-y)
}
sub(x=15,y=10)
sub(y=10,x=15)
sub(15,10)

sub <- function(x,y=100){
  return(x-y)
}
sub(50)
sub(50,200)

#variaveis de dentro da função não são acessadas no ambiente global


y<-50
sub <- function(x){
  return(x-y)
}
sub(100)

#para ultilizar um objeto de escopo global dentro de uma função se usa o operador <<-

sub<-function(x,y){
  y<<-y
  return(x-y)
}

sub(100,35)
y

#argumento "..."
#indica que pode ser passado numero indefinido de parametros
addPercent <- function(x, mult=100,...){
  percent <-round(x*mult,...)
  paste(percent,"%", sep="")
}

addPercent(c(0.1556,0.3333,0.8,56), digits =2)


#chamar funcoes de outro script:
#source(<<nome do arquivo>>)
source("ultilitario.R")
soma(10,13)
sub(15,12)
