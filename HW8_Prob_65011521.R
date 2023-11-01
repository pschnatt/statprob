#HW8 Statistical Mode
#65011521 Schnat Rattanasombatpaibul
my.mode <- function(data)
{
  cat("Data Set : ", data, "\n")
  
  # Create a frequency table of data and store it in data.frequency.
  data.frequency <- table(data)
  
  # Find unique elements in data and store them in data.set.
  data.set <- unique(data)
  
  # Calculate the number of unique elements in data and store it in data.length.
  data.length <- length(data.frequency)
  
  # Check if there is more than one unique element and if all frequencies are equal.
  if(data.length > 1 & all(data.frequency == data.frequency[1])){
    # If it is , there is no mode.
    cat("No mode\n")
    return()
  }
  
  # Find the maximum frequency in data.frequency and store it in max.val.
  max.val <- max(data.frequency)
  
  cat("Mode : ")
  
  # Iterate over the unique elements and their frequencies.
  for (index in 1:data.length){
    # Check if the frequency at index matches the maximum frequency.
    if (data.frequency[index] == max.val){
      # If it is, print the corresponding unique element as a mode.
      cat(data.set[index]," ")
    }
  }
  cat("\n")
}


y1 <- c(1,2,3,4,5)
my.mode(y1)
y2 <- c(3,3,3,3,3)
my.mode(y2)
y3 <- c(1,2,2,3,4,4,5)
my.mode(y3)
y4 <- c(1,1,2,2,3,3,4,4,5)
my.mode(y4)
y5 <- c(1,1,2,2,3,3,4,4,5,5)
my.mode(y5)



