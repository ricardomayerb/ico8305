distnorm<-rnorm(1000,5,3) #pregunta 1 distribución normal
distnormest<-rnorm(1000,0,1) #pregunhta 1 distribución normal estándar
hist(distnorm, col="red") #histograma dist est
hist(distnormest, col="green") #histograma dist norm est

dexp<-dexp(500,1/20,20^0.5) #pregunta 2 dist exp
dexp(quantile(0.33)) #cuantil de la variable
dexp(quantile(75))
