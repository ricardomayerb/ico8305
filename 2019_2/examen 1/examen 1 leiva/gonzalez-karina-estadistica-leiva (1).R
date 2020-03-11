#muestra_normal
x <- rnorm(1000, mean=5, sd=3)
hist(x)
#muestra_normal_estandar
x <- rnorm(1000, mean=0, sd=1)
hist(x)

#pregunta2

x <- rexp(500, rate=1/20)
#A)
mean(x)
#El valor es mayor que el valor esperado de la distribución
#B

#C)
boxplot(x)
#Sí, el gráfico de caja y bigotes tiene valores extremos, outliers, 