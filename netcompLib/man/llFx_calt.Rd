% Generated by roxygen2 (4.0.1): do not edit by hand
\name{llFx_calt}
\alias{llFx_calt}
\title{Computes Log-likelihood for alternate-hypothesis correlation case}
\usage{
llFx_calt(t, C, n)
}
\arguments{
\item{t}{[vector-double] :: c(rho, a_v, b_v)}

\item{C}{[matrix-int] :: Dyad group counts, in format: cbind(c11, c10, c01, c00)}

\item{n}{[vector-int] :: Dyad group sizes}
}
\value{
[double] :: Log-likelihood at current point
}
\description{
Computes Log-likelihood for alternate-hypothesis correlation case
}

