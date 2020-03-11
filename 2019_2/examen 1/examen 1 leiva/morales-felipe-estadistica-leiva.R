#1
a <- rnorm(1000)
hist(a)
b <- rnorm(1000, mean=5,sd = 3)
hist(b)
#2
a <- rexp(500,1/20)
#a)
mean(a)
#b)
quantile(a,0.33)
#c)
boxplot(a)
