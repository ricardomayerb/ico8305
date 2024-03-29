library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"


read_excel("nombres60.xlsx")

notas <- read_excel("nombres60.xlsx")


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
ggplot( data = notas) +
geom_point(aes(x = solemne, y = examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 

ggplot(data = notas) + geom_boxplot(aes(y = solemne))

# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 

mean(notas$solemne)
sd(notas$examen)
# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen

quantile(notas$examen,0.25)
quantile(notas$examen,0.75)
# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1

select(notas, c("apellido", "sexo", "examen"))
filter(notas,examen >= 4)

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# azul en el examen opcion 2

notas %>% select(c("apellido", "examen"))
notas %>%  filter(examen >= 4)

# 8) Compute la probabilidad de que en un grupo de 30 personas,
# 2 o más personas tengan el mismo cumpleaños 

n <- 30
cumples <- sample(1:365, n, replace = TRUE)
mismo_cumple <- function(n){
  cumples <- sample(1:365, n, replace=TRUE)
  any(duplicated(cumples))
}
mismo_cumple(30)

B <- 30
results <- replicate(B, mismo_cumple(30))
mean(results)

# 9) Encuentre el número más pequeño de personas en donde la
# probabilidad de que dos o mas personas tengan el mismo cumpleaños
# sea mayor o igual a 1/3