#Pregunta 1
a<- rnorm (n=1000)
hist (a)
b<- rnorm (n=1000, mean = 5, sd= 3) 
hist (b)
#Pregunta 2
c<- rexp (n=500, rate=20)
mean(c)
#La media de la muestra es menor que el valor esperado de la distribución
quantile (0.33)
#
boxplot (c)
#En este grafico de cajas si existen valores extremos debido a que en el grafico se dibujan distintos puntos