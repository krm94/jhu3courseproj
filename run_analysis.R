#R script to clean a particular dataset by the doing the following :-
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Checking whether R has required packages : - 

if(require(data.table) == FALSE) {
  install.packages(data.table)
}

if(require(dplyr) == FALSE) {
  install.packages(dplyr)
}

if(require(reshape2) == FALSE) {
  install.packages(reshape2)
}

library(dplyr)
library(reshape2)
library(data.table)

#Reading in the train data sets :-
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Reading in the names of the columns(features) to name the columns
features <- read.table("./UCI HAR Dataset/features.txt")
#Assigning names of the columns to X_train dataset.
names(X_train) <- features[,2]

#Combining the above 3 datasets to form a single train dataset.
train <- cbind(s_train, y_train, X_train)

#Reading in the test data sets:-

s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#Assigning names to the test data sets
names(x_test) <- features[,2]

#Combining s_test,y_test and x_test to give a single test dataset.
test <- cbind(s_test, y_test, x_test)

#Merging the already combined test and trained datasets to give a single dataset.
dt <- rbind(test, train)

#Labelling the first and second columns of the dt dataset.
colnames(dt)[2] <- "activity_id"
colnames(dt)[1] <- "Subject"

#Extracting the different activities with their respective codes.
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Converting the different activity codes to their respective activity names.
for(i in 1:nrow(act_labels)) {
  subject <- as.numeric(act_labels[i,1])
  name <- as.character(act_labels[i,2])
  dt[dt$activity_id == subject, 2] <- name
}

#Extracting only the mean and std variables into another data set called sub_dt
sub_dt<-dt[,grep("mean|std|Subject|activity_id", colnames(dt))]



#Creating the melt dataset using subject and activity as id's.
id = c("Subject", "activity_id")
other_var = setdiff(colnames(sub_dt), id)
melt_data = melt(sub_dt, id = id, measure.vars = other_var)

#Recasting the melt dataset to create the summarized tidy dataset.
tidy_data   = dcast(melt_data, Subject + activity_id ~ variable, mean)

write.table(tidy_data, "./tidy_data.txt", row.names = FALSE)
