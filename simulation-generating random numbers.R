#simulation
#generating random numbers
#functions for probability distributions in R:
#rnorm: generate random normal variates with a given mean and standard deviation
#dnorm: evaluate the normal probability density (with a given mean/SD) at a point (or vector of points)
#pnorm: evaluate the cumulative distribution function for a Normal distribution
#rpois: generate random poisson variateis with a given rate

#probability distribution functions usually have four functions associated with them:
#d for density
#r for random number generation
#p for cumulative distribution
#q for quantile function

#normal distributions functions
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, eman = 0, sd = 1, lower.tai. = TRUE, log.p = FALSE)
#qnorm is the inverse of pnorm
rnorm(n, mean = 0, sd = 1)

#generating random numbers
x <- rnorm(10) #10 is the number of variables you want to generate, they have mean zero and standard deviation one

x <- rnorm(10, 20, 2) #mean 20 and standard deviation two
summary(x)

#setting the random number seed with set.seed ensure reproducibility
set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5) #exactly the same with the first rnorm(5)
#always set the random number seed when conducting a simulation
#so that always generate the same random variables

#generating poisson data
rpois(10, 1) #ten poisson random variables with the rate of one
rpois(10, 2) #mean is approximately the rate
rpois(10, 20)

ppois(2, 2) #cummulative distribution
ppois(2, 4) #Pr(x <= 2)
ppois(4, 2) #Pr(x <= 4)
ppois(6, 2) #Pr(x <= 6)