#1
normalestandar<-rnorm(1000,mean=0,sd=1)
hist(normalestandar)

normal<-rnorm(1000,mean=5,sd=9)
hist(normal)


#2
exponencial<-rexp(500,rate=20)
#a)
mean(exponencial)
#mean=0.05357364

#b)
quantile(0.33,exponencial)

#c)
boxplot(exponencial)
#podemos observar que no existen valores extremos, por que cada punto 
#se encuentra de la misma zona.