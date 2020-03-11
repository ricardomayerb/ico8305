x <- c(10, 5, 6, 2, 9, 11, 12, 4, 15, 16)
xbar <- mean(x)
s <- sd(x)

n <- length(x)
sxbar <- s/sqrt(n)
q0995 <- qt(0.995, df = n-1)
margen <- q0995*sxbar
ic99 <- c(xbar-margen, xbar+margen)

z995 <- qnorm(0.995)
margenz <- z995*sxbar
ic99z <- c(xbar-margenz, xbar+margenz)

s2 <- 13^2
n2 <- 50
nm1 <- n2-1
sigma2h0 <- 15^2
bigt <- nm1*s2/sigma2h0

csq95 <- qchisq(0.95, df = nm1)
csq95
csq05 <- qchisq(0.05, df = nm1)
csq05

sh02 <- 14^2
bigt2 <- nm1*s2/sh02
pval <- pchisq(bigt2, df = nm1)
pval 




####### ejercicio en R

# 1. a) Simule 100 numeros aleatorios de una distribución t-student con 33 grados de libertad
# 1. b) Simule 100 numeros aleatorios de una distribución normal con media=2 y varianza=16
# 1. c) Simule 100 numeros aleatorios de una distribución Chi-cuadrado con 33 grados de libertad

# 2. Para un test de hipótesis de dos colas para la media poblacional, usando 27 datos, con varianza desconcida,
# cuál sería el valor-p asociado a un estadístico de prueba, debidamente estandariado, igual a 1.7?

# 3. Para un test de hipótesis de dos colas para la media poblacional, usando 27 datos, con varianza desconcida,
# cuáles serían los valores críticos del test si el nivel de significancia elegido es 7%?

# 4. Simule 27 numeros provenientes de una distribución normal con media 1 y varianza 9. Asuma que
# para el investigador la varianza poblacional es conocida pero la media pobalcional es desconocida.
# Calcule la probabilidad de cometer error tipo II, cuando el nivel de significancia es 5%,
# la hipótesis nula es mu=2 y el valor elegido de la hipotesis alternativa es mu=1.