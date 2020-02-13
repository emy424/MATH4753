#' Binomial simulation plotting function
#'
#' number of time for iteration
#' @param iter
#'
#' number of size
#' @param n
#'
#' probability
#' @param p
#'
#' @return A table along with a barplot of the simulation
#' @export
#'
#' @examples
#' iter = 10,000, n = 5, p = 0.5 mybin(iter, n, p)
mySimulation = function(iter=100, n=10, p=0.7){
  #making a matrix to hold the samples, initializing with NA
  sam.mat = matrix(NA, nr = n, nc =iter, byrow = TRUE)
  #making a vector to hold the number of successes
  succ = c()

  for (i in 1:iter){
    #filling each column with a new sample
    sam.mat[,i] = sample(c(1,0), n, replace = TRUE, prob = c(p, 1-p))
    #calculate the sum from the sample
    succ[i] = sum(sam.mat[,i])
  }
  #Make a table of successes
  succ.tab = table(factor(succ, levels = 0:n))
  barplot(succ.tab/(iter), col = rainbow(n+1), main = "Binomail simulation", xlab = "Number of successes")
  succ.tab/iter
}
