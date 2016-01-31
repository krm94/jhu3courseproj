#CodeBook

##Raw Data

Data collected from the follwing url - "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

##Script used to clean data  <br>

The run_analysis.R file in this repository is used to clean the messy data sets and merge them into a single tidy data set.

##Variables of the tidy data set
 1
 "Subject" :- The participant ID <br >
 2
 "activity_id" :- The activity they are performing. <br >
 3
 "tBodyAcc-mean()-X" <br >
 4
 "tBodyAcc-mean()-Y" <br >
 5
 "tBodyAcc-mean()-Z" <br >
 6
 "tBodyAcc-std()-X" <br >
 7
 "tBodyAcc-std()-Y" <br >
 8
 "tBodyAcc-std()-Z" <br >
 9
 "tGravityAcc-mean()-X" <br >
 10
 "tGravityAcc-mean()-Y" <br >
 11
 "tGravityAcc-mean()-Z" <br >
 12
 "tGravityAcc-std()-X" <br >
 13
 "tGravityAcc-std()-Y" <br >
 14
 "tGravityAcc-std()-Z" <br >
 15
 "tBodyAccJerk-mean()-X" <br >
 16
 "tBodyAccJerk-mean()-Y" <br >
 17
 "tBodyAccJerk-mean()-Z" <br >
 18
 "tBodyAccJerk-std()-X" <br >
 19
 "tBodyAccJerk-std()-Y" <br >
 20
 "tBodyAccJerk-std()-Z" <br >
 21
 "tBodyGyro-mean()-X" <br >
 22
 "tBodyGyro-mean()-Y" <br >
 23
 "tBodyGyro-mean()-Z" <br >
 24
 "tBodyGyro-std()-X" <br > 
 25
 "tBodyGyro-std()-Y" <br >
 26
 "tBodyGyro-std()-Z" <br >
 27
 "tBodyGyroJerk-mean()-X" <br >
 28
 "tBodyGyroJerk-mean()-Y" <br >
 29
 "tBodyGyroJerk-mean()-Z" <br >
 30
 "tBodyGyroJerk-std()-X" <br >
 31
 "tBodyGyroJerk-std()-Y" <br >
 32
 "tBodyGyroJerk-std()-Z" <br >
 33
 "tBodyAccMag-mean()" <br >
 34
 "tBodyAccMag-std()" <br >
 35
 "tGravityAccMag-mean()" <br >
 36
 "tGravityAccMag-std()" <br >
 37
 "tBodyAccJerkMag-mean()" <br >
 38
 "tBodyAccJerkMag-std()" <br >
 39
 "tBodyGyroMag-mean()" <br >
 40
 "tBodyGyroMag-std()" <br >
 41
 "tBodyGyroJerkMag-mean()" <br >
 42
 "tBodyGyroJerkMag-std()" <br >
 43
 "fBodyAcc-mean()-X" <br >
 44
 "fBodyAcc-mean()-Y" <br >
 45
 "fBodyAcc-mean()-Z" <br >
 46
 "fBodyAcc-std()-X" <br >
 47
 "fBodyAcc-std()-Y" <br >
 48
 "fBodyAcc-std()-Z" <br >
 49
 "fBodyAcc-meanFreq()-X" <br >
 50
 "fBodyAcc-meanFreq()-Y" <br >
 51
 "fBodyAcc-meanFreq()-Z" <br >
 52
 "fBodyAccJerk-mean()-X" <br >
 53
 "fBodyAccJerk-mean()-Y" <br >
 54
 "fBodyAccJerk-mean()-Z" <br >
 55
 "fBodyAccJerk-std()-X" <br >
 56
 "fBodyAccJerk-std()-Y" <br >
 57
 "fBodyAccJerk-std()-Z" <br >
 58
 "fBodyAccJerk-meanFreq()-X" <br >
 59
 "fBodyAccJerk-meanFreq()-Y" <br >
 60
 "fBodyAccJerk-meanFreq()-Z" <br >
 61
 "fBodyGyro-mean()-X" <br >
 62
 "fBodyGyro-mean()-Y" <br >
 63
 "fBodyGyro-mean()-Z" <br >
 64
 "fBodyGyro-std()-X" <br >
 65
 "fBodyGyro-std()-Y" <br >
 66
 "fBodyGyro-std()-Z" <br >
 67
 "fBodyGyro-meanFreq()-X" <br >
 68
 "fBodyGyro-meanFreq()-Y" <br >
 69
 "fBodyGyro-meanFreq()-Z" <br >
 70
 "fBodyAccMag-mean()" <br >
 71
 "fBodyAccMag-std()" <br >
 72
 "fBodyAccMag-meanFreq()" <br >
 73
 "fBodyBodyAccJerkMag-mean()" <br >
 74
 "fBodyBodyAccJerkMag-std()" <br >
 75
 "fBodyBodyAccJerkMag-meanFreq()" <br >
 76
 "fBodyBodyGyroMag-mean()" <br >
 77
 "fBodyBodyGyroMag-std()" <br >
 78
 "fBodyBodyGyroMag-meanFreq()" <br >
 79
 "fBodyBodyGyroJerkMag-mean()" <br >
 80
 "fBodyBodyGyroJerkMag-std()" <br >
 81
 "fBodyBodyGyroJerkMag-meanFreq()" <br >
