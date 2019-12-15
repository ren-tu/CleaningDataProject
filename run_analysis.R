## This script merges and cleans up the Samsung accelerometer dataset 
## and creates a new tidy dataset that summarizes mean key measurements by activity and test subject 

## Read separated data into individual dataframes
df_xtrain <- read.table("X_train.txt")
df_xtest <- read.table("X_test.txt")
df_ytrain <- read.table("y_train.txt")
df_ytest <- read.table("y_test.txt")
df_subjecttest <- read.table("subject_test.txt")
df_subjecttrain <- read.table("subject_train.txt")
df_features <- read.table("features.txt")

## Map activity numbers 1-6 to descriptive activity names
to <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
from <- c(1, 2, 3, 4, 5, 6)
map <- setNames(to, from)
df_ytrain$activityNames <- map[df_ytrain$V1]
df_ytest$activityNames <- map[df_ytest$V1]

## Training set: label variables with descriptive names, add activity and subject columns
df_train <- df_xtrain
names(df_train) <- df_features$V2
df_train$activityNames <- df_ytrain$activityNames
df_train$subjectNumber <- df_subjecttrain$V1

## Test set: label variables with descriptive names, add activity and subject columns
df_test <- df_xtest
names(df_test) <- df_features$V2
df_test$activityNames <- df_ytest$activityNames
df_test$subjectNumber <- df_subjecttest$V1

## Merge training and test sets to create one full dataset
df_full <- rbind(df_train, df_test)

## Extract only the variables related to mean and standard deviation
meanstd_regex <- grepl('.mean\\(\\)|.std\\(\\)', df_features$V2)
df_meanstd <- df_full[ ,meanstd_regex]

## Create separate tidy dataset with mean of each variable summarized by activity and subject
library(dplyr)
df_groupby_mean <- df_meanstd %>% group_by(activityNames, subjectNumber) %>% summarise_all(mean)
write.table(df_groupby_mean, file="results_mean.txt", row.names=FALSE)