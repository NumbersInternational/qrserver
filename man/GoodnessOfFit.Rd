% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gof.R
\name{GoodnessOfFit}
\alias{GoodnessOfFit}
\alias{GoodnessOfFit.default}
\alias{GoodnessOfFit.smacof}
\alias{GoodnessOfFit.smacofR}
\title{Object Goodness-of-Fit
\code{GoodnessOfFit} summary is a generic function used to produce result summaries of the
results of the model object. The function invokes particular \code{\link{methods}}
which depend on the \code{\link{class}} of the first argument.}
\usage{
GoodnessOfFit(object, digits = max(3L, getOption("digits") - 3L), ...)

\method{GoodnessOfFit}{default}(object, digits = max(3L, getOption("digits") -
  3L), ...)

\method{GoodnessOfFit}{smacof}(object, digits = max(3L, getOption("digits") -
  3L), ...)

\method{GoodnessOfFit}{smacofR}(object, digits = max(3L, getOption("digits") -
  3L), ...)
}
\arguments{
\item{object}{An object for which a summary is desired..}

\item{digits}{Minimal number of significant digits, see \code{\link{print.default}}.}

\item{...}{Additional arguments affecting the goodness-of-fit displayed.}
}
\description{
reports the goodness-of-fit of an object.
}
\section{Methods (by class)}{
\itemize{
\item \code{default}: Default goodness-of-fit \eqn{R^2}

\item \code{smacof}: Goodness-of-fit for a smacof object with square data (i.e., dissimilarities/distance)

\item \code{smacofR}: Goodness-of-fit for a smacofR object with rectangular data (e.g., preferences)
}}
\examples{
# linear regression
x <- rnorm(10)
y <- rnorm(10) + x
mod <- lm(y ~ x)
GoodnessOfFit(mod)

# MDS - square
library(smacof)
data(breakfastDissimilarities)
mdsInterval <- smacofSym(breakfastDissimilarities[[4]],
    type = "interval", eps = 1e-12, itmax = 100000)
GoodnessOfFit(mdsInterval)
# MDS - rectangular
data(breakfast)
GoodnessOfFit(smacofRect(breakfast))
}

