library(tidyverse)

View(airquality)

Temperatura <- airquality$Temp
hist(Temperatura)

hist(Temperatura,
     main="Temperatura maxima diaria en aeropuerto La Guardia",
     xlab="Temperatura en grados Fahrenheit",
     xlim=c(50,100),
     col="darkmagenta",
     freq=FALSE
)

h <- hist(Temperatura)
h

h <- hist(Temperatura, ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts, adj=c(0.5, -0.5))


hist(Temperatura, breaks=4, main="With breaks=4")
hist(Temperatura, breaks=20, main="With breaks=20")

hist(Temperatura,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="chocolate",
     border="brown",
     breaks=c(55,60,70,75,80,100)
)


duration <-  faithful$eruptions 
stem(duration) 
hist(duration
     )

ChickWeight

stem(ChickWeight$weight)
hist(ChickWeight$weight)
stem(ChickWeight$weight, scale = 2)
