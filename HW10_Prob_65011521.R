# Define a given function int.est that calculates a confidence interval
# for the mean of a data set at a specified confidence level.
# which takes 2 parameter (x) for data set and (conf) for confidence level.
int.est = function(x, conf) {
  
  # Calculate the area under the t distribution curve for the specified confidence level.
  # The area represents the portion of the distribution that the confidence interval will cover.
  area = (conf/100) + ((1 - (conf/100)) / 2)
  
  # Calculate the standard error of the mean (SE) for the data set x.
  # SE measures the average amount that the sample mean is expected to vary from the true population mean.
  se = sd(x) / sqrt(length(x))
  
  # Calculate the margin of error using the critical t-value, area, SE, and degrees of freedom.
  # The margin of error accounts for the uncertainty in estimating the population mean from the sample mean.
  margin = qt(area, length(x) - 1) * se
  
  # Calculate the lower and upper bounds of the confidence interval.
  # These bounds represent the range within which the true population mean is likely to fall.
  lower = mean(x) - margin
  upper = mean(x) + margin
  
  # Print the lower and upper bounds of the confidence interval.
  cat("lower = ", lower, "\nupper = ", upper)
}

# Create a data set of test scores.
score = c(83, 73, 62, 63, 71, 77, 77, 59, 92)

# Call the custom function int.est to calculate and print a 95% confidence interval.
int.est(score, 95)

# Use the t.test function to calculate a 95% confidence interval for comparison.
# The t.test function performs a Student's t-test to calculate the interval.
cat("\nt.test lower : ",t.test(score)$conf.int[1])
cat("\nt.test upper : ",t.test(score)$conf.int[2])
