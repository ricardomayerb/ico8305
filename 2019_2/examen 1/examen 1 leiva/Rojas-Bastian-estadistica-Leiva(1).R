#Pregunta 1
var1<-1000

normal_estandar<-rnorm(var1)

hist(normal_estandar)

normal_valor_esperado<-rnorm(var1, 5, 3)

hist(normal_valor_esperado)

#Pregunta 2
var2<-500

mean(exp(var2))
#a, en este caso la media es mayor al valor esperado

qexp(var2, rate=20, lower.tail = TRUE, log.p = FALSE)

boxplot(var2)
