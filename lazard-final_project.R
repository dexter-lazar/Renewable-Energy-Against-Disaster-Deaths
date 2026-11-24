# lazard2-final_project.R
#STA 145 Final Project, Activity 3.1: Upload your Data into R

# Step 3: load the tidyverse
library(readr)

# Step 4: set the working directory and load the data

data<-read_delim("data.csv")

#Step 5: run the three checks
dim(data)
names(data)
summary(data)

# calculate standard deviation

sd(data$deaths,na.rm=TRUE)

sd(data$renewable_energy,na.rm=TRUE)

# linear regression
linear_model <- lm(deaths~renewable_energy, data=data)
summary(linear_model)

plot(data$deaths, data$renewable_energy, data=data) "Linear Regression Model"

boxplot(data$deaths, data$renewable_energy, data=data)
