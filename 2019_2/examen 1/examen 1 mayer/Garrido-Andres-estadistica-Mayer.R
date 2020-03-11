#Pregunta 1

#Muestras
a <- rnorm(n = 1000)
b <- rnorm(n = 1000, mean = 5, sd = 3)

rnorm(n = 1000)
rnorm(n = 1000, mean = 5, sd = 3)

#Histogramas

hist(x = a)

hist(x = b)


#Pregunta 2

#a)

c <- rexp(n = 500, rate = 1/20)
rexp(n = 500, rate = 1/20)
mean(c) = 19.44232
#Con estos numeros aleatorios la media es menor al valor esperado

#b) 

quantile(c(0,33))
#0%   25%   50%   75%  100% 
#0.00  8.25 16.50 24.75 33.00 

#c)

boxplot(c)
