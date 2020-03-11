# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")



# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
pib_per_capita <-(misdatos$pib_per_capita)
esperanza_de_vida <- (misdatos$esperanza_de_vida)
# 2.1 la media cada una (4 pts)
mean(pib_per_capita)
mean(esperanza_de_vida)
# 2.2 la desviación estandar de cada una (4 pts)
sd(pib_per_capita)
sd(esperanza_de_vida)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
data.frame(pib_per_capita)
length(pib_per_capita)
data.frame(esperanza_de_vida)
length(esperanza_de_vida)

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas
poblacion <- (datos_e$poblacion)
log(poblacion,x=exp(1))
hist(log(poblacion,x=exp(1)))
hist(esperanza_de_vida)
hist(pib_per_capita)



