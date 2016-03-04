CodeBook.md
The Data had to be read in, combined training and test data and then combined with the activity and subject data.  After that the data was extracted with the following variables associated with means and standard deviations (searching for those values in the master combined column names).  Then a second dataset was created to calculate the average for each activity and each subject.
#Variables: include the following columns (column index numbers indicated after quote close:

"tBodyAcc-mean()-X" 1
"tBodyAcc-mean()-Y" 2
"tBodyAcc-mean()-Z" 3
"tGravityAcc-mean()-X"  41 
"tGravityAcc-mean()-Y"  42
"tGravityAcc-mean()-Z"  43
"tBodyAccJerk-mean()-X" 81
"tBodyAccJerk-mean()-Y" 82
"tBodyAccJerk-mean()-Z" 83 
"tBodyGyro-mean()-X"    121  
"tBodyGyro-mean()-Y"    122 
"tBodyGyro-mean()-Z"    123 
"tBodyGyroJerk-mean()-X" 161 
"tBodyGyroJerk-mean()-Y" 162 
"tBodyGyroJerk-mean()-Z" 163 
"tBodyAccMag-mean()"     201 
"tGravityAccMag-mean()"  214 
"tBodyAccJerkMag-mean()" 227 
"tBodyGyroMag-mean()"    240 
"tBodyGyroJerkMag-mean()" 253      
"fBodyAcc-mean()-X"      266 
"fBodyAcc-mean()-Y"      267 
"fBodyAcc-mean()-Z"      268 
"fBodyAccJerk-mean()-X"  345 
"fBodyAccJerk-mean()-Y"  346 
"fBodyAccJerk-mean()-Z"  347 
"fBodyGyro-mean()-X"     424 
"fBodyGyro-mean()-Y"     425 
"fBodyGyro-mean()-Z"     426 
"fBodyAccMag-mean()"     503 
"fBodyBodyAccJerkMag-mean()" 516 
"fBodyBodyGyroMag-mean()"    529 
"fBodyBodyGyroJerkMag-mean()" 542

#Activity Labels:
1   WALKING
2   WALKING_UPSTAIRS
3   WALKING_DOWNSTAIRS
4   SITTING
5   STANDING
6   LAYING
