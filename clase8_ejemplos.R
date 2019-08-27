library(tidyverse)

# generemos observaciones desde distintas observaciones

nobs <- 1000

## N(0,1)
normales_01 <- rnorm(nobs)

## N(1, 4)
normales_14_direct <- rnorm(nobs, mean = 1, sd = 2)
normales_14_indirect <- 2*rnorm(nobs) + 1

## Poisson(5)
lambda_5 <- 5  
poi_5 <- rpois(nobs, lambda = lambda_5) 


## exponential(rate = 1/7)
rate_7 <- 1/7  
exp_7 <- rexp(nobs, rate = rate_7) 

## binomial B(5, 0.7)
bin_507 <- rbinom(nobs, size = 5, prob = 0.7)

## binomial B(5, 0.3)
bin_503 <- rbinom(nobs, size = 5, prob = 0.3)

## doble coincidencia de binomiales (TRUE si exito al mismo tiempo)

replicate(10, sum(rbinom(5, size = 1, prob = 0.3) + 
                  rbinom(5, size = 1, prob = 0.7)    == 2))

dcb <- replicate(nobs, sum(rbinom(5, size = 1, prob = 0.3) + 
                    rbinom(5, size = 1, prob = 0.7)    == 2))





