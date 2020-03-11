#pregunta 1
muestra_1 <- rnorm(1000, mean = 5, sd = 3)
hist(muestra_1)
muestra_2 <-rnorm(1000, mean = 5, sd = 3)
pnorm(muestra_2, mean = 5, sd = 3)
hist(muestra_2)
#pregunta 2
muestra_3 <- rnorm(500, mean = 20)
qexp(muestra_3, rate = 0.33)
boxplot(muestra_3) 
#no existen valores extremos 
