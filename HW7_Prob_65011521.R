#HW7 Mean as a balance point
#65011521 Schnat Rattanasombatpaibul

x <- c(4.9, 6.8, 1.3, 7.4, 2.5)

my.mean <- function(x) { #define function my.mean
  
  mx <- seq(min(x), max(x), by=0.01)
  # seq function will generate a sequence of potential mean values ranging from the minimum to the maximum value of x, with an increment of 0.01
  
  for (i in 1:length(mx)) {# Loop through each potential mean value in the sequence
    
    sum.diff <- 0
    # Initialize a variable sum.diff to 0 to keep track of the sum of differences between elements of x and mx[i]
    
    for (j in 1:length(x)) {
      # Loop through each element in the input vector x
      
      diff[j] <- x[j] - mx[i]
      # Calculate the difference between the current element of x and the current potential mean value mx[i]
      # Store the difference in a vector named diff
      
      sum.diff <- sum.diff + diff[j]
      # Add the current difference to the sum.diff variable to accumulate the sum of differences
    }
    
    if (sum.diff == 0) {
      # if the sum of differences equals 0, which means that mean value has been found, break the loop
      cat("Found Mean at mx:", mx[i], "\n")
      break
    }
  }
}

my.mean(x)
mean_x <- mean(x)
cat("Mean of x:", round(mean_x, 2), "\n") #compare my.mean function with the r mean function
