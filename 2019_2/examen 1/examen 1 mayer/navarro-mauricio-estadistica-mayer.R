#prueba estadistica

muestra1 <- rnorm(100) 
muestra2 <-rnorm(100,5,9)
hist(muestra1)
hist(muestra2)

#pregunta 2
muestra3 <-rexp(500,20)
#a)
mean(muestra3)
min(muestra3)
#es mayor a la esperanza

#b)
quantile(muestra3,c(0.33))

quantile(rexp(0.33))
#c)
boxplot(muestra3)
















