# 1 examen estadistica
muestra_normal_e<- rnorm(1000,0,1)
muestra_normal<- rnorm(1000,5,3) #como tenemos la varianza=9 entonces sd=3
hist(muestra_normal_e)
hist(muestra_normal)
summary(muestra_normal_e)
summary(muestra_normal)

# 2 examen estadistica
muestra_exponencial<- rexp(500,1/20)
mean(muestra_exponencial) # A) 18.70774
quantile(muestra_exponencial,probs = 0.33) #B) 6.843339, el cuantil 0.33 de la muestra en  este caso es mayor a el cuantil 0.33 de la distribucion (1.260753e-09), calculada en la linea 15.
boxplot(muestra_exponencial) #C) Sí existen valores extremos, ya que el valor minimo es 0.03092 y el maximo 160.76934 (caluclada en linea 16), esto se debe a que la desviacion estandar es 19.73032, entonces la diferencia de un dato a otro es muy grande

quantile(dexp(muestra_exponencial),probs = 0.33) #1.260753e-09 
sd(muestra_exponencial)