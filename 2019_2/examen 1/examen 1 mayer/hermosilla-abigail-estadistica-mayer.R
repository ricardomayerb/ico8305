#1 muestra de variables aleatorias

muestra_1 <- rnorm(n = 1000, mean = 0, sd = 1)

muestra_2 <- rnorm(n = 1000, mean = 5, sd = 3 )

hist(muestra_1)
hist(muestra_2)


#2

muestra3 <- rexp(n = 500, rate = 20)
mean(muestra3) #es menor

quantile(muestra3, 0.33)
boxplot(muestra3)
