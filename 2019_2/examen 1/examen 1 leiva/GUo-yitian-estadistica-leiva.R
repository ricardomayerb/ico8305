#a.1 
n<-1000
randNorm <- rnorm(1000)
hist(randNorm)

#a2

pnorm(randNorm, mean = 5, sd = 3, lower.tail = TRUE)
p<-pnorm(randNorm, mean = 5, sd = 3, lower.tail = TRUE)
hist(p)

#b.1

n2<-500
q<- rexp(500)
wz<-pexp(20,rate=1)
boxplot(q)
r<-boxplot(q)
#b.2
#b.3

plot.box(q)



