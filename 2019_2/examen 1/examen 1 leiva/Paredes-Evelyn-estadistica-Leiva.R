#Examen#

#Pregunta 1#

x <- rnorm(1000)
hist(x)

y <- rnorm(1000,5,9)
hist(y)

#Pregunta 2#

z1 <-rexp(500,1/20)

#2.a)#
mean(z1)
#en este caso, la media de la muestra es mayor, en pequeña cantidad, pero mayor#

#2.b)#
quantile(z1,0.33)

#2,c)#
boxplot(z1)
#Todos los valores son extremos#


