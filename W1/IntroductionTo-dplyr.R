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

#-----------------------------------------------------------------------------

install.packages("downloader")
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)

# 1.

msleep <- read.csv("msleep_ggplot2.csv")
View(msleep)
class(msleep)

# 2.

library(dplyr)
head(msleep)
Primates <- filter(msleep, order =="Primates")
nrow(Primates)

# 3.

class(Primates)

# 4.

Primates <- select(Primates, sleep_total)
View(Primates)
unlist(Primates)

Primates <- filter(msleep, order=="Primates") %>% select(sleep_total) %>% unlist
mean(Primates)

# 6.

filter(msleep, order =="Primates") %>% summarise(mean(sleep_total))
