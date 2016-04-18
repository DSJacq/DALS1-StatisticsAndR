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

#1
femaleMW <- read.csv("femaleMiceWeights.csv")
summary(femaleMW)
head(femaleMW)
names(femaleMW)

#2. extract specific rows and specific columns
femaleMW[12,2]

#3.  $ character to extract a column from a table and return it as a vector
weights <-femaleMW$Bodyweight
weights[11]

#4. "length" function returns the number of elements in a vector
length(femaleMW$Diet)

#5. To create a vector with the numbers 3 to 7, we can use seq(3,7) or, because they are consecutive, 3:7
#   View the data and determine what rows are associated with the high fat or hf diet.
#   Then use the mean function to compute the average weight of thes
View(femaleMW)
mean(weights[13:24])

#6. 
?sample
set.seed(1)
i <- sample(13:24, 1)
femaleMW$Bodyweight[i]

