1a
a <- sample(1:1000)
hola1 <- dnorm(a, 5, 3)
hist(hola1)
1b
b <- sample(1:1000)
hola2 <- dnorm(b, 0, 1)
hist(hola2)

c <- sample(1:500)
f <- dexp(c, 1/20)

mean(c)
es mayor al valor esperado de esta distribucion

quantile(c)
quantile(c, prob=c(0.33))
quantile(f, prob=c(0.33))
es mayor

boxplot(c)
si existen valores extremos
         
