% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/whit_class.R
\name{whit2}
\alias{whit2}
\title{Weighted Whittaker smoothing with a second order finite difference penalty}
\usage{
whit2(y, lambda, w = rep(1, ny))
}
\arguments{
\item{y}{signal to be smoothed: a vector}

\item{lambda}{smoothing parameter: larger values lead to more smoothing}

\item{w}{weights: a vector of same length as y. Default weights are equal to one}
}
\value{
A numeric vector, smoothed signal.
}
\description{
This function smoothes signals with a finite difference penalty of order 2.
}
\examples{
data(gaschrom)
plot(gaschrom[1,], type = "l", ylim = c(0, 100))
lines(whit2(gaschrom[1,], lambda = 1e5), col = 2)
lines(whit2(gaschrom[1,], lambda = 1e6), col = 3)
lines(whit2(gaschrom[1,], lambda = 1e7), col = 4)
}
\references{
[1]. Eilers, P.H.C. (2004) "Parametric Time Warping", Analytical Chemistry, 
\bold{76} (2), 404 -- 411. \cr
[2]. Eilers, P.H.C. (2003) "A perfect smoother", Analytical Chemistry, 
\bold{75}, 3631 -- 3636.
}
\author{
Paul Eilers, Jan Gerretzen
}
