install.packages("swirl")
library(swirl)

# 1. What version of R are you using
version[]

# 2. Create a numeric vector containing the numbers 
# 2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23. 
# What is the average of these numbers?
string <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
mean(string)

# 3. Use a for loop to determine the value
sum <- 0
for(i in 1:25)
  sum <- sum + i^2
sum

#________________________________________________________________________________________________________________________________________

