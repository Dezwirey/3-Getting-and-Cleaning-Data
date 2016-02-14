# Study Design

This is a project in the course Cleaning Data on Coursera, which provided the data.

1. Downloaded data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzipped the data in a working directory
3. Read test and training data sets
4. Read the activity and feature names, 
5. Read activity labels
6. Removed underscores from activitylabels
7. Located indexes of "-mean()" or "-std()" in feature names
8. Merged test and training data
9. Selected only on variables with mean or standard deviation
10. Renamed some variables for readability
11. Merged subject ids, activiteis and data into one dataframe ('tidyDataSet.txt')
12. Wrote 'calculatedMeans.txt' that calculates means/std per participant and activity

# Code Book

68 variables

id: each representing a participant
activity: the activity that the subject was participating in
other variables: features, i.e. mean or standard deviation of time signals

 [1] "id"                        "activity"                  "tBodyAcc-mean-X"           "tBodyAcc-mean-Y"
 [5] "tBodyAcc-mean-Z"           "tBodyAcc-std-X"            "tBodyAcc-std-Y"            "tBodyAcc-std-Z" 
 [9] "tGravityAcc-mean-X"        "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z"        "tGravityAcc-std-X" 
[13] "tGravityAcc-std-Y"         "tGravityAcc-std-Z"         "tBodyAccJerk-mean-X"       "tBodyAccJerk-mean-Y"
[17] "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"        "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z" 
[21] "tBodyGyro-mean-X"          "tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"          "tBodyGyro-std-X" 
[25] "tBodyGyro-std-Y"           "tBodyGyro-std-Z"           "tBodyGyroJerk-mean-X"      "tBodyGyroJerk-mean-Y" 
[29] "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"       "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z" 
[33] "tBodyAccMag-mean"          "tBodyAccMag-std"           "tGravityAccMag-mean"       "tGravityAccMag-std"
[37] "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"       "tBodyGyroMag-mean"         "tBodyGyroMag-std" 
[41] "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"      "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"
[45] "fBodyAcc-mean-Z"           "fBodyAcc-std-X"            "fBodyAcc-std-Y"            "fBodyAcc-std-Z" 
[49] "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"       "fBodyAccJerk-std-X" 
[53] "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"        "fBodyGyro-mean-X"          "fBodyGyro-mean-Y" 
[57] "fBodyGyro-mean-Z"          "fBodyGyro-std-X"           "fBodyGyro-std-Y"           "fBodyGyro-std-Z"
[61] "fBodyAccMag-mean"          "fBodyAccMag-std"           "fBodyBodyAccJerkMag-mean"  "fBodyBodyAccJerkMag-std" 
[65] "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"      "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std" 