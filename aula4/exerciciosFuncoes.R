y<-5
mult<- function(x,y){
  return(x*y)
}
mult(10)
y<-5

mult<- function(x){
  return(x*y)
}
mult(10)



prisoes<- function(estados,tipoPrisoes){
  print(estados)
  local <- USArrests[locais,tipoPrisoes] 
  print(paste("O total de prisões do estado ",rownames(local),"é:",colSums(local)))
  
  #(paste("O total de prisões é", rowsum(local)))
  return(local)
}

locais = c("Nevada","Washington")
tipos = c("UrbanPop","Assault")
prisoesData<-prisoes(locais,tipos)
prisoesData<-prisoes("Alaska",tipos)

colnames(USArrests)
USArrests[1,]
v = which(USArrests[1,]=="Alabama")
v
USArrests[[0]]
rownames(USArrests)
local <- if(row(USArrests) == "Indiana"){
  return(USArrests[local])
}
(attributes(USArrests)$row.names ==  "Miami")

local <- USArrests[c("Utah","Alaska"),] 
locais = c("Utah","Alaska","Indiana")
local <- USArrests[locais,] 

res <- lapply(X = USArrests[locais,], FUN= colnames())


prisoes<- function(estados,tiposPrisoes){
  local <- USArrests[c(estados),tiposPrisoes]
  total<- sum(colSums(local))
  return(total)
}

locais = c("Nevada","Washington")
tipos = c("UrbanPop","Assault")
prisoesData<-prisoes(locais,tipos)
prisoes(estados="Miami", tiposPrisoes=c("Rape","Murder"))
prisoes(estados=c("California ","Miami", "Arizona"), tiposPrisoes=("Assault"))
prisoes(estados=c("Pennsylvania","Mississippi", "Nebraska"), tiposPrisoes=c("Rape","UrbanPop","Assault"))
prisoes(estados=c("Vermont","Wisconsin", "Texas"), tiposPrisoes=c("Rape","Assalto"))


minhasNotas_1<-function(Exe_1,VA_1,Exe_2,Proj,VA_2,VA_3,Opt,threshold){
  if(Opt==1){
    return 
  }
}
