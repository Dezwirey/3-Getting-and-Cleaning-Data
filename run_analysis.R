run_analysis <- function(){
        library(dplyr)
        
        # load test and training data
        subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
        subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
        X_test = read.table("UCI HAR Dataset/test/X_test.txt")
        Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")
        X_train = read.table("UCI HAR Dataset/train/X_train.txt")
        Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
        
        # loading activities and features
        activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
        features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
        # removing _ from activitylabels, locate indexes of "-mean()" or "-std()"
        activities$activityLabel <- gsub("_", "", tolower(as.character(activities$activityLabel)))
        includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)       
        
        # merge test and training data, and select mean and std variables
        subject <- rbind(subject_test, subject_train)
        X <- rbind(X_test, X_train)
        X <- X[, includedFeatures]
        Y <- rbind(Y_test, Y_train)
        
        # Rename variables and create activity variable
        names(subject) <- "id"
        names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
        names(Y) = "activityId"
        activity <- join(Y, activities)
        activity <- activity[,2]
        
        # merge data frames of different columns to form one data table, and write it
        data <- cbind(subject, activity, X)
        write.table(data, "tidyDataSet.txt", row.names = FALSE)
        
        # create a dataset grouped by subject and activity after applying standard deviation and average calculations
        new_dataset <- group_by(data, id, activity) 
        new_dataset <-summarise_each(new_dataset,funs(mean))
        write.table(new_dataset, "calculatedMeans.txt", row.names = FALSE)
}
