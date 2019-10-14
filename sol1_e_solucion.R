# No olvide ejecutar las líneas 2 y 6 antes de empezar el resto del trabajo
library(readxl)

# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel
#  datos_ie.xlsx
misdatos <- read_excel("datos_e.xlsx")



# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una
# 2.2 la desviación estandar de cada una
# 2.3 la cantidad de observaciones (n) de cada una


evi <- misdatos$esperanza_de_vida
emu <- mean(evi)
esd <- sd(evi)
en <- length(evi)

c(emu, esd, en)

ppc <- misdatos$pib_per_capita
pmu <- mean(ppc)
psd <- sd(ppc)
pn <- length(ppc)

c(pmu, psd, pn)


# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita", "esperanza_de_vida" y el logaritmo natural de la variable "población".
# Puede usar cualquier función y paquete de R que grafique histogramas

hist(misdatos$pib_per_capita, breaks = 15)
hist(misdatos$esperanza_de_vida, breaks = 15)
hist(log(misdatos$poblacion), breaks = 15)

