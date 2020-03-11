#1-. generar 2 distribuciones
a <- rnorm(n = 1000, mean = 5, sd = 3 )
b <- rnorm(n= 1000, mean = 0, sd = 1)
?hist
hist(a)
hist(b)


#2 generar muestra de d.exp
?exp
distribucion.exp <- rexp(n = 500, rate = 1/20)

#2.a media
 media_de_exp <- mean(distribucion.exp)
media_de_exp
 #R: es mayor al valor esperado(20.37856)
#2.b
quantile(media_de_exp, 0.33)
quantile(distribucion.exp, 0.33)
?rexp

#2.c
boxplot(log(media_de_exp))
