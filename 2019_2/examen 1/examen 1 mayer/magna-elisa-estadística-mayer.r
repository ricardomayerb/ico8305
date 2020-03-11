# Pregunta n°1
# Distribución normal estándar
rnorm(n=1000)
muestra <- rnorm(n=1000)
hist(muestra)

# Valor esperado = 5, varianza = 9
rnorm(1000, 5, 3)
muestra2 <- rnorm(1000, 5, 3)
hist(muestra2)

# Pregunta n°2
rexp(500, rate = 1/20)
hola <- rexp(500, rate = 1/20)
#a
mean(hola)
# Respuesta: 20.02852, lo cual es mayor al valor esperado.

#b
quantile(hola, 0.33)

#c
boxplot(hola)
