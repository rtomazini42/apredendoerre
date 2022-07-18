mouse.color <- c("purple", "red", "yellow","brown")
mouse.weight<- c(23,21,18,26)

mouse.info<-data.frame("colour"=mouse.color, "weight"=mouse.weight )

mouse.info[1,]
str(mouse.info)
mouse.info[3,]

mouse.info[,1]

mouse.info[4,1]


str(airquality)
head(airquality)

mesMaio <- subset(x=airquality, subset = airquality$Month==5)
mesMaio <- mesMaio[complete.cases(mesMaio),]
min(mesMaio$Ozone)


airquality.especifico <- subset(x=airquality, subset = airquality$Ozone>25 & airquality$Temp<90)
airquality.especifico <- airquality.especifico[complete.cases(airquality.especifico),]

mean(airquality.especifico$Solar.R)

airquality.casosCompletos <- airquality[complete.cases(airquality),]
str(airquality.casosCompletos)


genomas <- as.data.frame(read.csv("https://www.dropbox.com/s/vgh6qk395ck86fp/genomes.csv?dl=1"))
genomas.mais40 <- subset(x=genomas, subset = genomas$Chromosomes > 40)

genomas.mais40$Organism
names(genomas)
head(genomas)

genomas.plasmideo <- subset(x=genomas, subset = (genomas$Plasmids >= 1)&(genomas$Chromosomes>1))
genomas.plasmideo$Organism

summary(genomas$Groups)
unicos <- unique(genomas$Groups)
length(unicos)

cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1"))

cancer_stats.disg <- subset(x=cancer_stats, subset = cancer_stats$Class=="Digestive System")


taxa <- with(cancer_stats, Male.Cases/Male.Deaths)

cancer_stats.mascTax <- cancer_stats
cancer_stats.mascTax$mascTax <- taxa

cancer_stats.femTax <- cancer_stats
taxa <- with(cancer_stats, Female.Cases/Female.Deaths)
cancer_stats.femTax$femTax <- taxa
