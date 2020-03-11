#pregunta 1:
dnorm<-pnorm(rnorm(1000))
dnorme<-pnorm(rnorm(1000),5,3)
hist(dnorm)
hist(dnorme)

#pregunta 2:
exp<-pexp(rnorm(500))

#2.b
quantile(exp,0.33)
#el cuartil 0.33 es 0 por lo tanto es igual al cuartil 0.33 de la distribucion
#2.c
boxplot(exp)
#no existen valores extremos o atipicos, ya que todos los valores se encuentran
#dentro de los rangos.