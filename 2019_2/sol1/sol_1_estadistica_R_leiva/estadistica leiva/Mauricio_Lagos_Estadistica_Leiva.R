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
pib<-datos_e[,6]
esperanza<-datos_e[,4]
mean(datos_e$esperanza_de_vida) #67.00742
mean(datos_e$pib_per_capita)    #11680.07
# 2.2 la desviación estandar de cada una (4 pts)
sd(datos_e$esperanza_de_vida) #12.07302
sd(datos_e$pib_per_capita)    #12859.94
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
dim(pib)           #142 
dim(esperanza)     #142

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita"
hist(datos_e$pib_per_capita)
#(2 pto), "esperanza_de_vida" (2 pto) 
hist(datos_e$esperanza_de_vida)
# y el logaritmo natural de la variable "población" (4 pts).
poblacion<-(datos_e$poblacion)
log(datos_e$poblacion)
# Puede usar cualquier función y paquete de R que grafique histogramas




