library(tidyverse)
library(datos)

millas


plot(millas$motor, millas$autopista)

ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista))


ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista, color = clase))


ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista)) +
  facet_wrap(~ clase)

# Izquierda
ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista, alpha = clase))

# Derecha
ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista, shape = clase))

ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista)) +
  facet_wrap(~ clase, nrow = 2)


ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista)) +
  facet_wrap(~ clase, ncol = 2)


ggplot(data = millas) +
  geom_point(mapping = aes(x = motor, y = autopista)) +
  facet_grid(traccion ~ cilindros)


ggplot(data = millas) +
  geom_smooth(mapping = aes(x = motor, y = autopista))

ggplot(data = millas) +
  geom_smooth(mapping = aes(x = motor, y = autopista, linetype = traccion))


ggplot(data = millas) +
  geom_smooth(
    mapping = aes(x = motor, y = autopista, color = traccion),
    show.legend = FALSE
  )  +
  geom_point(
    mapping = aes(x = motor, y = autopista, color = traccion)
  )


# cdc <- source("http://www.openintro.org/stat/data/cdc.R")

# 1 + 2
#> [1] 3
