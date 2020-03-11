1.-
#distribucion normal estandar

a <- rnorm(1000) 
hist(a)
 #distribucion normal E=5 Var= 9

b <- rnorm(1000, mean = 5, sd= 3)
hist(b)

2.-
  c <- rexp(500)
a)
 mean(c)
 #la media es menor al valor esperado, que es 20
 
 b) 
quantile(c,0,33)
 
c) 
boxplot(c)
 #si existen valores extremos, son los ´puntos fuera de la caja  
