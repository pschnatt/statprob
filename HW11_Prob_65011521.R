# Create a vector of diameter measurements
diameter <- c(8.24, 8.25, 8.2, 8.23, 8.24, 8.21, 8.26, 8.26, 8.2, 8.25, 8.23, 8.23, 8.19, 8.28, 8.24)

# Perform a one-sample t-test to test if the sample mean is greater than 8.25
result <- t.test(diameter, mu = 8.25, alternative = "greater")

# Print the results of the t-test
print(result)
