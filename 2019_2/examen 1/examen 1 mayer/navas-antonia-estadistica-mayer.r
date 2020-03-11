#pregunta 1a
x<-rnorm(1000, mean=0, sd=1)
hist(x)
y<-rnorm(1000, mean=5, sd=3)
hist(y)

#pregunta 2
#a) al ser funcion exp, media de dist es 20. 
pexp(500, rate=1/20)
qexp(500, rate=1, lower.tail = TRUE, log.p = FALSE)
