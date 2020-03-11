ulloa-roberto-estadistica-mayer.R 
i.e.#pregunta1

muestra1 <- rnorm(1000)
muestra2 <- rnorm(1000,5,3)
help(rnorm)
hist(muestra1)
hist(muestra2)

#pregunta2

muestraexp <- rnorm(500,20)
mean(muestraexp)
#el valor es menor al valor esperado
quantile (muestraexp, prob = 0.33)
#es menor
plot(muestraexp)
