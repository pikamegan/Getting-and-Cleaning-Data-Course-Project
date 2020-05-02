#download data and save to "Data" folder
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"


if (!file.exists(zipFile)) {
  download.file(fileUrl, zipFile, mode = "wb")
}
data <- "Data"
if (!file.exists(data)) {
  unzip(zipFile)
}

#read data
features <- read.table("./data/features.txt", stringsAsFactors = FALSE)
activities <- read.table("./data/activity_labels.txt")
X_train <- read.table("./data/train/X_train.txt")
y_train <- read.table("./data/train/y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")
X_test <- read.table("./data/test/X_test.txt")
y_test <- read.table("./data/test/y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

#-------------------------------------------------------------------------------------
#Step 1: Merges the training and the test sets to create one data set

#merge training and test sets
mergedData <- rbind(cbind(subject_train, X_train, y_train), 
                    cbind(subject_test, X_test, y_test))

#rename columns in merged dataset
colnames(mergedData) <- c("subject", features[,2], "activity")


#-------------------------------------------------------------------------------------
#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement

#extract the columns with mean and standard deviation for each measurement
#include () in regex in order to not include columns with meanFreq()
extractedData <- grep("mean\\(\\)|std\\(\\)", colnames(mergedData))

#keep only these columns and the subject and activity column
mergedData2 <- mergedData[, c(1, extractedData, 563)]


#-------------------------------------------------------------------------------------
#Step 3: Uses descriptive activity names to name the activities in the data set

#rename activities
mergedData2$activity <- factor(mergedData2$activity,
                              levels = activities[,1], labels = activities[,2])


#-------------------------------------------------------------------------------------
#Step 4: Appropriately labels the data set with descriptive variable names.

columns <- colnames(mergedData2)

#remove non-alphanumeric characters
columns <- gsub("[\\(\\)-]", "", columns)

#replace abbreviations and make everything lower case
columns <- gsub("^f", "frequency_domain", columns)
columns <- gsub("^t", "time_domain", columns)
columns <- gsub("Acc", "_accelerometer", columns)
columns <- gsub("Jerk", "_jerk", columns)
columns <- gsub("Body", "_body", columns)
columns <- gsub("Gravity", "_gravity", columns)
columns <- gsub("Gyro", "_gyroscope", columns)
columns <- gsub("Mag", "_magnitude", columns)
columns <- gsub("std", "_standard_deviation", columns)
columns <- gsub("mean", "_mean", columns)
columns <- gsub("X", "_X-axis", columns)
columns <- gsub("Y", "_Y-axis", columns)
columns <- gsub("Z", "_Z-axis", columns)
columns <- gsub("_body_body", "_body", columns)

colnames(mergedData2) <- columns
colnames(mergedData2)


#-------------------------------------------------------------------------------------
#Step 5: From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#extract only average of each variable and save to new dataset
library(dplyr)
means_only <- mergedData2 %>% group_by(subject, activity) %>% summarise_each(mean)

#write new tidy dataset to new file
write.table(means_only, "tidy_data.txt", row.names = FALSE, quote = FALSE)

