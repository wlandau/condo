library(parallel)
cores = detectCores()
print(cores)
l = mclapply(1:(cores - 1), function(x) x^2, mc.cores = cores - 1)
print(unlist(l))

