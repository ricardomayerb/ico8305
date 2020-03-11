#'Pregunta N°1a: Tamaño=1000.
rnorm(1000)
a<-rnorm(1000)
hist(a)

#'Pregunta N°1b:Tamaño=1000, valor esperado=5, varianza=9
rnorm(1000, mean=5, sd= 3)
b<-rnorm(1000, mean=5, sd=3)
hist(b)
#Pregunta N°2:Tamaño:500, valor esperado:20
#'a) 

pexp(500, rate=1/20)
c<-pexp(500, rate=1/20)
boxplot(c)

#b'

#'c
boxplot(c)






