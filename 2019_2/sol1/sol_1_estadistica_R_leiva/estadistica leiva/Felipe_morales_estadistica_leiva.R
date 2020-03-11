# nombre del archivo a mandar por correo:
# Felipe_Morales_Estadistica_profesor Leiva
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
# library("datos_e.xlsx")
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")
paises <- read_excel("datos_e.xlsx")
c <- c(paises$esperanza_de_vida)
paises$esperanza_de_vida
h <- c(paises$poblacion)
paises$poblacion
j <- c(paises$pib_per_capita)
paises$pib_per_capita


# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
mean(paises$pib_per_capita)
mean(paises$esperanza_de_vida)
# 2.2 la desviación estandar de cada una (4 pts)
sd(paises$pib_per_capita)
sd(paises$esperanza_de_vida)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
robs<-142 
rnorm(robs,67,12)
rnorm(robs,11680,12859.94)


# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas
hist(paises$pib_per_capita)
hist(paises$esperanza_de_vida)
hist(log(paises$poblacion))
