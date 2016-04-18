# Introduction to dplyr

help(dplyr)

install.packages("dplyr")
library(dplyr)

dat <- read.csv("femaleMiceWeights.csv")
View(dat)

controls <- filter(dat, Diet == "chow")
View(controls)
select(controls, Bodyweight)

controls <- select(controls, Bodyweight)
unlist(controls)

controls <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
controls
mean(controls)
