% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/scatterplot.R
\name{ReducePointAndLabelOverlap}
\alias{ReducePointAndLabelOverlap}
\title{Find better cootrdinates for text labels
\code{GetYlim} Identifies a better set of coordinates to place labels in a labeled ggplot scatterplot.}
\usage{
ReducePointAndLabelOverlap(p, cex = 1, fixed.aspect = FALSE, tstep = 0.1,
  rstep = 0.1)
}
\arguments{
\item{p}{A \code{\link[ggplot2]{ggplot}} plot.}

\item{cex}{Relative font, line and glyph size.}

\item{fixed.aspect}{If true, forces the x and y dimensions to be on the same scale.}

\item{tstep}{The angle (theta) step size as the algorithm spirals out.}

\item{rstep}{The radius step size (in standard deviations) as the algorithm spirals out.}
}
\value{
label.coords Recommended label coordinates.

dimensions Width and height of the text to be plotted in terms of the scale of x and y.
}
\description{
Find better cootrdinates for text labels
\code{GetYlim} Identifies a better set of coordinates to place labels in a labeled ggplot scatterplot.
}

