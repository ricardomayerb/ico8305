library(readr)
library(openxlsx)
it <- read_csv("it.txt", col_names = FALSE)
names(it) <- "apellido"
it2 <- read.csv("~/ico8305/it.txt", sep="", stringsAsFactors=FALSE)

set.seed(182132)
it_60 <- it[sample(1:nrow(it), size = 60), ]
sexo <- sample(c("hombre", "mujer"), size = 60, 
               replace = TRUE, prob = c(0.4, 0.6))
it_60$sexo <- sexo


write.xlsx(it_60, "./nombres60.xlsx")

