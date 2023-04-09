# Codebook for Getting and Cleaning Data Course Project

## Introduction

This codebook describes the variables, data, and transformations performed to clean up the data from the Human Activity Recognition Using Smartphones Dataset.

## Variables
- `subject`: Unique identifier of the participant (integer, range: 1-30).This variable is bind from the `subject_test.txt` and `subject_test.txt`
- `activity`: Activity performed by the participant (categorical, values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). This variable is bind from the `y_test.txt` and `y_train.txt`. and the `activity_lables.txt` provide a descriptive name for the activity and
- `86 mean of features with names contain mean and std`: All [## 86 feature mean](## 86 feature mean) listed on the last of CodeBook.md to help you read this file smoothly.*if you think there should be 66 features, see the NOTE in Transformation Part*.

## Data
The data was collected from the accelerometers of Samsung Galaxy S smartphones. A full description of the original data is available at:

[Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Transformation
1. import and clean the activity data and 561 features name.
2. import and bind train data listed in X_train.txt, Y_train.txt, Subject_train.txt
3. import and bind test data listed in X_test.txt, Y_test.txt, Subject_test.txt
4. bind the train and test data into datall.
5. filter the feature contain mean or std text to cleandata, import the descriptive activity name.
6. summarize the cleandata with mean into independent tidy data.

*NOTE*: 
1. An independent tidy data has 180 obs of 88 variable (subject, activity + 86 features contain mean and std in feature names) (I prefer to this way.)

2 For features, there will 66 features variable if you filter the feature names with matching of mean() or std()

## log
2023-04-03 begain course project<br>
2023-04-08 run_analysis.R completed<br>
2023-04-09 CodeBook.md, README.md completed

## 86 feature mean (cont. of ##Variables)
- mean_tBodyAcc-mean()-X:  
- mean_tBodyAcc-mean()-Y:  
- mean_tBodyAcc-mean()-Z:  
- mean_tBodyAcc-std()-X:  
- mean_tBodyAcc-std()-Y:  
- mean_tBodyAcc-std()-Z:  
- mean_tGravityAcc-mean()-X:  
- mean_tGravityAcc-mean()-Y:  
- mean_tGravityAcc-mean()-Z:  
- mean_tGravityAcc-std()-X:  
- mean_tGravityAcc-std()-Y:  
- mean_tGravityAcc-std()-Z:  
- mean_tBodyAccJerk-mean()-X:  
- mean_tBodyAccJerk-mean()-Y:  
- mean_tBodyAccJerk-mean()-Z:  
- mean_tBodyAccJerk-std()-X:  
- mean_tBodyAccJerk-std()-Y:  
- mean_tBodyAccJerk-std()-Z:  
- mean_tBodyGyro-mean()-X:  
- mean_tBodyGyro-mean()-Y:  
- mean_tBodyGyro-mean()-Z:  
- mean_tBodyGyro-std()-X:  
- mean_tBodyGyro-std()-Y:  
- mean_tBodyGyro-std()-Z:  
- mean_tBodyGyroJerk-mean()-X:  
- mean_tBodyGyroJerk-mean()-Y:  
- mean_tBodyGyroJerk-mean()-Z:  
- mean_tBodyGyroJerk-std()-X:  
- mean_tBodyGyroJerk-std()-Y:  
- mean_tBodyGyroJerk-std()-Z:  
- mean_tBodyAccMag-mean():  
- mean_tBodyAccMag-std():  
- mean_tGravityAccMag-mean():  
- mean_tGravityAccMag-std():  
- mean_tBodyAccJerkMag-mean():  
- mean_tBodyAccJerkMag-std():  
- mean_tBodyGyroMag-mean():  
- mean_tBodyGyroMag-std():  
- mean_tBodyGyroJerkMag-mean():  
- mean_tBodyGyroJerkMag-std():  
- mean_fBodyAcc-mean()-X:  
- mean_fBodyAcc-mean()-Y:  
- mean_fBodyAcc-mean()-Z:  
- mean_fBodyAcc-std()-X:  
- mean_fBodyAcc-std()-Y:  
- mean_fBodyAcc-std()-Z:  
- mean_fBodyAcc-meanFreq()-X:  
- mean_fBodyAcc-meanFreq()-Y:  
- mean_fBodyAcc-meanFreq()-Z:  
- mean_fBodyAccJerk-mean()-X:  
- mean_fBodyAccJerk-mean()-Y:  
- mean_fBodyAccJerk-mean()-Z:  
- mean_fBodyAccJerk-std()-X:  
- mean_fBodyAccJerk-std()-Y:  
- mean_fBodyAccJerk-std()-Z:  
- mean_fBodyAccJerk-meanFreq()-X:  
- mean_fBodyAccJerk-meanFreq()-Y:  
- mean_fBodyAccJerk-meanFreq()-Z:  
- mean_fBodyGyro-mean()-X:  
- mean_fBodyGyro-mean()-Y:  
- mean_fBodyGyro-mean()-Z:  
- mean_fBodyGyro-std()-X:  
- mean_fBodyGyro-std()-Y:  
- mean_fBodyGyro-std()-Z:  
- mean_fBodyGyro-meanFreq()-X:  
- mean_fBodyGyro-meanFreq()-Y:  
- mean_fBodyGyro-meanFreq()-Z:  
- mean_fBodyAccMag-mean():  
- mean_fBodyAccMag-std():  
- mean_fBodyAccMag-meanFreq():  
- mean_fBodyBodyAccJerkMag-mean():  
- mean_fBodyBodyAccJerkMag-std():  
- mean_fBodyBodyAccJerkMag-meanFreq():  
- mean_fBodyBodyGyroMag-mean():  
- mean_fBodyBodyGyroMag-std():  
- mean_fBodyBodyGyroMag-meanFreq():  
- mean_fBodyBodyGyroJerkMag-mean():  
- mean_fBodyBodyGyroJerkMag-std():  
- mean_fBodyBodyGyroJerkMag-meanFreq():  
- mean_angle(tBodyAccMean,gravity):  
- mean_angle(tBodyAccJerkMean),gravityMean):  
- mean_angle(tBodyGyroMean,gravityMean):  
- mean_angle(tBodyGyroJerkMean,gravityMean):  
- mean_angle(X,gravityMean):  
- mean_angle(Y,gravityMean):  
- mean_angle(Z,gravityMean):  

