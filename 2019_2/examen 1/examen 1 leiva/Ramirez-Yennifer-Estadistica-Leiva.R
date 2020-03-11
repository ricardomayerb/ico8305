#Pregunta 1: u=0 ; desviación estándar=1
robs<-1000
a<-normal_0_1<-rnorm(robs,0,1)

#la desviación es la raíz cuadrada de la varianza, y el valor esperado es la media o u. 

b<-rnorm(robs,5,9)

#histogramas:
hist(a)
hist(b)

#Pregunta 2: 

#a)
robss<-500
a<-rexp(500,20)
mean(a)

#Respuesta: la media es menor al valor esperado.

#b)
quantile(500)
quantile(a,0.33)

#c) diagrama de caja
boxplot(a,500)

