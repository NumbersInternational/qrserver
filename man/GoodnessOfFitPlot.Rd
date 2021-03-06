% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gofplot.R
\name{GoodnessOfFitPlot}
\alias{GoodnessOfFitPlot}
\alias{GoodnessOfFitPlot.default}
\alias{GoodnessOfFitPlot.lm}
\alias{GoodnessOfFitPlot.smacof}
\alias{GoodnessOfFitPlot.smacofR}
\title{Goodness-of-Fit Plot
\code{GoodnessOfFitPlot} A generic function used to produce plots illustrating the goodness-of-fit of
the model object.  The function invokes particular \code{\link{methods}}
which depend on the \code{\link{class}} of the first argument.}
\usage{
GoodnessOfFitPlot(object, ...)

\method{GoodnessOfFitPlot}{default}(object, digits = max(3L,
  getOption("digits") - 3L), ...)

\method{GoodnessOfFitPlot}{lm}(object, digits = max(3L, getOption("digits") -
  3L), ...)

\method{GoodnessOfFitPlot}{smacof}(object, ...)

\method{GoodnessOfFitPlot}{smacofR}(object, ...)
}
\arguments{
\item{object}{An object for which a summary is desired.}

\item{...}{Additional arguments affecting the goodness-of-fit displayed.}

\item{digits}{Minimal number of significant digits, see \code{\link{print.default}}.}
}
\description{
reports the goodness-of-fit of an object.
}
\section{Methods (by class)}{
\itemize{
\item \code{default}: Default goodness-of-fit plot

\item \code{lm}: Goodness-of-fit plot for a linear model

\item \code{smacof}: Goodness-of-fit plot for a square smacof object

\item \code{smacofR}: Goodness-of-fit plot for a rectangular smacof object
}}
\examples{
# linear regression
x <- rnorm(10)
y <- rnorm(10) + x
mod <- lm(y ~ x)
GoodnessOfFitPlot(mod)

# MDS - square
library(smacof)
data(breakfastDissimilarities)
mdsInterval <- smacofSym(breakfastDissimilarities[[4]],
    type = "interval", eps = 1e-12, itmax = 100000)
GoodnessOfFitPlot(mdsInterval)
}

