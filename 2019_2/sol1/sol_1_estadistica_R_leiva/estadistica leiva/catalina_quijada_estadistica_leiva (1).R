# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_inferencia_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")
datos_e <- misdatos


library(readxl)

# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
pib_per_capita<-datos_e [,6]
mean(datos_e$pib_per_capita)  #resultado:11680.07
esperanza_de_vida<-datos_e[,4]
mean(datos_e$esperanza_de_vida) #resultado:67.00742

# 2.2 la desviación estandar de cada una (4 pts)
sd(datos_e$pib_per_capita) #resultado:12859.94
sd(datos_e$esperanza_de_vida) #resultado:12.07302

# 2.3 la cantidad de observaciones (n) de cada una (4 pts)

median(datos_e$pib_per_capita)#resultado: 6124.371
median(datos_e$esperanza_de_vida)#resultado:71.9355
#142 observaciones


# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas

hist(datos_e$pib_per_capita, col="blue")
hist(datos_e$esperanza_de_vida,col="red")
log(datos_e$poblacion)


