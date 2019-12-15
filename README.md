# CleaningDataProject
Coursera Getting and Cleaning Data Course Project

This project utilizes the Samsung accelerometer dataset from the below link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R is the primary script that
1) merges and cleans up the Samsung accelerometer dataset
2) creates a new tidy dataset that summarizes mean key measurements by activity and test subject in the "results_mean.txt" file

The initial merging of the dataset involves combining training data, test data, variable names, activity names and subject numbers into one full tidy dataset. Then the dataset is filtered for variables related to mean and standard deviation of measurements

The second tidy dataset groups the initially filtered dataset by activity and test subject and calculates the mean of each grouping for each variable

CodeBook.md elaborates on the dataset, variables used, and data cleaning and transformation steps

results_mean.txt is the final output for the project
