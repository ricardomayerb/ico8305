
belen <- data.frame(nombres = c("raul", "carolina", "paulino"),
                    puntajes = c(4, 10, 7))

aprueba <- c(4, 10, 7) >= 5

belen[aprueba, ]

belen[ c(4, 10, 7) >= 5 , ]
