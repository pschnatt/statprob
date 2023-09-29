#HW9 Parameter Estimation
#65011521 Schnat Rattanasombatpaibul

set.seed(523) #Set random seed to create reproducible result

wb <- rweibull(n = 400, shape = 9, scale = 5)
#generates 400 random numbers that follow a Weibull distribution with 
#a shape parameter of 9 and a scale parameter of 5, and stores them in 
#the variable wb. 

write.csv(data.frame(wb),file="C:\\Users\\Schnat\\Desktop\\Rfiles\\wdata.csv")
# take the data in the wb variable, convert it into a data frame, and then 
#save that data frame as a CSV file named "wdata.csv" in the specified location.