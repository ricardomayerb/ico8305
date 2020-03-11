#pregunta n°1
#a
#para x≥0 con media=5 y desviacion estandar=4 y n=1000
rnorm(1000, mean = 5, sd=4)
a <-rnorm(1000, mean = 5, sd=4)
hist(a)

#b
#para x≥0 con media=5 y desviacion estandar=3, tamaño=1000
rnorm(1000, mean = 5,sd=3)
b <- rnorm(1000, mean = 5,sd=3)
hist(b)  

#pregunta n°2
#a
rnorm(500, mean = 20, sd=5)
c <- rnorm(500, mean = 20, sd=5)
mean(c)
#es menor al valor esperado

#b
quantile(0.33)

#c
boxplot(c)
