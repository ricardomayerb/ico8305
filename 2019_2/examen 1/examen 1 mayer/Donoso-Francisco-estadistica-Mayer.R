#1Genere dos mustras aleatorias: una proveniente de una funcion normal estandar y otra con valor esperado 5 y varianza 9. Cada muestra debe ser de tamaño 1000. Obtenga un histograma cara cada muestra.

normal_estandar <- dnorm(1:1000)
normal <- dnorm(1:1000,5,3)
hist_N_estandar <- hist(normal_estandar, breaks = 30)
hist_normal <- hist(normal, breaks = 5)

#2Genere una muestra de tamaño 500 con n° aleatorios provenientes de una funcion de distribucion exp. con valor esperado 20

patata <- dexp(1:500,1/20)

#a) calcular media de la muestra. Es mayor o menor al valor esperado?
mean(patata)
#La media de la funcion es menor al valor esperado

#b)

quantile(patata, 0.33)

#c)Obtenga un grafico de caja y bigotes de su muestra. Existen valores extremos? justifique

boxplot(patata)
#Segun el grafico si existen numeros extremos  ya que en un boxplot los n°extremos se representan como circulos y en el grafico si se aprecian estos
