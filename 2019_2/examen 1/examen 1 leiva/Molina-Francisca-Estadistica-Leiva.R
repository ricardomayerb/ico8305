install.packages("ggplot2")
install.packages("readxl")

#1

n<- rnorm(1000, 0, 1)
n1<- rnorm(1000,5,3)

hist(n)
hist(n1)



#2

n3<- rexp(500, 1/20)

#a)

mean(n3)
#20.26174 MAYOR AL VALOR ESPERADO

#B) 

quantile(n3)

