## HEADER ####
## Who: <William Banda>
## What: ECONOMETRIC ANALYSIS REPORT ON LANGUAGE PROFICIENCY PROGRAM
## Last edited: 2025-01-17


## CONTENTS ####
## 00 Loading necessarly Libraries
## 01 Importing data
## 02 Summary Statistics
## 03 Regression Analysis

# Get working directory
getwd() # Prints working directory in Console

## Set working directory
setwd("C:/Users/WilliamBanda1/Downloads/data_D8748046451")

## 00 Loading necessarly Libraries
#Let's get the necessarly libraries
library(readr)

# Load tidyverse
library(tidyverse)

## Load the dplyr package
library(dplyr)

# Load the openxlsx package
library(openxlsx)

# install vizreg package
install.packages("visreg")

# Load Vizreg
library(visreg)

# Load lmtest
library(lmtest)

# Load sandwich
library(sandwich)

# 01 Import data

# Load data from GitHub
data_state_1 <- read_csv("https://raw.githubusercontent.com/WilliamBanda/Econometric-Analysis/main/data_state_1.csv")
data_state_2 <- read_csv("https://raw.githubusercontent.com/WilliamBanda/Econometric-Analysis/main/data_state_2.csv")

# Print the first few rows of each dataset to verify successful loading
print(head(data_state_1))
print(head(data_state_2))


## 02 Summary Statistics

# Calculate the proportion of females
female_proportion <- data_state_1 %>%
  summarise(female_count = sum(FEMALE)) %>%
  mutate(proportion = female_count / nrow(data_state_1))

# Print the result
print(female_proportion)


# Calculate the average age of male students in treated schools
average_age_males_treated <- Data %>%
  filter(TREATED == 1, FEMALE == 0) %>%
  summarise(average_age = mean(AGE, na.rm = TRUE))

# Print the result
print(average_age_males_treated)

# Calculate the number of students aged 12 in each school
students_aged_12 <- data_state_1 %>%
  filter(AGE == 12) %>%
  group_by(ID_SCHOOL) %>%
  summarise(count_students_12 = n())

# Find the school with the largest number of students aged 12
school_with_most_students_12 <- students_aged_12 %>%
  arrange(desc(count_students_12)) %>%
  slice(1)

# Print the result
print(school_with_most_students_12)

## 03 Regression Analysis

# Run the regression model on state 1 data
model <- lm(AGE ~ TREATED, data = data_state_1)

# Cluster standard errors at the school level
vcov_cluster <- vcovHC(model, type = "HC3", cluster = data_state_1$ID_SCHOOL)

# Get the summary of the regression model with clustered standard errors
summary_clustered <- coeftest(model, vcov. = vcov_cluster)

# Print the summary
print(summary_clustered)

# Run the regression model on state 2 data
model <- lm(LANGUAGE_SCORE_STD ~ TREATED, data = data_state_2)

# Cluster standard errors at the school level
vcov_cluster <- vcovHC(model, type = "HC3", cluster = data_state_2$ID_SCHOOL)

# Get the summary of the regression model with clustered standard errors
summary_clustered <- coeftest(model, vcov. = vcov_cluster)

# Print the summary
print(summary_clustered)

model <- lm(LANGUAGE_SCORE_STD ~ TREATED, data = data_state_2)

# Cluster standard errors at the school level
vcov_cluster <- vcovHC(model, type = "HC3", cluster = data_state_2$ID_SCHOOL)

# Get the summary of the regression model with clustered standard errors
summary_clustered <- coeftest(model, vcov. = vcov_cluster)

# Print the summary
print(summary_clustered)

