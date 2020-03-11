library(readxl)
library(ggplot2)
library(dplyr)

# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
 notas <- read_excel("nombres60.xlsx")
 notas 


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
 ggplot(data = notas) + 
   geom_point(aes(x = solemne, y = examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2
 ggplot(data = notas) + 
   geom_boxplot(aes(y =solemne ))
 ggplot(data = notas) + 
   geom_boxplot(aes(y = examen))


# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen
 notas$solemne
solemne <- notas$solemne
mean(solemne)
examen <- notas$examen
sd(examen)
# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen

summary(examen)


# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1

filter(notas, examen >= 4)

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# azul en el examen opcion 2 

40/60

 
# 8) Compute la probabilidad de que en un grupo de 30 personas,
# 2 o más personas tengan el mismo cumpleaños 

n <- 30  

mismo_cumple <- function(n){
  cumples <- sample(1:365, n, replace=TRUE)
  any(duplicated(cumples))
}

mismo_cumple(30)

results <- replicate(n, mismo_cumple(30))
result$>=2
# 9) Encuentre el número más pequeño de personas en donde la
# probabilidad de que dos o mas personas tengan el mismo cumpleaños
# sea mayor o igual a 1/3