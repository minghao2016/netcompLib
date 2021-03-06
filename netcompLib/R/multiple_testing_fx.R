##@S Functions that compute multiple testing p-values (or a statistic)

#' Compute quantile test statistic (Q)
#' 
#' @param x [vector-double] :: Input p-values
#' @param alpha [double] :: Alpha parameter in statistic
#' 
#' @return [double] :: Test statistic
#' 
#' @export
#' 
mult_quantileq = function(x, alpha = 0.05) {
  q = min(1, quantile(x, probs = alpha, type = 1)/alpha)
  return(q)
}


#' Compute quantile test statistic (R)
#' 
#' @param x [vector-double] :: Input p-values
#' @param alpha_min [double] :: Lower threshold for alpha parameter
#' @param alpha_max [double] :: Upper threshold for alpha parameter
#' 
#' @return [double] :: Test statistic
#' 
#' @export
#' 
mult_quantiler = function(x, alpha_min = 0.05, alpha_max = 1) {
  n = length(x)
  gridvals = seq(from = alpha_min, to = alpha_max, length.out = 3*n)
  qs = quantile(x, probs = gridvals, type = 1)/gridvals
  r = min(1, ((1 - log(alpha_min)) * min(1, qs) ) )
  return(r)
}




#' Compute higher-critiism test statistic
#' 
#' @param x [vector-double] :: P-values
#' @param alpha_min [double] :: Minimal alpha to maximize over
#' @param alpha_max [double] :: Maximal alpha to maximize over
#' 
#' @return [double] :: Test statistic
#' 
#' @export
#' 
mult_highcrit = function(x, alpha_min = 10^(-8), alpha_max = 0.2) {
  x[x < alpha_min] = alpha_min
  m = ceiling(alpha_max * length(x))
  n = length(x)
  xsub = sort(x, decreasing = FALSE)[1:m]
  stat = max(sqrt(n) * abs(seq_along(xsub) / n - xsub)/sqrt(xsub * (1 - xsub)))
  
  return(stat)
}


#' Computes Fisher's method test statistic (or p-value)
#' 
#' Computes p-value by assuming normality (using larger variance estimate)
#' Larger variance estiamte is bounded by 1/n + cor, but uses 1/n * adjust as variance. 
#' 
#' @param x [vector-double] :: P-values
#' @param adjust [logical] :: If NULL, function returns test statistic. Otherwise, this takes on a multiplier to variance. 
#' 
#' @return [double] :: Adjusted test statistic
#' 
#' @export
#' 
mult_fisher = function(x, adjust = NULL) { 
  stat = sum(-1 * log(x)) / length(x)
  if (is.null(adjust)) { return(stat) }
  return(1 - pnorm(q = ( (stat - 1) / sqrt(1/n * adjust))))
}


#' Computes Bonferroni correction
#' 
#' @param x [vector-double] :: P-values
#' 
#' @return [double] :: Minimal p-value
#' 
#' @export
#' 
mult_bonferroni = function(x) {
  return(min(x) * length(x))
}



