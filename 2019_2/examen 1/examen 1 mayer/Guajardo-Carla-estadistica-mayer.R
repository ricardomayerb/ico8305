#1
rnorm(1000)
rnorm(1000, mean = 5, sd=3)
uno <- rnorm(1000)
boxplot(uno)
dos <- rnorm(1000, mean = 5, sd=3)
boxplot(dos)
#2
#a
rexp(500, rate=1/20)
expo <- rexp(500, rate=1/20)
mean(expo)
#b


#c
boxplot(expo)
