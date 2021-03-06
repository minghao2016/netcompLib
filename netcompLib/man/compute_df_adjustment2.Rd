% Generated by roxygen2 (4.0.1): do not edit by hand
\name{compute_df_adjustment2}
\alias{compute_df_adjustment2}
\title{Compute the df adjustment}
\usage{
compute_df_adjustment2(n, cell_corr, cc_adj = 2)
}
\arguments{
\item{n}{[vector-int] :: Edge group sizes}

\item{cell_corr}{[vector-double] :: Estimated within-edge-group correlations}

\item{cc_adj}{[double] :: Number of SE's away for conservativeness in cell_correlation estimate}
}
\value{
[vector-double] :: Vector of df adjustments (per-edgegroup)
}
\description{
Degree of freedom adjustment for the likelihood ratio test due to mis-specified model, and also due to small-sample issues
}

