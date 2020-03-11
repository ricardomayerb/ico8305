#Pregunta 1
rnorm(1000,mean=0,sd=1)
hist(rnorm(1000,mean=0,sd=1))

rnorm(1000,mean=5,sd=3)
hist(rnorm(1000,mean=5,sd=3))

#Pregunta 2
rexp(n=500,rate=20)

#a)La media de la muestra es 20 y es igual al valor esperado de esta distribución.

#b)Cuantil 0.33
qexp(0.33,rate=1,lower.tail =TRUE,log.p = FALSE )
#El cuantil es 0.4004 y es menor 
