#really handy tool when developing larger programs, or doing really big data analyses

system.time()
#computes the time in seconds needed to execute an expression
#user time: time charged to the CPU for this expression
#elapsed time: "wall clock" time that you are experiencing
#usually they are relative close
#elapsed time may be great than user time if the CPU spends a lot of time waiting around
#elapsed time may be smaller than the user time if your machine has nultiple core-processors and is capable of using them

system.time(readLines("http://www.jhsph.edu"))
#user system eplasped

hilbert <- function(n){
  i <- 1:n
  1 / outer(i - 1, i, "+")
}
x <- hilbert(1000)
system.time(svd(x))

system.time({
  n <- 1000
  r <- numertic(n)
  for (i in 1:n){
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})


#The Rprof() function starts the profiler in R
#the summary Rprof() function summarizes the output from Rprof()
#Do not use system.time() and Rprof together

#Rprof() keeps track of the function call stack at regularly sampled intervals and tabulates how much time is pend in each function
#if your codes runs very quickly, the profiler is not useful

#summaryProf() function tabulates the R profiler output and calculates how much time is spend in which function
#There are two methods for normalizing the data
#"by.total" divides the time spend in each function by the total run time
#"by.self" does the same but first subtracts out time spent in functions above in the call stack

