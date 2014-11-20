# STEP 1: Merges the training and the test sets to create one data set
# read measurements of features of train data and test data
X_train <- read.table("./train/X_train.txt")
X_test <- read.table("./test/X_test.txt")
# combine train and test data
dat <- rbind(X_train, X_test)

# STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
# read features
features <- read.table("features.txt", stringsAsFactors=F)
# extract features related with mean and standard devistation
index_mean <- grep("mean()", features[,2], fixed = T)
index_std <- grep("std()", features[,2], fixed = T)
index_feature <- sort(c(index_mean, index_std))
# seleclting features related with mean and std
dat <- dat[,index_feature]

# STEP 4: Appropriately labels the data set with descriptive variable names. 
# imporve the descriptive names of features measurements
features_sub <- features[index_feature, 2]
features_sub <- gsub("\\(\\)", "", features_sub)
features_sub <- make.names(features_sub)
names(dat) <- features_sub

# STEP 3: Uses descriptive activity names to name the activities in the data set
# read activity of train data and test data
activity_train <- read.table("./train/y_train.txt")
activity_test  <- read.table("./test/y_test.txt")
# read activity names
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = F)
# Uses descriptive activity names to name the activities in the data set
activity_train[,1] <-  factor(activity_train[,1], labels = activity_labels[,2])
 activity_test[,1] <-  factor( activity_test[,1], labels = activity_labels[,2])
# combine activities from train and test data
activity <- rbind(activity_train, activity_test)
names(activity) <- "activity"
# read subject from train and test data
subject_train <- read.table("./train/subject_train.txt")
subject_test  <- read.table("./test/subject_test.txt")
# combine subject
subject <- rbind(subject_train, subject_test)
names(subject) <- "subject"
# combine subject, activity, and features measurements together
dat1 <- cbind(subject, activity, dat)

# STEP 5: Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.
library(data.table)
DAT <- data.table(dat1)
ave <- DAT[, lapply(.SD, mean), by = c("subject", "activity")]
# output the average data
write.table(ave, file = "average.txt", row.names = F)