# Getting and Cleaning Data Course Project

## Github url
[Github https url](https://github.com/ming-git/gettidydata.git)

## Introduction

This repository contains the project files for the Getting and Cleaning Data Course on Coursera. The goal of the project is to demonstrate the ability to collect, work with, and clean a dataset.

## Data Source

The data used for this project is the Human Activity Recognition Using Smartphones Dataset, which can be found at:

[Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Dependencies

List of any dependencies or packages required to run the script.
- dplyr
- tidyr

## Script: run_analysis.R

The `run_analysis.R` script performs the following steps:

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
4.2 select the column with **mean** and **std** contained. 

###  5. anothe tidy data, independant (180 obs of 88 var.)
creates a second independent tidydata set named independent (180 obs of 88 var.)
with the average of each variable for each activity and each subject.

## How to use the script

1. Download and unzip the dataset.
2. Set the working directory to the folder containing the dataset.
3. Ensure the `dplyr` package is installed in R or RStudio.
4. Run the `run_analysis.R` script.

## Output

The script outputs a tidy dataset (indepenant), which can be used for further analysis.

## Additional Files

- `Codebook.md`: Describes the variables, data, and transformations performed to clean up the data.
