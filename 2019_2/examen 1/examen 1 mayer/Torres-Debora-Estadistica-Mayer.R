#1 

estandar <- rnorm(1000, 0, 1)
sample(estandar,1000)

x <- c(sample(estandar,1000))
hist(x)

normal <- rnorm ( 1000, 5, 9)
sample(normal,1000)

x <- c(sample(normal,1000))
hist(x)

#2
exponencial <- rexp(500, 20)
sample(exponencial,500)


#a
x <- c(sample(exponencial,500))

mean(x)
#Es menor al valor esperado.

#b
x <- c(sample(exponencial,500))
      
quantile(x, 0.33)

quantile(exponencial, 0.33)
#Es igual que el cuantil 0.33 de esta distribución.

#c
x <-c(sample(exponencial,500))

boxplot(x)
#Si, existen valores extremos. Para que  existan valores extremos
#ueden pasar varias cosas, desde que se anotó mal un número,
#asta que realmente existe un valor extremo. No podemos saber en este caso,
#cual es el motivo exacto.





     