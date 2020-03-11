pib.per.capita<-datos_e$pib_per_capita
mean(pib.per.capita) #media pib_per_capita
esperanza.de.vida<-datos_e$esperanza_de_vida
mean(esperanza.de.vida) #media esperanza_de_vida
sd(pib.per.capita) #desviación estandar pib_per_capita
sd(esperanza.de.vida) #desviación estandar esperanza_de_vida
length(pib.per.capita) #cantidad observaciones pib_per_capita
length(esperanza.de.vida) #cantidad de observaciones esperanza_de_vida


hist(pib.per.capita) #histograma pib_per_capita
hist(esperanza.de.vida) #histograma esperanza_de_vida
pobla<-datos_e$poblacion
log(pobla)
hist(log(pobla)) #histograma logaritmo natural polación
