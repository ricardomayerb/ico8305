foo <-  rnorm(1000)
moo <- unname(quantile(foo, probs = 0.9))
moo
c( "hola" = 4, "chao" = 7)
goo <- ecdf(foo)
goo(0.5)
goo(seq(0, 1, by = 0.01))
