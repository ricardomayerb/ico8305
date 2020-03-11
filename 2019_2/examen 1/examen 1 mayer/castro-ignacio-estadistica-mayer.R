#Respuestas
#1.
pob1 <- rnorm(10000)
pob2 <- rnorm(10000,5,9)
muestra1 <- sample(pob1,1000)
muestra2 <- sample(pob2,1000)

hist(muestra1)
hist(muestra2)

#2.
pob3 <- rexp(1000000)
muestra3 <- sample(pob3,500,1/20)
mean(muestra3)
quantile(muestra3,c(0.33))
quantile(pob3,c(0.33))
boxplot(muestra3)
#Si existen valores atipicos para el boxplot