# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")
datos_e <- misdatos


# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
mean(datos_e$pib_per_capita)
mean(datos_e$esperanza_de_vida)
# 2.2 la desviación estandar de cada una (4 pts)
sd(datos_e$pib_per_capita)
sd(datos_e$esperanza_de_vida)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
#Cada una de las variables tiene 142 observaciones, para ello creamos las variables siguientes.
pais=misdatos[,1]
continente=misdatos[,2]
año=misdatos[,3]
espvida=misdatos[,4]
poblacion=misdatos[,5]
pibcapit=misdatos[,6]

nrow(pais) #Número de observaciones de la variable pais
nrow(continente) #Número de observaciones de la variable continente
nrow(año) #Número de observaciones de la variable año
nrow(espvida) #Número de observaciones de la variable Esperanza de Vida
nrow(poblacion) #Número de observaciones de la variable poblacion
nrow(pibcapit) #Número de observaciones de la variable PIB per capita

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
hist(datos_e$pib_per_capita)
hist(datos_e$esperanza_de_vida)
log(datos_e$poblacion)

# Puede usar cualquier función y paquete de R que grafique histogramas



