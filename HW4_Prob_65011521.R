empirical_rule_of_normal <- function(μ, σ){ # This function takes two input arguments, the mean (μ) and the standard deviation (σ) of the normal distribution.
  X <- rnorm(10000000, μ, σ) 
  # This function (rnorm()) generate a large number of random samples in vector from the normal distribution which mean and standard deviation comes from input arguments.
  # Then, store it in variable X 
  
  # Calculate the proportion of data points within each interval
  prob_within_1_sd <- sum(abs(X - μ) <= σ) / length(X)
  # the proportion of data points that fall within one standard deviation of the mean (μ ± σ).
  prob_within_2_sd <- sum(abs(X - μ) <= 2 * σ) / length(X)
  # the proportion of data points that fall within two standard deviations of the mean (μ ± 2σ).
  prob_within_3_sd <- sum(abs(X - μ) <= 3 * σ) / length(X)
  # the proportion of data points that fall within two standard deviations of the mean (μ ± 3σ).

  return(c(`68%` = prob_within_1_sd, `95%` = prob_within_2_sd, `99.7%` = prob_within_3_sd))
  # This function, then, returns a vector containing the probabilities for each interval (68%, 95%, and 99.7%) based on the generated samples.
}
# probability when N(0,1) mean = 0 and standard deviation = 1
mean_value1 <- 0
standard_deviation1 <- 1
probs1 <- empirical_rule_of_normal(mean_value1, standard_deviation1)
cat("N(0,1)\n")
print(probs1)
cat("\n")
# probability when N(5,3) mean = 5 and standard deviation = 3
mean_value2 <- 5
standard_deviation2 <- 3
probs2 <- empirical_rule_of_normal(mean_value2, standard_deviation2)
cat("N(5,3)\n")
print(probs2)
cat("\n")
# probability when N(16,7) mean = 16 and standard deviation = 7
mean_value3 <- 16
standard_deviation3 <- 7
probs3 <- empirical_rule_of_normal(mean_value3, standard_deviation3)
cat("N(16,7)\n")
print(probs3)
cat("\n")
# Overall, This code will generate and print the probabilities for each interval (68%, 95%, and 99.7%) for the normal distributions N(0, 1), N(5, 3), and N(16, 7).
# Because the sample is large enough, the probability from each distribution is closely the same and match with theoretical probabilities.
# However,  the probabilities are approximations based on the generated random samples, so they might slightly vary from the exact value.