# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")



# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
pib <- misdatos$pib_per_capita
esperanza <- misdatos$esperanza_de_vida
# 2.1 la media cada una (4 pts)
mean(pib)
mean(esperanza)
# 2.2 la desviación estandar de cada una (4 pts)
sd(pib)
sd(esperanza)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
length(pib)
length(esperanza)

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
hist(pib)
hist(esperanza)
hist(poblacion)
poblacion <- misdatos$poblacion
hist(log(poblacion))
# Puede usar cualquier función y paquete de R que grafique histogramas



