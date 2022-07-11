x <- factor(c("solteiro","casado","casado","solteiro"))

x<-factor(x, levels = c("solteiro","casado","divorciado"))

x[2] <- "divorciado"

x[3] <- "viuvo"

levels(x) <- c(levels(x),"viuvo")

x[3] <- "viuvo"

levels(x)[1]<-"não casado"


levels(x) <- c(levels(x),"uniao estavel")
x[4] <- "uniao estavel"

x[2] <-"solteiro"

levels(x) <- c(levels(x),"nao casado")

levels(x)

