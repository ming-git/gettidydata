# Codebook for Getting and Cleaning Data Course Project

## Introduction

This codebook describes the variables, data, and transformations performed to clean up the data from the Human Activity Recognition Using Smartphones Dataset.

## Variables
- `subject`: Unique identifier of the participant (integer, range: 1-30).This variable is bind from the `subject_test.txt` and `subject_test.txt`
- `activity`: Activity performed by the participant (categorical, values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). This variable is bind from the `y_test.txt` and `y_train.txt`. and the `activity_lables.txt` provide a descriptive name for the activity and
- `561 features`: 561 features data are recorded in `x_test.txt` and `y_train.txt`. 
The features name are recorded in `features.txt`, 

## Data
The data was collected from the accelerometers of Samsung Galaxy S smartphones. A full description of the original data is available at:

[Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Transformations
The following steps were performed to clean and process the data:

###  1 Clean the feature name and activity name ----
1.1 Prepare the feature variable names - feature: 561 obs of 2 variables
1.2 Prepare the Activity labels - activity - 6 obs of 2 variables

###  2.TRAIN DATA Clean ---- (train: 7352obs. of 563 var.)
2.1 Read the x_train data and set the feature names
2.2 Read the y_train
2.3 read the subject train
2.4 cbind y_train, subject_train, x_train to train data 

###  3.TEST DATA Clean ---- (test: 2947 obs. of 563 var.)
3.1 Read the x_test data and set the feature names. 
3.2 read the y_test
3.3 read the subject test
3.4 cbind y_test, subject_test, x_test 

###  4.MERGE TEST AND TRAIN DATA ---- (cleandata: 10299 obs of 88 var.)
4.1 merge the train data and test data to datall (datall: 10299 obs of 563 var.)
4.2 select the column with mean and std contained. 

###  5. anothe tidy data, independant (180 obs of 88 var.)
creates a second, independent tidy data set named independant 
with the average of each variable for each activity and each subject.

## log
2023-04-03 begain course project<br>
2023-04-08 run_analysis.R completed<br>
2023-04-09 CodeBook.md, README.md completed
