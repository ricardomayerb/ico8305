#1.
#Calculamos la desvianción estandar resultante de la raíz de la varianza

DS <- sqrt(9)

#Distribución normal estandar

est <- rnorm(1000)

#Distribución normal

nom <- rnorm(1000, 5, DS)

#Histogramas

hist(est)
hist(nom)

#2.
# Se crea un envireonment de la distribución exponecial

TORO <- rexp(500, 1/20)

# a)

med <- mean(TORO)

# El valor esperado en esta distribución es 20, pero la media a resultado distinta
# (ver environment "med") un poco menor, aún así es una diferencia muy insignificante

# b)

quant.p <- qexp(0.33, 1/20)
quant.m <- quantile(TORO, 0.33)

dif.quants <- quant.p-quant.m

# el cuantil número 0.33 es mayor en la distribución poblacional que en la muestral 
# teniendo una diferencia de 0.1635094

# c)

boxplot(TORO)
summary(TORO)

# Sí, existen outliers (valores extremos), esto se debe a que la muestra es muy
# grande y la media de este es 19.3297 y su mediana ronda cerca del mismo valor, sindo 
# igual a 14.1520 
