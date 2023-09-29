#HW5 continuous distribution
#65011521 Schnat Rattanasombatpaibul

question6 <- function(time_threshold, shape, scale) 
{
  time_sec <- time_threshold * 60
  probability <- 1 - pweibull(time_sec, shape, scale)
  return(probability)
}

Q6 <- question6(4, 1, 300)

cat("Q6 : ", Q6, "\n")



question7 <- function(alpha, beta, max_time)
{
  proportion_threshold <- 2 / max_time
  probability <- 1 - pbeta(proportion_threshold, shape1 = alpha, shape2 = beta)
  return(probability)
}

Q7 <- question7(2, 3, 2.5)

cat("Q7 : ", Q7, "\n")


question8 <- function(mean_lifetime, time_period) {
  
  rate_parameter <- 1 / mean_lifetime
  
  remaining_time <- mean_lifetime - time_period
  
  probability <- pexp(remaining_time, rate = rate_parameter, lower.tail = TRUE)
  
  return(probability)
}

Q8 <- question8(6, 3)

cat("Q8 : ", Q8, "\n")


question9 <- function(mean, std_dev, failure_time)
{
  z_score <- (failure_time - mean) / std_dev
  probability <- pnorm(z_score)
  return(probability)
}

Q9 <- question9(7000, 600, 5800)

cat("Q9 : ", Q9, "\n")


question10 <- function(theta, omega, viewing_time)
{
  probability <- 1 - plnorm(viewing_time, theta, sdlog = omega)
  return(probability)
}

Q10 <- question10(0.5,1,10)

cat("Q10 : ", Q10, "\n")
