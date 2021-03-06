% Generated by roxygen2 (4.0.1): do not edit by hand
\name{computeLik}
\alias{computeLik}
\title{Compute Log-likelihood of a network on a specific model}
\usage{
computeLik(NetM, adja, by_node = FALSE, by_group = FALSE, na.rm = TRUE)
}
\arguments{
\item{NetM}{[\code{\link{NetworkModel}}] :: Model to compute log-likelihood on}

\item{adja}{[matrix/array] :: Adjacency matrix or array}

\item{by_node}{[logical] :: If TRUE, returns by_node breakdown of log-likelihood}

\item{by_group}{[logical] :: If TRUE, returns breakdown of log-likelihood by edge groups}

\item{na.rm}{[logical] :: If TRUE, ignores NAs in the adjacency matrix}
}
\value{
[list] :: Log-likelihood in various formats, stored in a list as follows:
\itemize{
\item sum -- [double] :: Entire log-likelihood
\item bynode -- [vector-double] :: Log-likelihood summed for each node
\item group_ll -- [vector-double] :: Log-likelihood summed in each dyad group
\item group_size -- [vector-int] :: Dyad group sizes
}
}
\description{
Compute Log-likelihood of a network on a specific model
}

