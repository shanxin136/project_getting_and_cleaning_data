files:
=========================================

- 'average.txt': data set includes the average of each variable for each activity and each subject.
# To read the data in Rstudio:
average <- read.table("average.txt", header = T)
# dimension of the data: 180 rows and 68 columns
# names of columns:
 names(average)
 [1] "subject"                   "activity"                  "tBodyAcc.mean.X"           "tBodyAcc.mean.Y"          
 [5] "tBodyAcc.mean.Z"           "tBodyAcc.std.X"            "tBodyAcc.std.Y"            "tBodyAcc.std.Z"           
 [9] "tGravityAcc.mean.X"        "tGravityAcc.mean.Y"        "tGravityAcc.mean.Z"        "tGravityAcc.std.X"        
[13] "tGravityAcc.std.Y"         "tGravityAcc.std.Z"         "tBodyAccJerk.mean.X"       "tBodyAccJerk.mean.Y"      
[17] "tBodyAccJerk.mean.Z"       "tBodyAccJerk.std.X"        "tBodyAccJerk.std.Y"        "tBodyAccJerk.std.Z"       
[21] "tBodyGyro.mean.X"          "tBodyGyro.mean.Y"          "tBodyGyro.mean.Z"          "tBodyGyro.std.X"          
[25] "tBodyGyro.std.Y"           "tBodyGyro.std.Z"           "tBodyGyroJerk.mean.X"      "tBodyGyroJerk.mean.Y"     
[29] "tBodyGyroJerk.mean.Z"      "tBodyGyroJerk.std.X"       "tBodyGyroJerk.std.Y"       "tBodyGyroJerk.std.Z"      
[33] "tBodyAccMag.mean"          "tBodyAccMag.std"           "tGravityAccMag.mean"       "tGravityAccMag.std"       
[37] "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"       "tBodyGyroMag.mean"         "tBodyGyroMag.std"         
[41] "tBodyGyroJerkMag.mean"     "tBodyGyroJerkMag.std"      "fBodyAcc.mean.X"           "fBodyAcc.mean.Y"          
[45] "fBodyAcc.mean.Z"           "fBodyAcc.std.X"            "fBodyAcc.std.Y"            "fBodyAcc.std.Z"           
[49] "fBodyAccJerk.mean.X"       "fBodyAccJerk.mean.Y"       "fBodyAccJerk.mean.Z"       "fBodyAccJerk.std.X"       
[53] "fBodyAccJerk.std.Y"        "fBodyAccJerk.std.Z"        "fBodyGyro.mean.X"          "fBodyGyro.mean.Y"         
[57] "fBodyGyro.mean.Z"          "fBodyGyro.std.X"           "fBodyGyro.std.Y"           "fBodyGyro.std.Z"          
[61] "fBodyAccMag.mean"          "fBodyAccMag.std"           "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"  
[65] "fBodyBodyGyroMag.mean"     "fBodyBodyGyroMag.std"      "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std"
# first column "subject": the subject who performed the activity for each window sample. Its range is from 1 to 30.
# second column "activity": six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
# the remaining columns are the average of feactures mearsurements:
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

- 'run_analysis.R': code describes how to complete this project under the following steps:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
