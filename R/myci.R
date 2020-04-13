#' 95% confidence interval generating function
#'
#' a vector of samplings
#' @param x
#'
#' @return
#' confidence interval for the given vector
#'
#' @export
#'
#' @examples
#' x = rnorm(30, mean = 10, sd = 12)
#' myci(x)
myci = function(x){
  n = length(x)
  t=qt(1-0.05/2,n - 1)
  ci=c()
  ci[1]=mean(x)-t*sd(x)/sqrt(n)
  ci[2]=mean(x)+t*sd(x)/sqrt(n)
  ci
}
