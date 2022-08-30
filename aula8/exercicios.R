library(dplyr)
library(tidyr)

df=data.frame(Theoph)


select(df,Dose)
select(filter(df,Dose>5),Dose)


slice(df, 10:20)
mean(df$Time)
filter(df,Dose>5&Time>mean(df$Time))


df%>%arrange(desc(Wt))

df%>%arrange(Wt&desc(Time))

max(df$conc)

novo <- df%>%summarise(tendencia=Time-mean(Time))

novo <- mutate(df,tendencia=(Time-mean(Time)))

?Theoph


fileurl <- "http://stat405.had.co.nz/data/tb.csv"
download.file(fileurl,method = "curl",destfile = "D:/Users/Tomazini/Documents/programando/erre/aprendendoerre/aula8/tb.csv")
V1 <- read.csv("tb.csv", header = TRUE, sep ="", dec=".")
V1 <- read.csv(file="tb.csv",
                         header = T, #cabeçario
                         strip.white = T, #remove espaços em branco antes ou depois dos dados
                         stringsAsFactors=TRUE, #normalizar como factor os dados
                         na.strings = "")
V1$new_sp <-NULL

V2 <- V1 %>%
  gather(V1, key="Codigo",value = "N_casos")


V2 <- V1 %>% gather(key = "Codigo", value="N_casos",-iso2,-year)
V3<- V2 %>% separate(col="Codigo", 
                    into =c("caso","tipo", "sexofaixa"),
                    sep="_")

V4<- V3 %>% separate(col="sexofaixa", 
                     into =c("sexo","faixa"),
                     sep = 1:1
                     )

V4 %>%
  group_by(iso2,sexo)

V4 %>%
  filter(iso2=="TH" & sexo=="m" & !is.na(N_casos)) %>%
  summarise(sum(N_casos))
  
V4 %>%
  filter(iso2=="US" & !is.na(N_casos)) %>%
  summarise(sum(N_casos))

V4 %>%
  filter(!is.na(N_casos)) %>%
  summarise(sum(N_casos))

V4 %>%
  filter(faixa=="2534" & sexo=="f"& !is.na(N_casos)) %>%
  summarise(sum(N_casos))


V5 <- V4 %>%
  group_by(year)%>%
  filter(year>1999 & year < 2010 & !is.na(N_casos))%>%
  summarise(total = sum(N_casos))%>%
  summarise( sum(total))


T_ONTIME_REPORTING <- read.csv(file="673598238_T_ONTIME_REPORTING.csv",
                         header = T, #cabeçario
                         strip.white = T, #remove espaços em branco antes ou depois dos dados
                         stringsAsFactors=TRUE, #normalizar como factor os dados
                         na.strings = "",
                         quote = "\"",
                         sep=",") 

L_UNIQUE_CARRIERS <- read.csv(file="L_UNIQUE_CARRIERS.csv_",
                               header = T, #cabeçario
                               strip.white = T, #remove espaços em branco antes ou depois dos dados
                               stringsAsFactors=TRUE, #normalizar como factor os dados
                               na.strings = "" ,
                              quote = "\"",
                              sep=",") 

V<- merge(T_ONTIME_REPORTING,L_UNIQUE_CARRIERS, by.x = "OP_UNIQUE_CARRIER", by.y = "Code")

atrasos <- V %>%
  group_by(Description) %>%
  filter(!is.na(DEP_DELAY_NEW))%>%
  summarise(atrasoTotal = sum(DEP_DELAY_NEW))

atrasos$Description(max(atrasos$atrasoTotal))
max(atrasos$atrasoTotal)

head(atrasos)
atrasos %>%
  arrange(desc(atrasos$atrasoTotal))

atrasos <- V %>%
  group_by(Description) %>%
  filter(!is.na(DEP_DELAY_NEW))%>%
  summarise(atrasoTotal = mean(DEP_DELAY_NEW))

atrasosProp <- V %>%
  filter(!is.na(DEP_DELAY_NEW))
