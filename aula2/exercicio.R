
getwd()
setwd("aula2")
notas<-load("vetor.RData")


max(vetor01)
mean(vetor01, na.rm=TRUE)
summary(vetor01, na.rm=FALSE)
sd(vetor01, na.rm = TRUE)

mean(is.na(vetor01))
sum(vetor01>7.00&vetor01<8.00, na.rm = TRUE)

sum(vetor01>9.00|vetor01<1.00, na.rm = TRUE)

vetor01 <- vetor01[!is.na(vetor01)]

summary(vetor01)
vetor01 <- !is.na(vetor01)
vetor01 <- vetor01[which(is.na(vetor01))]
