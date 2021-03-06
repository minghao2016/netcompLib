% Generated by roxygen2 (4.0.1): do not edit by hand
\name{h_optim}
\alias{h_optim}
\title{Optimize a log-likelihood - helper}
\usage{
h_optim(nparam, optim_tries, fn, gn, ...)
}
\arguments{
\item{nparam}{[int] :: number of parameters needing randomization}

\item{optim_tries}{[int] :: number of runs of optimization}

\item{fn}{[function] :: log-likelihood function}

\item{gn}{[function] :: gradient function}

\item{...}{[] :: other parameters to pass onto \code{\link{optim}}}
}
\value{
[list] :: best output of optim
}
\description{
Optimize a log-likelihood - helper
}

