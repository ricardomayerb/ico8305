library(readxl)
library(ggplot2)
library(dplyr)
#1) distibucion normal estandar
#valores al azar de la distribución normal
randNorm <- rnorm(1000)
#calculo de su densidad
randDensity <- dnorm(randNorm)
#gráfica
library(ggplot2)
ggplot(data.frame(x = randNorm, y = randDensity)) + 
  aes(x = x, y = y) +
  geom_point() + 
  labs(x = "Random Normal Variable", y = "Densidad")
# Distribucion normal con valor esperado 5 y varianza 9
#valores al azar de la distribución normal
randNorm <- rnorm(1000)
#calculo de su densidad
randDensity <- dnorm(randNorm)
#gráfica
library(ggplot2)
ggplot(data.frame(x = randNorm, y = randDensity)) + 
  aes(x = 5, y = 9) +
  geom_point() + 
  labs(x = "Random Normal Variable", y = "Densidad")}


dexp(x, rate = 20, log = FALSE)
pexp(q, rate = 20, lower.tail = TRUE, log.p = FALSE)
qexp(p, rate = 20, lower.tail = TRUE, log.p = FALSE)
rexp(n, rate = 20)