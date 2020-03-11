a <- rnorm(n = 1000)
a
b <- rnorm(n = 1000, mean = 5, sd = 81)   #var(9) = sd(3)
b

hist(a)
hist(b)

c <- rexp(n = 500, rate = 1/20)
c
mean(c) #la media 19.65405 es menor que el valor esperado de la distribucion 20

qt(p = 0.33, df = 0.33)
#el valor es  menor que el qunatil 0,33 de la muestra

boxplot(c)
#si existen valores extremos que se encuentran sobre el limite superior aproximadamente mayores a 60
