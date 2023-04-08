library(dplyr)
library(tidyr)
# create project data list - pdl
pdl <- list(
    url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
    destfile = "dataset.zip",
    datadir = "data"
)

# create the data directory
if (!dir.exists(pdl$datadir)) {
    dir.create(pdl$datadir)
}

# download zip file
download.file(pdl$url,pdl$destfile)

# unzip the dataset to the data dir
unzip(pdl$destfile,exdir=pdl$datadir)

# get the full file list in data dir, then you can ref the file with index
files <- list.files(pdl$datadir,recursive = TRUE,full.names = TRUE)
files
# [1] "data/UCI HAR Dataset/activity_labels.txt"
# [3] "data/UCI HAR Dataset/features.txt"

# [14] "data/UCI HAR Dataset/test/subject_test.txt"
# [15] "data/UCI HAR Dataset/test/X_test.txt"
# [16] "data/UCI HAR Dataset/test/y_test.txt"

# [26] "data/UCI HAR Dataset/train/subject_train.txt"
# [27] "data/UCI HAR Dataset/train/X_train.txt"
# [28] "data/UCI HAR Dataset/train/y_train.txt"

#  1 Clean the feature name and activity name ----
## 1.1 Prepare the feature variable names ----
feature <- read.csv(files[3],header = FALSE,sep = ' ') #
nrow(feature) # should be 561, or setup header and sep.

## 1.2 Prepare the Activity labels
activity <- read.csv(files[1],header = FALSE,sep = ' ') #
nrow(activity) # [1] 6
activity <- activity %>%
    rename(
        "Activity No" = "V1",
        "Activity" = "V2"
    )

#  2.TRAIN DATA Clean ----

## 2.1 Read the x_train data
trainX <- read.csv(files[27],header = FALSE)
nrow(trainX) # 7352
colnames(trainX)
trainX <- trainX %>%
    # trim the white space at two end.
    mutate_at(.vars = 1, .funs = list(~trimws(.))) %>%
    # trim the white space in middle.
    mutate_at(.vars = 1, .funs = list(~gsub("\\s+"," ",.))) %>%
    # split column to 561 feature
    separate(col = 1, into = paste0("col_", 1:561), sep = " ", remove = TRUE, extra = "merge") %>%
    # set the column name to feature names.
    setNames(.,feature[,2])

## 2.2 Read the y_train
trainY <- read.csv(files[28],header = FALSE)
nrow(trainY) # 7352
colnames(trainY) #[1] "V1"
trainY <- trainY %>%
    rename("Activity No" = "V1" )

## 2.3 read the subject train
trainSubject <- read.csv(files[26],header = FALSE)
nrow(trainSubject) # 7352
colnames(trainSubject) #[1] "V1"
trainSubject <- trainSubject %>%
    rename("Subject" = "V1" )

## 2.4 cbind y_train, subject_train, x_train to train data
train <- cbind(trainSubject,trainY,trainX)

#  3.TEST DATA MERGE ----
## 3.1 Read the x_test data
testX <- read.csv(files[15],header = FALSE)
nrow(testX) # 7352
colnames(testX)
testX <- testX %>%
    # trim the white space at two end.
    mutate_at(.vars = 1, .funs = list(~trimws(.))) %>%
    # trim the white space in middle.
    mutate_at(.vars = 1, .funs = list(~gsub("\\s+"," ",.))) %>%
    # split column to 561 feature
    separate(col = 1, into = paste0("col_", 1:561), sep = " ", remove = TRUE, extra = "merge") %>%
    # set the column name to feature names.
    setNames(.,feature[,2])

## 3.2 read the y_test
testY <- read.csv(files[16],header = FALSE)
nrow(testY) # 7352
colnames(testY) #[1] "V1"
testY <- testY %>%
    rename("Activity No" = "V1" )

## 3.3 read the subject test
testSubject <- read.csv(files[14],header = FALSE)
nrow(testSubject) # 7352
colnames(testSubject) #[1] "V1"
testSubject <- testSubject %>%
    rename("Subject" = "V1" )

## 3.4 cbind y_test, subject_test, x_test
test <- cbind(testSubject,testY,testX)

#  4.MERGE TEST AND TRAIN DATA ----
## 4.1 merge the train data and test data
dataall <- rbind(train,test) # 10299 row and 88

## 4.2 select the column with mean and std contained.
cleandata <- dataall %>%
    select(1,2,matches("(mean|std)")) %>%
    left_join(activity,by="Activity No") %>%
    select(-"Activity No") %>%
    relocate(Activity, .before = 1)


#  5. anothe tidy data
# From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.

independent <- cleandata %>%
    mutate(across(3:88, as.numeric))  %>%
    arrange(Activity,Subject) %>%
    group_by(Activity,Subject)  %>%
    summarise(across(.cols = 1:86, .fns = mean,
                     .names = "mean_{.col}"),
              .groups = "drop")

# 2023-04-08 09:24  draft completed
2023-04-08 09:39

