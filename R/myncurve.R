#' Plot a curve, shade the given area and calculate the probability
#'
#' The mean
#' @param mu
#' The Standard Deviation
#' @param sigma
#' Given Value
#' @param a
#'
#' @return A shaded curve with its probability
#' @export
#'
#' @examples
#' mu = 5, sigma = 2, a = 3, myncurve(mu, sigma, a)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve = seq(-100, a, length = 1000)
  ycurve = dnorm(xcurve, mean = mu, sd = sigma)
  polygon(c(-100, xcurve, a), c(0, ycurve, 0), col = "#FFCCCC")
  prob = 1- pnorm(a, mu, sigma)
  prob = round(prob, 4)
  text(mu, 0, paste("Probability = ", prob))
}
