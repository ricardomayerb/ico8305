#1
aux1=(1:1000)

ra<--pnorm(aux1,0,4)

re<--pnorm(aux1,5,3)

hist(re)
hist(ra)

#2

aux2=(1:500)

exp(mean(aux2))
