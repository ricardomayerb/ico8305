#' ---
#' title: "Solemne 1, parte R. Pauta de corrección."
#' author: Ricardo Mayer
#' ---
#'

#' Comentario general: Una parte de los objetivos es aprender el uso de R, aunque el objetivo 
#' principal sigue siendo *hacer estadística correctamente* usando R. Por esa razón el uso de 
#' de las funciones adecuadas recibe *algo* de puntaje (típicamente un cuarto del puntaje), aunque no estén correctamente empleadas en 
#' el contexto del problema planteado. En la próxima evaluación probablemnete ya no 
#' no hay puntaje asignado por usar incorrectamente la función correcta.


# No olvide ejecutar las líneas 2 y 6 antes de empezar el resto del trabajo
library(readxl)

#' 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel
#'  datos_ie.xlsx
misdatos <- read_excel("datos_e.xlsx")



#' 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
#' 2.1 la media cada una (4 pts)
#' 2.2 la desviación estandar de cada una (4 pts)
#' 2.3 la cantidad de observaciones (n) de cada una (4 pts)

# Para "esperanza de vida"
evi <- misdatos$esperanza_de_vida
emu <- mean(evi)
esd <- sd(evi)
en <- length(evi)

c(emu, esd, en)

# Para "pib per capita"
ppc <- misdatos$pib_per_capita
pmu <- mean(ppc)
psd <- sd(ppc)
pn <- length(ppc)

c(pmu, psd, pn)


# Notas para la corrección:
# - no es necesario que la consola muestre los valores, sólo calcularlos
# - no es necesario guardar los resultados en objetos (i.e. usar <- )
# - la solución a 2.3 puede tomar otras formas como por ejemplo nrow(misdatos) o 
#    incluso dim(misdatos). Otras formas menos aceptables incluyen mirar en el environment
#  cuantas observaciones tiene misdatos, o imprimir misdatos$pib_per_capita y mirar 
# en la consola la cantidad de elementos. En estos ultimos casos se lleva solamente 2 puntos.







#' 3. Grafique los histogramas de estas tres variables:
#' "pib_per_capita" (2 pto),, "esperanza_de_vida" (2 pto), y el logaritmo natural de la variable "población" (4 pts).
#' Puede usar cualquier función y paquete de R que grafique histogramas

hist(misdatos$pib_per_capita, breaks = 15)
hist(misdatos$esperanza_de_vida, breaks = 15)
hist(log(misdatos$poblacion), breaks = 15)

# Notas para la corrección:
# - Cualquier función que grafique un histograma está OK
# - los detalles (como número de breaks) no inciden en el puntaje asignado
# - usar correctamente la función hist (o similar) pero con la variable incorrecta
#  tiene 0.5 puntos
# - usar correctamente la función hist (o similar) y usar la variable  población 
# pero fallar en usar el logaritmo natural de población tiene 1 punto





#' **Procedimiento para pedir recorreción**:
#' Si Ud. encuentra algún error en el puntaje asignado según esta pauta, puede solicitar una reevaluación de la siguiente manera:
#' 
#' - Tome el script que usted escribió durante la solemne y asigne, como comentarios
#' en el script, los puntos que usted considere adecuado *de acuerdo a la pauta de corrección*.
#' - Calcule el puntaje total y compárelo con el puntaje que obtuvo en esta corrección.
#' - Si ambos puntajes difieren, envíe un correo a su profesor, adjuntando su script con su propia corrección.
#' 