#suppose we want to simulate from: y = beta0 + beta1x + e
#e ~ N(0,2^2), assume x ~N(0,1^2), beta0 = 0.5 and beta1 = 2
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 +2 *x + e
summary(y)

#what if x is binary
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0 ,2)
y <- 0.5 +2 * x + e

#suppose we want to simulate from a poisson model
#Y ~ Poisson(u), log u = beta0 + beta1x
#beta0 = 0.5, beta1 = 0.3
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
