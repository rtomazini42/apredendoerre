apply(iris[ , 1:4], 1, FUN = mean)
apply(iris, 2, FUN = mean)
colMeans(iris)
apply(iris[ , 1:4], 2, FUN = mean)
sapply(iris[ , 1:4], 2, FUN = mean)
mapply(iris[ , 1:4], mean)
apply(iris[1:4, ], 2, FUN = mean)


tapply(iris$Petal.Length, iris$Species, mean)
apply(iris[,3], iris$Species, mean)
with(iris, tapply(Petal.Length, Species, mean))
sapply(iris, 2, mean)
mapply(iris$Petal.Length, iris$Species, mean)
mean(iris$Petal.Length, iris$Species)

#while(T){
#  print("Executando")
#}


for (i in 1:4){ 
  print(i)
} 

for (i in 1:4){ 
  break
} 

for (i in 1:4){ 
  next
} 

mapply(rep, c("Rural","amo"), 10:1)


for(i in 1:length(1:3)){
  for(j in 1:10){
    print(i+j-1)
  }
}

student.df <- data.frame (nome= c ("Sue", "Eva", "Henry", "Jan"), sexo= c ("f", "f", "m", "m"), anos= c (21,15,17,19))
ifelse(student.df$sexo=="m"&student.df$anos<18, "V", "F")
student.df$menor<-ifelse(student.df$sexo=="m"&student.df$anos<18, "V", "F")


USArrests.colnames
colnames(USArrests)
lapply(USArrests,FUN=sum)



x =0
a =0
b =-5

if(a>0){
  if(b<0){
    x = x+5
  }else if(a >5){
    x = x +4
  }else{
    x=x+3
    }
  }else{
    x=x+2
  }
}
print(x)

x = 0
while(x<100){
  x=x+2
}
print(x)