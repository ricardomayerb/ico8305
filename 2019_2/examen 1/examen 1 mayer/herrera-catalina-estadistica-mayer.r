f_x1<-rnorm(1000, mean=0, sd=1)
varianza <- 9
de<- sqrt (varianza)
f_x <- rnorm(1000, mean=5, sd=de)
?hist 
hist( f_x1)
hist (f_x)
exp<-rexp (500, rate=1/20)
mean (exp)
#es mayor que el valor esperado
quantile (exp, probs=0.33)
?boxplot
boxplot (exp)
#si debido que se ve que existen valores fuera de los extremos del diagrama
