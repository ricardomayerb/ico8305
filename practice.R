library(tidyverse)
library(datos)

ggplot(data = millas) + 
  geom_point(mapping = aes(x = motor, y = autopista))

filter(millas, cilindros == 8)
filter(diamantes, quilate >= 3)
