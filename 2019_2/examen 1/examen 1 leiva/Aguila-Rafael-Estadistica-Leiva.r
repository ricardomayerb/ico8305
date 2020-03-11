rnorm(1000,mean=5, sd=3)                #Datos distribució normal (1)
dnorm(rnorm(1000,mean=5, sd=3))         #Datos distriución noral estadarizados (1)
hist(dnorm(rnorm(1000,mean=5, sd=3)))   #Histo distribución normal estandarzada (1)
pnorm(1000,mean=0, sd=1, lower.tail =TRUE)   #Datos Estadarizados (2)
hist(pnorm(1000,mean=0, sd=1, lower.tail =TRUE)) #Histo estadarizados (2)

ppexp(500, rate=20)
