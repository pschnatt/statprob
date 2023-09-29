#HW6 Mean and Variance of Conditional Joint Probability Function
#65011521 Schnat Rattanasombatpaibul

Joint <- matrix(c(0.01,0.02,0.25,0.02,0.03,0.20,0.02,0.10,0.05,0.15,0.10,0.05),nrow = 3,ncol = 4)

conditional_mean_variance <- function(joint, x)
{
  
  mean <- 0 #initializing mean to 0
  variance <- 0 #and also initializing variance to 0
  fx <- 0 #marginal probability of x 
  for (i in 1:ncol(joint)){ #Looping from 1 to number of y
  #This loop is use to sum up all the joint probability of when X = x
    fx <- fx + joint[x,i]
  }
  for (i in 1:ncol(joint)){ # This loop also looping from 1 to y ,but it has 2 purposes
    #The first purpose is to sum up all y*fxy/fx ,so we, according to given formula, can get the mean (fxy/fx = fy|x)
    mean <- mean + (i*(joint[x,i]/fx))
    #The second purpose is to get the first part of variance (sum of y^2*(fxy/fx))
    variance <- variance + (i*i*(joint[x,i]/fx))
  }
  #finally, we take that value of sum of y^2*(fxy/fx) and subtract it by mean^2 to get the variance
  variance <- variance - (mean * mean)
  #Then, I return it as vector of both value
  return(c(mean,variance))
}

x <- conditional_mean_variance(Joint, 1)
y <- conditional_mean_variance(Joint, 2)
z <- conditional_mean_variance(Joint, 3)
cat("      Mean Vriance\n")
cat("Y|X=1",x ,"\n")
cat("Y|X=2",y ,"\n")
cat("Y|X=3",z ,"\n")