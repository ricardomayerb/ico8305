a <- c(2,3,9)
b <- c("juan", "carla", "diego")

a[3]
b[1]

f <- list(1,a,"hola",b)

f[[1]]
f[[4]]
f[[2]]

df <- data.frame(nombres = b, puntos_p1 = a)

df[3,2]
df[ , 1]
df[ , ]
df[c(1,3), ]

t <- c(FALSE, FALSE, TRUE)
df[ t , ]

reprueba <- df$puntos_p1 < 5
df[ reprueba , ]











