#str: compactly display the internal structure of an R object
#a diagonosti function and an alternative to 'summary'
# display: what is in this object?

str(str)

str(lm)

str(ls)

x <- rnorm(100, 2, 4)
summary(x)
str(x)
#look how summary and str different

f <- gl(40, 10)
str(f)
summary(f)

library(datasets)
head(airquality)
str(airquality)

m <- matrix (rnorm(100), 10, 10)
str(m)
m[, 1]

s <- split(airquality, airquality$Month)
str(s)

