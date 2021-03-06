% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{PlotEquilbriumCodonDistribution}
\alias{PlotEquilbriumCodonDistribution}
\title{Function to plot a distribution of frequencies of codons given a 3d array of equilibrium frequency matrices}
\usage{
PlotEquilbriumCodonDistribution(eq.freq.matrices, values, palette = "Set1",
  lwd = 2, ...)
}
\arguments{
\item{eq.freq.matrices}{A 3d array of eq.freq.matrix returned from ComputeEquilibriumFrequencies}

\item{values}{The vector of labels for each matrix (i.e., different Phi values)}

\item{palette}{Color palette to use from RColorBrewer}

\item{lwd}{Line width}

\item{...}{Other paramters to pass to plot()}
}
\description{
Function to plot a distribution of frequencies of codons given a 3d array of equilibrium frequency matrices
}
\examples{

phi.vector <- c(0.01, .1, 0.5, 2)
eq.freq.matrices <- array(dim=c(64, 20, length(phi.vector)))
for (i in sequence(length(phi.vector))) {
  eq.freq.matrices[,,i] <- ComputeEquilibriumCodonFrequencies(Phi=phi.vector[i])
}
values = paste("Phi = ", phi.vector, sep="")
PlotEquilbriumCodonDistribution(eq.freq.matrices, values)
}
