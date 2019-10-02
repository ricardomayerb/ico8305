library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"

# Sol: (no olvidar las comillas y la extensión .xlsx del archivo)
notas <- read_excel("nombres60.xlsx")
notas # no es necesario pero ayuda a entender la solución



# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 

# Sol:
# Opción 1: base. Note que requiere vectores, como p.e. notas$examen
plot(notas$solemne, notas$examen)

# Opción 2: ggplot2. Requiere el data frame y el nombre de las cols
ggplot(notas) + 
  geom_point(aes(x = solemne, y = examen))




# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 

# Sol:
# Opción 1: base. Note que requiere vectores, como p.e. notas$examen
boxplot(notas$solemne)
boxplot(notas$examen)

# Opción 2: ggplots. Requiere el data frame y el nombre de las cols
ggplot(notas) + 
  geom_boxplot(aes(y = solemne))

ggplot(notas) + 
  geom_boxplot(aes(y = examen))


# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 

# Sol:
# Opción 1, usando vectores 
mean(notas$solemne)
sd(notas$examen)


# Opción 2, usando una data frame y summary (base)
notas %>% 
  summarise(mean_sol = mean(solemne),
            sd_examen = sd(examen))


# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
# Sol:
# Opción 1. Usando vectores y quantile
quantile(notas$examen, 0.25)
quantile(notas$examen, 0.75)

# Opción 1b. Usando vectores y summary
summary(notas$examen)

# Opción 2. Usando todo el data frame y summarise
notas %>% 
  summarise(examen_25 = quantile(examen, 0.25),
            examen_75 = quantile(examen, 0.75))

# Opción 2b. Usando todo el data frame summary (base)
summary(notas)

# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1

# Sol:
# Opcion 1: Indexado logico (base)  
notas_exazul <- notas[notas$examen >= 4, ]

# Opcion 2: usando filter (filter)
notas_exazul <- notas %>% filter(examen >= 4)

notas_exazul

# No era necesario asignar el resultado a un objeto, pero hace 
# más corto el proximo

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# Sol:
# Opcion 1
nrow(notas_exazul)/nrow(notas)

# Opcion 2
length(notas$examen[notas$examen >= 4])/length(notas$examen)


# 8) Compute la probabilidad de que en un grupo de 30 personas,
# 2 o más personas tengan el mismo cumpleaños 

# 9) Encuentre el número más pequeño de personas en donde la
# probabilidad de que dos o mas personas tengan el mismo cumpleaños
# sea mayor o igual a 1/3