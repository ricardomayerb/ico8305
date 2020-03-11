# nombre del archivo a mandar por correo:sebastian lobos
# nombre_apellido_estadistica_profesor.R: francisco leiva
# ejemplo:
# juan_perez_estadistica_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 

misdatos <- read_excel("datos_e.xlsx")



# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
media de pib per capita: 11680.1
media esperanza de vida: 67.01
# 2.2 la desviación estandar de cada una (4 pts)

# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
n de pib per capita: 142
n de esperanza de vida: 142




# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas



library(readxl)
misdatos<-read_excel("datos_e.xlsx")
pib_per_capita<-misdatos[,6]
esperanza_de_vida<-misdatos[,4]
mean(pib_per_capita)
summary(pib_per_capita)
poblacion<-misdatos[,5]
log(poblacion)
sd(misdatos(pib_per_capita))
xbar1= 11680,1
