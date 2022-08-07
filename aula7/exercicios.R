fileSource <- "https://ucdeacd5878ed2d420a73b175055.dl.dropboxusercontent.com/cd/0/get/Bqinqvm-739uowf-nYr804YuhcRc0HXVMd_vuaFlqS-6oy-mdKySge8lrfX4rhc7wyjCNBkd7hukSkxpXpm2_5MgZlhj44z2zA-du4STml6tH72mHSppZuQIT4I66AmjAf6D0FvE1NYNf91a4wAbgWd1kZMY6gSsk8iRJ0m4gQEu1w/file?dl=1#"

download.file(fileSource,method = "curl", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/aula7/gatos.csv")

gatos <- read.csv(file="gatos.csv",
                         header = T, #cabeçario
                         strip.white = T, #remove espaços em branco antes ou depois dos dados
                         stringsAsFactors=TRUE, #normalizar como factor os dados
                         na.strings = "") #substitui vazias por NA

summary(gatos)


Caracol_data_checked <- read.csv(file="Caracol_data_checked.csv")
summary(Caracol_data_checked)


Masc <- min(Caracol_data_checked[Caracol_data_checked$Sex=="male",]$Distance)
Fem <- min(Caracol_data_checked[Caracol_data_checked$Sex=="female",]$Distance)


femininosPequenos <- Caracol_data_checked[Caracol_data_checked$Sex=="female" & Caracol_data_checked$Size=="small",]
min(femininosPequenos$Distance, na.rm = T)
max(femininosPequenos$Distance, na.rm = T)


fileSource <- "https://ucd0180d6e3f2ffef9273d196a42.dl.dropboxusercontent.com/cd/0/inline/BqhQX2bACh200XmDL0PhS_JYQWBpJUGBoGVomYMN1q7M4e7fDL4JpaYmXSpPvG8qwDwGWEr_lh7zWm73EJvG1oYZXA62ZGj5_3g02gOEM2XXEzJvBsRLvJwygvJ4ohwYO9Kp96e9ShhEQp1tWl51aGnVbCRKnMLzx31fFaNWvTqK1w/file#"
download.file(fileSource,method = "curl", destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/aula7/Sparrows.csv")

Sparrows <- read.table(file = "Sparrows.csv", header = TRUE, sep=",",stringsAsFactors=TRUE)
View(Sparrows)

SSTS <- Sparrows[Sparrows$Species=="SSTS",]
min(SSTS$Head)
max(SSTS$Head)


which(duplicated(Sparrows))

summary(Sparrows)
levels(Sparrows$Sex)
levels(Sparrows$Sex)[1] <- "Female"
levels(Sparrows$Sex)[1] <- "Female"
levels(Sparrows$Sex)[2] <- "Female"
levels(Sparrows$Sex)
levels(Sparrows$Sex)[3] <- "Male"
levels(Sparrows$Sex)

FemeSparrows <- Sparrows[Sparrows$Sex=="Female",]

MaleSparrows <- Sparrows[Sparrows$Sex=="Male",]

mean(FemeSparrows$Tarsus)
mean(MaleSparrows$Tarsus)

median(FemeSparrows$Tarsus)
median(MaleSparrows$Tarsus)

