
# 1)
# i) Distribución normal estándar de tamaño 1000:
x <- rnorm(1000)
x

# ii) Distribución normal con valor esperado 5 y varianza 9:
# -> SD = 3 ; Media = 5

y <- rnorm(1000, 5, 3)
x

# O también usando el valor de la varianza:
rnorm(1000, 5, sqrt(9))

# 2) Muestra de tamaño 500 con números aleatorios provenientes de una distribución
#    exponencial con E(x)= 5
exponencial <- rexp(500,20)
# a) calcular la media:
mean(exponencial)
# La media es menor al valor esperado

# b) calcular cuartil 0.33:
quantile(exponencial,0.33)

# c) gráfico de caja y bigotes (box plot):
boxplot(exponencial)
# Existen valores atípicos, que podemos ver fuera de los valores extremos del gráfico.
# Ésto se debe a que existen valores con una desviación estándar mayor a 3
# (comúnmente se consideran atípicos los valores con sd > 3)