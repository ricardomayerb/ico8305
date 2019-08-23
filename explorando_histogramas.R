lacalorsh <- airquality$Temp
hist(lacalorsh)
h <- hist(lacalorsh)
hist(lacalorsh,breaks = 2, main = "usando 2 breaks") 

hist(lacalorsh,breaks = 10, main = "usando 10 breaks")
hist(lacalorsh,breaks = 60, main = "usando 60 breaks")

hist(lacalorsh,breaks = c(2, 67, 72, 83, 90, 99),
     main = "usando breaks manuales") 

stem(lacalorsh)

stem(ChickWeight$weight)
