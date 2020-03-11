#1
#distribucion normal
x<-rnorm(1000,5,3)
hist(x)
z<-rnorm(331,5,3)
hist(z)

#2
#a
y<-rexp(500,1/20)
mean(y)
#la media es menor al valor esperado ya que es 19.1927
#b
qexp(y)
qexp(0.33,1/20)
#c
boxplot(y)


