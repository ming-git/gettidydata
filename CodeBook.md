# Codebook for Getting and Cleaning Data Course Project

## Introduction

This codebook describes the variables, data, and transformations performed to clean up the data from the Human Activity Recognition Using Smartphones Dataset.

## Variables
- `subject`: Unique identifier of the participant (integer, range: 1-30).This variable is bind from the `subject_test.txt` and `subject_test.txt`
- `activity`: Activity performed by the participant (categorical, values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). This variable is bind from the `y_test.txt` and `y_train.txt`. and the `activity_lables.txt` provide a descriptive name for the activity and
- `561 features`: 561 features data are recorded in `x_test.txt` and `y_train.txt`. 
The features name are recorded in `features.txt`, 

- `86 features with mean and std`: filter out the 86 features with mean and std

## Data
The data was collected from the accelerometers of Samsung Galaxy S smartphones. A full description of the original data is available at:

[Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## log
2023-04-03 begain course project<br>
2023-04-08 run_analysis.R completed<br>
2023-04-09 CodeBook.md, README.md completed
