# HW12 Central Limit Theorem
# 65011521 Schnat Rattanasombatpaibul

# Central Limit Theorem (CLT) Proof

# Set the seed, so it is easier to reproduce and test it
set.seed(521)

# Number of samples to draw
num_samples <- 3000

# Sample size (To test the CLT, I gradually increased the number of sample size)
sample_size <- c(5, 10, 30, 80, 120)

# Change this index in the range of 1 to 5 for each sample size
sample_index <- 4

# Create an empty vector filled with 0 to store sample means
x.bar <- numeric(num_samples)

# Create a chi-squared population with degrees of freedom = 4
popu.x <- rchisq(n = 700, df = 4)

# Loop to generate the sample means and store each of them into x.bar
for (i in 1:num_samples) {
  samp.x <- sample(popu.x, size = sample_size[sample_index], replace = TRUE)
  x.bar[i] <- mean(samp.x)
}

# Generate a histogram of the population distribution 
hist(popu.x, main = "Population Distribution", xlab = "Value")

# Generate a histogram of the sampling distribution
hist(x.bar, main = "Sampling Distribution", xlab = "Sample Mean")

# Calculate the means and standard deviations

# Sample mean (average of sample means)
sample_mean <- mean(x.bar)

# Population mean (average of the entire population)
population_mean <- mean(popu.x)

# Sample standard deviation
sample_sd <- sd(x.bar)

# Theoretical standard deviation for the sample mean (population SD / sqrt(sample size))
population_sd_with_sqrtn <- sd(popu.x) / sqrt(sample_size[sample_index])

# Rule 1 proof with difference
cat("Rule 1  Sample Mean : ", sample_mean, "Population Mean : ", population_mean, "\n")
cat("Difference : ", abs(sample_mean - population_mean), "\n")

# Rule 2 proof with difference
cat("Rule 2  Sample SD : ", sample_sd, "(Population SD/sqrt(n)) : ", population_sd_with_sqrtn, "\n")
cat("Difference : ", abs(sample_sd - population_sd_with_sqrtn), "\n")
