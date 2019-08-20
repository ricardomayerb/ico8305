library(tabulizer)
library(tidyverse)

book <- "./Anderson_Sweeney.pdf"

area1 <- locate_areas(book, pages = 148)


tabla_3_10_listdf <- extract_tables(file = book, pages = 148, area = area1,
                                    output = "data.frame")
tabla_3_10_df <- tabla_3_10_listdf[[1]]
tabla_3_10_df <- tabla_3_10_df[-1,]
colnames(tabla_3_10_df) <- c("notebook", "puntos_func", "puntos_gral")
tabla_3_10_df


# area2_ok <- list(c(580, 174.7788, 785.3365, 585.6923))

area2 <- locate_areas(book, pages = 140)
area2
tabla_3_7_listdf <- extract_tables(file = book, pages = 140, area = area2,
                                output = "data.frame")
tabla_3_7_df <- tabla_3_7_listdf[[1]]
tabla_3_7_df <- tabla_3_7_df[-1,]
colnames(tabla_3_7_df) <- c("semana", "x_n_com", "y_vol_vtas")
tabla_3_7_df


area3 <- locate_areas(book, pages = 86)
area3
# [[1]]
# top     left   bottom    right 
# 287.1635 150.9808 782.1635 601.5577 

area3b <- locate_areas(book, pages = 86)
area3b
# [[1]]
# top     left   bottom    right 
# 279.2308 136.7019 793.2692 609.4904 

tabla_2_13_listdf <- extract_tables(file = book, pages = 86, area = area3,
                                   output = "data.frame")
tabla_2_13_listdf


tabla_2_13_listdfb <- extract_tables(file = book, pages = 86, area = area3b,
                                    output = "data.frame")
tabla_2_13_listdfb


area4 <- locate_areas(book, pages = 92)
area4

tabla_2_16_listdf <- extract_tables(file = book, pages = 92, area = area4,
                                    output = "data.frame")
tabla_2_16_listdf


area4b <- list(c(77.74038, 250, 350.62500, 601.55769))
foo <- extract_tables(file = book, pages = 92, area = area4b,
               output = "data.frame")
foo <- foo[[1]]
foo
foo <- foo[,-1]
foo
