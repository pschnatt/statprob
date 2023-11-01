# HW 2 Pi Estimation
# Schnat Rattanasombatpaibul 65011521

options(scipen=999) 
# options(scipen = x) set the penalty for switching to scientific notation.
# In this case, I set it to 999 to disable the use of scientific notation 
# for most of the value.

my.pi <- function(n){ # create a function named "my.pi" which takes a parameter "n". 
  
  set.seed(521)
  # set.seed allows me to control randomness and obtain the same 
  # random result every time i run the code with the same seed.
  
  x = runif(n, min = 0, max = 1)
  # the variable "x" is assigned with runif() function that 
  # return numeric vector of size n which has upper bound of 1(exclusive)
  # and lower bound of 0 (inclusive).
  # In this case the value of each n can't be more than or equal to 1
  # and can't be lower than 0.
  
  y = runif(n)
  # the variable "y" is also assigned with runif() function; however,
  # it does not have the parameter min nor max ,so the min and max will
  # be set to it default value which is min = 0 and max = 1.
  
  # By doing this x and y will contain only the value inside the 1 unit square
  
  r = sqrt((x^2)+(y^2))
  # the variable "r" is assigned with the numeric vector of result of 
  # square root of x square plus y square which ,according to Pythagorean theorem,
  # is the value of the Euclidean distance between point (0,0) and point (x,y).
  
  num.circle.dots = sum(r<=1)
  # the variable "num.circle.dots" is assigned with sum() function that add up all the value 
  # of each element in "r" vector when compared with 1.
  # To make it more clear, if an element's value is equal to or less than 1 it will add 1 which means TRUE; 
  # if an element's value is more than 1 it will add 0 which means FALSE.
  
  # By doing this the num.circle.dots will contain all number of dots that are inside 1 unit circle. 
  
  num.square.dots = n
  # the variable "num.square.dots" is assigned with value n, which is all the dot we want to plot.
  
  ratio = num.circle.dots/num.square.dots
  # the variable "ratio" is assigned with the result of "num.circle.dots" divided by "num.square.dots" 
  
  estimated.pi = 4 * ratio
  # the variable "estimated.pi" is assigned with the result of 4 multiply by "ratio".
  
  difference = abs(3.14159 - estimated.pi)
  # To find the difference between my estimated pi and given value of pi, 
  # I assigned the variable "difference" with the absolute value of the result of that difference.
  
  cat("No. of dots = ", n, " Estimated pi value = ", estimated.pi, "\n")
  # It prints the number of input dot(s) and estimated pi value from variable "estimated.pi" followed by newline.
  
  cat("The Difference = ",difference)
  # It prints the value of variable "difference".
  
  plot(x, y, col = ifelse(r<=1,"red","blue"),asp = 1, pch = 20, cex = 0.1)
  # the function plot will plot the graph according with the parameter it takes.
  # Each element from vector x and y will determine the position of where to plot each dot (x,y).
  # col will set the color of each dot (In this case, if r of the dot is more than 1, the color is blue and else is red).
  # asp is the aspect ratio (In this case, the x-axis and y-axis will be equal, because the ratio is 1 (1:1)).
  # pch will set the character that display in the plots (In this case, it will displayed small color-filled circle).
  # cex will determine the size of the each dot.
}

my.pi(500000)  # When the number of dots is 500000, the estimated pi value is 3.144256 and the difference to the given pi value is 0.002666.

my.pi(1000000) # When the number of dots is 1000000, the estimated pi value is 3.1429 and the difference to the given pi value is 0.00131.

my.pi(2000000) # When the number of dots is 2000000, the estimated pi value is 3.142286 and the difference to the given pi value is 0.000696.

# In conclusion, when the number of dots is higher ,the estimated pi value is getting gradually closer to 3.14159. Also the difference between given pi
# and estimated pi is smaller which means that the number of randomly generated points improves the accuracy of the estimation for pi.

