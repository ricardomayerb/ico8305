# nombre del archivo a mandar por correo: 
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")



# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
misdatos$pib_per_capita
pib_media <- misdatos$pib_per_capita
mean(pib_media)

misdatos$esperanza_de_vida
esperanza_vi <- misdatos$esperanza_de_vida
mean(esperanza_vi)



# 2.2 la desviación estandar de cada una (4 pts)

sd(misdatos$esperanza_de_vida)
sd(misdatos$poblacion)
sd(misdatos$pib_per_capita)

# 2.3 la cantidad de observaciones (n) de cada una (4 pts)

poblacion_2.3 <- misdatos$poblacion
esperanza_vi
pib_media
poblacion_2.3



# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas
hist(esperanza_vi)
hist(pib_media)
hist(poblacion_2.3)

