#1
variable1=rnorm(1000) #distrib normal estandar

variable2=rnorm(1000,5,3) #distrib normal, val esp, varianza

#hist para var1 y var2

hist(variable1)
hist(variable2)

#2
var1=rexp(500, 1/20)
mean(var1) #menor a valor esperadp
quantile(var1)
boxplot(var1) #hay hartos valores extremos 
