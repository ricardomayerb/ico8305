#Preguntas
#1
#la primera muestra es de distribucion normal, por lo que mu=0, sd=1 y n= 1000

rnorm(1000, 0, 1)

#la segunda muestra tiene mu=5, y como la varianza es 9 la desviación estándar es de 3 

rnorm(1000, 5, 3)

#histograma de la primera muestra 
normal_estandar <- rnorm(1000, 0, 1)
hist(normal_estandar)

#histograma de la segunda muestra
normal_estandar1 <- rnorm(1000, 5, 3)
hist(normal_estandar1)


#segunda pregunta
#a
rexp(500, 20)

#media de la muestra
prob_exp <- rexp(500, 20)
mean(prob_exp)
#La media de la muestra es menor al valor esperado

#b
quantile(prob_exp, 0.33)

#c
boxplot(prob_exp)


