
#1
#Estandarizar Mil números aleatorios Distribucion normal estándar

esperanza <- 5
desviacion_estandar <- 3
mil_valores_nestandar <- rnorm(1000,5,3)

x <- (seq(0,999))

plot(x,mil_valores_nestandar)
hist(x,mil_valores_nestandar)
#
z <- (mil_valores_nestandar-esperanza)/desviacion_estandar

mil_valores_estandarizados <- dnorm(z,esperanza,desviacion_estandar)

plot(x,mil valores)


#2

?dexp

Bta <- 20

rate <- (1/Bta)

muestra_500_naleatorios <- rexp(500,rate)

mean(muestra_500_naleatorios)
#la media me dio 18.7262, es menor al valor esperado de la distribucion, lo cual se da porque son números aleatorios y el valor esperado es solo un promedio
#cuantil 0,33
pexp(0.33,rate = rate)

boxplot(muestra_500_naleatorios)


