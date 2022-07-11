participantes<- c("Maria","Joana")
abdominais <- c(42,38)
salto <- c(102,173)
suspensao<- c(38,71)
correr<- c(2149,1554)
conhecimento<- c(97,70)

abdominais.n <- ((abdominais-30)/6)
salto.n <- ((salto-155)/23)
suspensao.n <- ((suspensao-50)/8)
correr.n <- ((correr-1829)/274)
conhecimento.n <- ((conhecimento-75)/12)

media <- (abdominais.n+salto.n+suspensao.n+correr.n+conhecimento.n)/5
participantes[max(media)==media]
