#pregunta 1
a<- rnorm (n=1000)
hist(a)
b<- rnorm (n=1000, mean= 5, sd= 3)
hist(b)
#pregunta 2
c<-rexp (n=500, rate=20)
mean(c)
#la media de esta muestra es menor que el valor esperado de la distribucion
quantile (0.33)
boxplot (c)
#existen valores extremos, puesto que podemos ver que en el grafico se dibujan distintos puntos
