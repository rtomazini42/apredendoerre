#fatores


v <- c("M","F","F","F","M","M")

a<-factor(v)

levels(a)

table(a)


#ordenar fatores
week= c("sunday","monday","tuesday","wednesday","thursday","friday","saturday","wednesday","tuesday","thursday","wednesday")
        
week<-factor(week, ordered=T)        

table(week)

week_ordered = factor(week,levels=c("sunday","monday","tuesday","wednesday","thursday","friday","saturday"), ordered= TRUE)
table(week_ordered)


#acessando elementos de fatores

x <- factor(c("solteiro","casado","casado","solteiro"))
x
x[3]

x[c(2,4)]

x[-1]

levels(x)[1]

#alterando elementos de fatores

x<-factor(x, levels = c("solteiro","casado","divorciado"))

x[2] <- "divorciado"

x[3] <- "viuvo" #não pode atribuir valores fora dos levels

levels(x)<-c(levels(x),"viuvo")

x[2] <- "viuvo"
