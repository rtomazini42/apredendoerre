

numeros <- c(33100000, 28440000 )
nomes <- c("Fome no Brasil", "População da Venezuela" )

df = data.frame(numeros, nomes)

cores <- list('#b252a1','#66a1d2','#2c0452','#455f65','#dcd5d5','#2c3552' )

library(plotly)
fig <- plot_ly(df, x = ~numeros, y = ~nomes, type = 'bar', name = 'Pessoas',
               marker= list(color= cores)
               )



fig


numeros <- c(35, 42, 23)
nomes <- c("aprova, concordo com mais 600 mil mortos e uma péssima gestão", "Reprova", "600 mil mortos e péssima gestão, mas que dificil")

df = data.frame(numeros, nomes)






fig <- plot_ly(df, labels = ~nomes, values = ~numeros, type = 'pie')

fig <- fig %>% layout(title = 'Aprovação Bonoro',
                      
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))


fig




pais <- c("United States","Brasil", "Vietnã", "Espanha", "Argentina", "Italia")
populacao <-c(329500000,212600000,97340000,47350000, 45380000,59550000)
mortesCovid <- c(1060408,686371, 43151,114262,129937,177257)
pibPerCapita2020 <- c(63543.58,6796.84,2785.72,27057.16,8441.92,31676.20)

colors <- c('#4AC6B7', '#1972A4', '#965F8A', '#FF7070', '#C61951','#2c3552')

df = data.frame(pais, populacao,mortesCovid,pibPerCapita2020)

fig <- plot_ly(df, x = ~populacao, y = ~pibPerCapita2020, text = ~pais, type = 'scatter', mode = 'markers', color=~pais,
               
               marker = list(size = (df$mortesCovid * 100 /df$populacao)*450, opacity = 0.5,colors = colors))

fig <- fig %>% layout(title = '1',
                      
                      xaxis = list(showgrid = FALSE),
                      
                      yaxis = list(showgrid = FALSE))


fig

library(tidyquant)

library(plotly)

vasco <- "Vasco da Gama"
pontos <- c(14426,12132,11928,10040,9322,9360,9242,8828,8206)

psdb <- "PSDB"
eleitoresFilhados <- c(1348833,1409515,1446311,1456260,1459663,1366072,1375122, 1354569, 1326233)

PCB <- "PCB"
eleitoresFilhadosPCB <- c(15140,14852,14830,14830,14682,12921,12784, 12651, 12530)

vascotab <- data.frame(vasco, pontos)
psdbtab <- data.frame(psdb, eleitoresFilhados)
pcbtab <- data.frame(PCB,eleitoresFilhadosPCB)


anos = c(2014,2015,2016,2017,2018,2019,2020, 2021, 2022)

score_v = scale(vascotab$pontos, center = T)
score_p = scale(psdbtab$eleitoresFilhados, center = T)
score_pc = scale(pcbtab$eleitoresFilhados, center = T)
df <- data.frame("index" = anos, "pontos" = score_v, "eleitoresFilhados" = score_p,"eleitoresFilhadosPCB" = score_pc)




fig <- plot_ly(df, type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~anos, y = ~pontos, name = 'Pontos do vasco',line = list(color = 'blue'))%>%
  #add_trace(x = ~anos, y = ~eleitoresFilhados, name = 'Filhados ao PSDB',line = list(color = 'rgb(22, 96, 167)'))%>%
  add_trace(x = ~anos, y = ~eleitoresFilhadosPCB, name = 'Filhados ao PCB',line = list(color = 'red'))

fig

#pegar os dados de afilhados de partidos do jquery do TSE
## curl -o responseFile.html 'https://sig.tse.jus.br/ords/dwtse/wwv_flow.ajax' -X POST -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0' -H 'Accept: text/html, */*; q=0.01' -H 'Accept-Language: pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Referer: https://sig.tse.jus.br/' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' -H 'Origin: https://sig.tse.jus.br' -H 'Connection: keep-alive' -H 'Cookie: TSE_ESTATISTICA1=ORA_WWV-QUaoIEbGFNF9REbIyZlRnWLO; ORA_WWV_RAC_INSTANCE=1; __utma=260825096.74046821.1665065552.1665065552.1665065552.1; __utmb=260825096.2.10.1665065552; __utmc=260825096; __utmz=260825096.1665065552.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); TS01c5681d=0103a0ceaef3c74b3eeb4651d6f968b5dad6dacb71f4ce40035a1a78c615bf20a5ca6b4cceaa2a18990bf2a68730fc5cd2672ebf9ac45775480b7eb0bbe7f9e763ecaedc2e98c590bc03d94dbadf7e3c817cf86e42' -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' --data-raw 'p_flow_id=2001&p_flow_step_id=104&p_instance=25111198526379&p_debug=&p_request=APXWGT&p_widget_action=paginate&p_pg_min_row=0&p_pg_max_rows=30&p_pg_rows_fetched=30&x01=61692272467533701&p_widget_name=classic_report&p_json=%7B%22salt%22%3A%22114950652680449822166052558436056596031%22%7D

