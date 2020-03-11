#1.
#Distribucion Normal Estandar
rnorm(1000)
c <- rnorm(1000)
c
plot(hist(c))
#Distribucion Normal con valor esperado 5 y variaza 9
rnorm(1000, mean= 5, sd=81)
d <- rnorm(1000, mean= 5, sd=81)
d
plot(hist(d))
#2.
f <-rexp(n = 500,rate = 1/20)
f
#a.
mean(f)
#La media es mayor al valor esperado en esta distribucion.
#b.
quantile(f)
#c.
boxplot(f)
si existen valores extremos.

      