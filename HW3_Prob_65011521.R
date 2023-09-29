#HW3 probability distribution
#65011521 Schnat Rattanasombatpaibul

options(max.print = 100000,scipen = 999)
#Like in previous HW, options scipen set the penalty for scientific notation.
#I use options max.print which allows more lines to be printed before truncating the output.
#This is because i want to know if rbinom really generate 100000 example so i try to cat it out; however,
#it only shows 1000 sample of output. But after i use maxprint = 100000, it cat out all 100000 samples.

size <- 4
#I assign the value 4 to the variable size. The size variable represents the number of trials 
#(bits transmitted through the digital transmission channel).

probability <- 0.1
#I assign the value 0.1 to the variable probability, which represents the chance that 
#a bit transmitted through the digital transmission channel is in error.

x <- c(0,1,2,3,4)
#I assign vector of value 0,1,2,3,4 to variable x, which represents the possible outcomes of error.
#(0 = no errors and 4 = all bits received in error)

mass.prob <- dbinom(x, size, probability)
#I assign dbinom() to variable "mass.prob". This function calculates the probability mass function of the binomial distribution
#and returns a vector, which contains the probabilities for each outcome in x. 
#These probabilities represent the chance of getting 0, 1, 2, 3, or 4 bits received in error out of the next 4 transmitted bits, based on the given probability and size.

cat("The mass probability of all possible outcome = ", mass.prob, "\n")
#It print the mass probability of all possible outcome

rand.sample <- rbinom(100000, size, probability)
#I assign rbinom(100000, size, probability) to variable "rand.sample" ,which generates 100,000 random samples from a binomial distribution.
#It represent the number of bits received in error out of 4 transmitted bits in each sample.

sample.mean <- mean(rand.sample)
#the variable sample.mean is assigned the value of the mean of the rand.sample vector. This mean represents the average number of 
#bits received in error out of 4 transmitted bits across the 100,000 generated random samples, providing an estimate of the expected number 
#of errors per 4 bits based on the binomial distribution

sample.variance <- var(rand.sample)
#i assigned var() to variable sample.variance ,which calculate the variance of rand.sample to measure the dispersion of a set of data points around their mean.

cat("The mean of rbinom() = ", sample.mean, " and The variance of rbinom() = ", sample.variance, "\n")
#It print the mean and variance of randomly generated samples from binomial distribution.

error3.prob <- pbinom(3, size, probability)
#The function pbinom()  calculates the cumulative binomial probability of observing 3 or fewer bits received in error out of 4 transmitted bits, based on the binomial distribution.

cat("The probability of getting less than or equal to 3 errors = ", error3.prob, "\n")
#It print the sum of all probability of getting less than or equal to 3 errors.

barplot(mass.prob, names.arg = x, col = "red", xlab = "Number of Bits Received in Error", ylab = "Probability", main = "Probability Distribution")
#The barplot() function generates a bar plot showing the probability distribution of bits received in error (stored in mass.prob) for each possible outcome (0 to 4 errors), 
#with the x-axis labeled as "Number of Bits Received in Error," the y-axis labeled as "Probability," and a red color scheme for the bars.

#In conclusion, this code uses the binomial distribution to analyze the probability distribution of errors in a digital transmission channel. 
#It calculates and displays various statistics, including the mass probabilities for each possible outcome (0 to 4 errors), the mean, and 
#the variance of 100,000 randomly generated samples. Additionally, it provides the cumulative probability of observing 3 or fewer errors out of the next 4 transmitted bits. 
#The code further visualizes the probability distribution with a bar plot, representing the probabilities of encountering different numbers of errors (0 to 4) in red-colored bars.

