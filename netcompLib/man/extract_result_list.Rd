% Generated by roxygen2 (4.0.1): do not edit by hand
\name{extract_result_list}
\alias{extract_result_list}
\title{Extracts p-values (or aggregated p-values) for a specific class of testing.}
\usage{
extract_result_list(reslist, cc_adj = 2, thres_ignore = 5, alphas = 0.05,
  n_structs = 50, raw_pvals = FALSE)
}
\arguments{
\item{full_output}{Full result list from sim_test}

\item{reslist}{Output from sim_power_rpart}

\item{cc_adj}{Value for correlation adjustment}

\item{thres_ignore}{Value for thresholding}

\item{alphas}{Size of test}

\item{n_structs}{Number of fixed models to use}

\item{raw_pvals}{T/F: Output raw p-values as a list?}
}
\value{
Vector of aggregated p-values (and a list of raw p-values if desired)
}
\description{
Extracts p-values (or aggregated p-values) for a specific class of testing.
}

