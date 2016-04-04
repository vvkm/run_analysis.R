# run_analysis.R

This repository contains the following files- 1) Raw Data 2) Script run_analysis.r 3) Tidy Data 4) Code Book

1) Raw Data

The data can be obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description of the data can be obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


2) Script run_analysis.R - this script does the following:

Step 0: Download file, unzip file, and read in files.

Step 1: Merges the training and the test sets to create one data set.

Step 2: Extract only the measurements on the mean and standard deviation for each measurement for the data set in Step 1. 

Step 3: Uses descriptive activity names to name the activities in the data set.

Step 4: Appropriately labels the data set with descriptive variable names (Subject and Activity). 

Step 5: Then from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


3) After executing, the dataset maybe found at ./tidydataset.txt


4) Code Book: 
The code book contains the information about the variables and the data.

