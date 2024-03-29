#' ---
#' title: "Estadística, clase 5"
#' author: "Ricardo Mayer"
#' date: "`r Sys.Date()`"
#' output:
#'   prettydoc::html_pretty:
#'     theme: tactile
#'     highlight: github
#' ---
#' 
## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
knitr::opts_knit$set(root.dir = rprojroot::find_rstudio_root_file())

#' 
## ----loadlibs, include=FALSE---------------------------------------------
library(tidyverse)
library(datos)
library(scales)

#' 
#' 
#' 
#' ## Tópicos de hoy
#' 
#' - Resumen de datos cualitativos (de la clase anterior)
#'   + Gráficos de barra (frecuencia y frecuencia relativa)
#'   + Gráficos de torta (frecuencia y frecuencia relativa)
#'   
#' - Resumen de datos cuantitativos
#'   + Distribución de frecuencia
#'     1.  Determinar el número de clases disyuntas. 
#'     2.  Determinar el ancho de cada clase 
#'     3.  Determinar los límites de clase.
#'     
#'   + Gráficos de dispersión
#' 
#' 
#' ## Datos cualitativos
#' 
## ----freq_corte_diamante, warning=FALSE----------------------------------

print(diamonds)

df <- diamantes %>%
  group_by(corte) %>%
  summarise(frec = n()) %>% 
  ungroup() %>% 
  mutate(rel_frec = frec/sum(frec),
         perc_frec = 100*rel_frec)
df

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = corte)) + 
  ylab("frecuencia") 

ggplot(data = df) +
  geom_col(mapping = aes(x = corte, y = rel_frec, fill = corte)) + 
  ylab("frecuencia relativa") 
  

ggplot(data = df) +
  geom_col(mapping = aes(x = corte, y = perc_frec, fill = corte)) + 
  ylab("frecuencia porcentual") 

ggplot(data = df) +
  geom_col(mapping = aes(x = corte, y = rel_frec, fill = corte)) + 
  ylab("frecuencia relativa") + 
  scale_y_continuous(labels = scales::percent)


# el equivalente a el boton % de excel para que muestre
# porcentajes en vez de proporciones (p.e. 12% en vez de 0.12)
# sería graficar las proporciones pero cambiar el formato del eje


#' 
#' 
## ----freq_corte_opac-----------------------------------------------------
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad))


ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad), position = "dodge") 
  



#' 
#' 
#' 
## ----frec_dotplot, warning=FALSE-----------------------------------------

ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth)

# Basic dot plot
p<-ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_dotplot(binaxis='y', stackdir='center')
p
# Change dotsize and stack ratio
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_dotplot(binaxis='y', stackdir='center',
               stackratio=1.5, dotsize=1.2)
# Rotate the dot plot
p + coord_flip()

# Use single fill color
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
    geom_dotplot(binaxis='y', stackdir='center', fill="#FFAAD4")
# Change dot plot colors by groups
p<-ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_dotplot(binaxis='y', stackdir='center')
p


#' 
#' ## Datos cuantitativos
#' 
## ----pesos---------------------------------------------------------------
wdata <- data.frame(
        sex = factor(rep(c("F", "M"), each=200)),
        weight = c(rnorm(200, 55), rnorm(200, 58))
        )
head(wdata, 4)

mu <- wdata %>% 
  group_by(sex) %>%
  summarise(grp.mean = mean(weight))
mu

#' 
## ----histogramas---------------------------------------------------------
a <- ggplot(wdata, aes(x = weight))

a + geom_histogram(bins = 30, color = "black", fill = "gray") +
  geom_vline(aes(xintercept = mean(weight)), 
             linetype = "dashed", size = 0.6)

a + geom_histogram(aes(fill = sex), 
                   position = "identity",
                   alpha = 0.4)

# change fill and outline color manually 
a + geom_histogram(aes(color = sex, fill = sex),
                         alpha = 0.4, position = "identity") +
  scale_fill_manual(values = c("#00AFBB", "#E7B800")) +
  scale_color_manual(values = c("#00AFBB", "#E7B800"))

#' 
#'   
#' ### Gráficos de distribución de frecuencias
#' 
#' 
#' 
#' 
#' ### Gráficos de dispersión
## ----disper--------------------------------------------------------------
# Convert cyl column from a numeric to a factor variable
mtcars$cyl <- as.factor(mtcars$cyl)
head(mtcars)
# Basic scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
# Change the point size, and shape
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(size=2, shape=23)

# Add the regression line
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth(method=lm)
# Remove the confidence interval
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE)
# Loess method
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth()

# Change the point colors and shapes
# Change the line type and color
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(shape=18, color="blue")+
  geom_smooth(method=lm, se=FALSE, linetype="dashed",
             color="darkred")
# Change the confidence interval fill color
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(shape=18, color="blue")+
  geom_smooth(method=lm,  linetype="dashed",
             color="darkred", fill="blue")

# Change point shapes by the levels of cyl
ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl)) +
  geom_point()
# Change point shapes and colors
ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl, color=cyl)) +
  geom_point()
# Change point shapes, colors and sizes
ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl, color=cyl, size=cyl)) +
  geom_point()

# Add regression lines
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
  geom_point() + 
  geom_smooth(method=lm)
# Remove confidence intervals
# Extend the regression lines
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
  geom_point() + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)

ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
  geom_point() + 
  geom_smooth(method=lm, aes(fill=cyl))

#' 
