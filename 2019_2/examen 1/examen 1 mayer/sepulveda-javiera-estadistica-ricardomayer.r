rnorm(1000, mean=0, sd=1)
varianza <-9
de<- sqrt (varianza)
f_x <-rnorm(1000, mean=0, sd=de)
?hist
hist(x=f_x1)
hist(x=f_x)
exp<-rexp (500, rate=1/20)
mean (exp)
#mayor que valor esperado
quantile (exp, probs = 0,33)
?boxplot
boxplot (exp)
#si, porque existen valores fuera de los extremos del diagrama
