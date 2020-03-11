#Preguntas
#1
#Tamaño: 1000 #valor esperado: 5 #Varianza: 9
rnorm(1000)
a<-rnorm(1000)
mean(a)
#promedio: -0.0483
#distribucion normal estandar
(4-(-0.0483))/3
Z<- (4-(-0.0483))/3
pnorm(1.3)

b<- rnorm(1000)
rnorm(1000)
mean(b)
#promedio b: 0.007
pnorm(5, 0.007, 3)

hist(a)
hist(b)



#2
#Muetra 500 #esperanza: 20

rnorm(500)
c<-(rnorm(500))
mean(c)
#promedio 0.01

help(rexp)
d<-rexp(c, 0.01)
mean(d)
# Rpta1: Es mayor al valor esperado 

#2
qt(d, 0.33)