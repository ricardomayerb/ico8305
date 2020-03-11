# martin_valdebenito_Estadistica_Leiva.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 


library(readxl)
datos_e <- read_excel("datos_e.xlsx")
View(datos_e)                                                                     
misdatos<- read_excel("datos_e.xlsx")


# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
Media_pibpercapita<- mean(misdatos$pib_per_capita)
Media_esperanzadevida<- mean(misdatos$esperanza_de_vida)
# 2.2 la desviación estandar de cada una (4 pts)
Des_estandar<- sd(misdatos$pib_per_capita)
Des_estandar_esper<- sd(misdatos$esperanza_de_vida)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)
plot(density(misdatos$pib_per_capita))
plot(density(misdatos$esperanza_de_vida))

# con estos graficos obtuve la cantidad de observaciones de cada variable

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas
hist(misdatos$pib_per_capita)
hist(misdatos$esperanza_de_vida)
hist(log(misdatos$poblacion))




