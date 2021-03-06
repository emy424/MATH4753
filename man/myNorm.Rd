% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/myNorm.R
\name{myNorm}
\alias{myNorm}
\title{Normal Experiment}
\usage{
myNorm(
  x,
  mu = seq(8, 16, length = 1000),
  sig = seq(0.1, 4, length = 1000),
  ...
)
}
\arguments{
\item{x}{the sample vector}

\item{mu}{the mean}

\item{sig}{the standard deviation}

\item{...}{more parameters can be read in}
}
\value{
a contour graph,
and the vector, the coordinates and mle is asked for
}
\description{
A function that takes in a vector of samples, the mean and standard deviation and simulates a contour graph
}
\examples{
myNorm(x = c(10,12,13,15,12,11,10), mu = seq(8, 16, length = 1000), sig = seq(0.1, 4, length = 1000), lwd = 2, labcex = 1)
}
