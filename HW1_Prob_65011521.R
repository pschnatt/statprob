# HW 1 Empirical Probability
# Schnat Rattanasombatpaibul 65011521

options(scipen=20) # the function options(scipen=x) increases the penalty for switching to scientific notation when displaying numbers.

roll.die <- function(n){ # create a function named "roll.die" which takes a parameter "n".
  
  set.seed(521) #set.seed allows me to control randomness and obtain the same random result every time i run the code with the same seed.
  
  die <- c(1,2,3,4,5,6) #the c() function concatenates 6 integers(which represent the die sides) to create a vector of int and assign a vector to "die" variable.
  
  results <- sample(die, size=n, replace=TRUE) 
  #the variable "results" is assigned with the sample() function that generates the vector of size n which contain random values from "die" vector and "replace=TRUE" means that
  #each element is selected independently and after each selection the element is returned to the population which means that there can be repetition of number in the sample.
  get5 <- sum(results==5) 
  # the variable "get5" is assigned with sum() function that add up all the value of each element in "results" vector when compared with 5.
  # To make it more clear, if an element's value is equal to 5 it will add 1 which means TRUE; if an element's value is not equal to 5 it will add 0 which means FALSE.
  prob5 <- get5/n 
  # According to empirical probability, the "prob5" is assigned with the probability of getting "5" when rolling a die n times, which computes by
  # frequency of getting result of 5 when rolling a die n times(which the value stored in "get5") divided by n times
  different <- abs(prob5-(1/6))
  # the variable "different" is assigned with absolute value (unsigned) of the difference between the empirical probability of getting 5 when roll a die n times 
  # and the classic probability of getting 5 when roll a die.
  cat("rolling =",n,"\n", "Probability of getting 5 =",prob5,"\n")
  # the cat() function concatenates and prints the argument passed to it.
  # In this line, it prints "rolling = n (the argument we passed to the function)" followed by the newline "Probability of getting 5 = prob5 (the empirical probability)"
  # followed by newline.
  cat("Difference =",different,"\n\n") # it prints "Difference = different (the difference between empirical and classic probability in absolute value)" followed by 2 newlines.
}

roll.die(1000) 
# it passed 1000 to the function which means to find the probability when roll a die 1000 times; the result shows that the probability is 0.155 and 
# the difference is 0.01166667
roll.die(100000)
# it passed 100000 to the function which means to find the probability when roll a die 100000 times; the result shows that the probability is 0.16691 and 
# the difference is 0.0002433333 which means that the result from both probability are closer as the number of trials in empirical probability is increased. 
roll.die(1000000)
# it passed 1000000 to the function which means to find the probability when roll a die 1000000 times; the result shows that the probability is 0.167152 and 
# the difference is 0.0004853333. Although the difference is greater than the previous one(which can caused by discrepancy) which roll a die only 100000 times 
# which is lesser, the difference still low when compared to rolling only 1000 times.

