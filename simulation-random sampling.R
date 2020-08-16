#random sampling
#the sample function draws randomly from a specified set of objects allowing you to sample from arbitrary distribution

set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10) #permutation
sample(1:10, replace = TRUE) #sample with replacement
#replacement means you can have multiple 4, 9, etc
