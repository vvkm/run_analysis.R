library("dplyr")

#Step 0: Download file, unzip file, and read in files.
#Download the file:
        fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        destfile <- "dataset.zip"
        download.file(fileURL,destfile)
        
        
# unzip the file:
        unzip(destfile)
        
#read in files:
        x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
        x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        activities_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
        features <- read.table("./UCI HAR Dataset/features.txt")

#Step 1: Merges the training and the test sets to create one data set.
        x_all <- rbind(x_train,x_test)
        y_all <- rbind(y_train,y_test)
        subject_all <-rbind(subject_train,subject_test)
        colnames(x_all) <- features[,2]
        all <- cbind(x_all,y_all,subject_all)
        #all <- rename(all, "activities" = names(all[562]), "subject" = names(all[563]))
        colnames(all) [562] <- c("activities")
        colnames(all) [563] <- c("subject")
        
        
#Step 2: Extract only the measurements on the mean and standard deviation for each measurement. 
        index_of_means_stds <- grep("mean\\(\\)|std\\(\\)", names(all))
        means_stds <- all[, index_of_means_stds]
        
#Step 3: Uses descriptive activity names to name the activities in the data set.
        names(all)[562] <- "activities"
        
         
#Step 4: Appropriately labels the data set with descriptive variable names. 
        names(all)[563] <- "subject"
        
#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        indytidydataset <- grep("mean\\(\\)|activities|subject", names(all))
                indytidydatasetmean <- all[, indytidydataset]       
        write.table(indytidydatasetmean,"./tidydataset.txt")
