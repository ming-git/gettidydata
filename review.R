# 2023-04-09 review

# create the data directory
reviewdir <- "review"
if (!dir.exists(reviewdir)) {
    dir.create(reviewdir)
}

oldwd <- getwd()
newwd <- setwd(reviewdir)

##REVIEW10: 2023-04-10 06:22 M Marcus February 2, 2016
studenent <- "github-iamihgam"
githuburl <- "https://github.com/iamihgam/GandC_project/tree/master"
dataurl <- "https://s3.amazonaws.com/coursera-uploads/peer-review/HkJsxW0yEeWEewoyD2Bc5Q/3605ac9f5f892a7493f5ad8c86206b97/G_Cproject.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180, the answer is 180
ncol(data5) # shoulde be 68 or 88, the answer is 479.

#Peer-review-assigment request：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#My peer-review：2016 job. the column is 479 is too much, kindly check your filter.in run_analysis.r, the line with task n should be comments,don't it? 两个答案居然一样？
# -----------

##REVIEW9: 2023-04-10 06:14 sarthak mukhopadhyay February 2, 2016
studenent <- "github-sarthakbua"
githuburl <- "https://github.com/sarthakbua/Cleaning_data_week4.git"
dataurl <- "https://s3.amazonaws.com/coursera-uploads/peer-review/HkJsxW0yEeWEewoyD2Bc5Q/3caadca2aebdf55f07232fc2fbebcded/AllData_final.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180, the answer is 180
ncol(data5) # shoulde be 68 or 88, the answer is 479.

#Peer-review-assigment request：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#My peer-review：2016 course wating 8 years to reviw 479 column is too much data.
# -----------

##REVIEW8: 2023-04-10 06:07 Shantanu Dixit February 2, 2016
studenent <- "github-joelcrawford"
githuburl <- "https://github.com/lightburst/Getting-and-Cleaning-Data-Course-Project.git"
dataurl <- "https://s3.amazonaws.com/coursera-uploads/peer-review/HkJsxW0yEeWEewoyD2Bc5Q/9158ebd0254f8ae15e2aa403739ce9fe/tidyMeans.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180, the answer is 180
ncol(data5) # shoulde be 68 or 88, the answer is 68 （这个2016年的是对的？）

#Peer-review-assigment request：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#My peer-review：Great job. 8 yeare ago haha, 66 features is more ok.
# -----------

##REVIEW7: 2023-04-10 05:48 Joel Crawford February 2, 2016
studenent <- "github-joelcrawford"
githuburl <- "https://github.com/joelcrawford/cleandata"
dataurl <- "https://s3.amazonaws.com/coursera-uploads/peer-review/HkJsxW0yEeWEewoyD2Bc5Q/c191fff47f1687bc2872c3ba2c3a7a27/tidyData.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180, the answer is 180
ncol(data5) # shoulde be 68 or 88, the answer is 81 (2016的数据集不同了，review 6 是对的？)

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# the 2016 year courese project. the github repo has deleted.

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：
# -----------

##REVIEW6: 2023-04-10 05:34 Jeremy Bradshaw February 1, 2016
studenent <- "github-jbradshaw76"
githuburl <- "https://github.com/jbradshaw76/Getting-and-Cleaning-Data-Project"
dataurl <- "https://s3.amazonaws.com/coursera-uploads/peer-review/HkJsxW0yEeWEewoyD2Bc5Q/cd750de02d5a9215d2a3c3ae8b627981/tidy_data.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
ncol(data5) # shoulde be 88, the answer is 68

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# the 2016 year courese project with data.table, reshape2, that's great.
# the only question is filter with mean|std, the result should be 86 not 81, i dont't know ,what's wrong. but it's include the basice 66 mean()|std() contained feature.

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：
# -----------

##REVEIW1: 2023-04-09 08:41 michail vazaios, April 7, 2023
studenent <- "michail-vazaios"
githuburl <- "https://github.com/MmmmAtGithub/GettingAndCleaningData"
dataurl <- "https://coursera-assessments.s3.amazonaws.com/assessments/1680802667340/a7c171e8-a67b-461d-b97a-f26ffdefeeaa/means.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
ncol(data5) # shoulde be 68 or 88, the answer is 68

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# 2023-04-09 09:07 非常遗憾，无法打开该同学提供的链接https://github.com/MmmmAtGithub/GettingAndCleaningData。尝试去查看github里有用户Mmmm, 但是其名下只有3个repo,但没有名字为GettingAndCleaningData repo。我相信该同学已经完成了大部分的作业，但是忘记上传作业到github。请将本地作业上传到github指定的repo中。

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：

# restore the old work directory after work.

##REVIEW2: 2023-04-09 09:17  匿名学生 April 7, 2023
studenent <- "anoun472023"
githuburl <- "https://github.com/anlaamou/samsun_project_r/bolb/master/run_analysis.R"
dataurl <- "https://coursera-assessments.s3.amazonaws.com/assessments/1680626231608/37f2ae48-494c-43c3-af49-e1b4906cb94f/cleandata.R"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
ncol(data5) # shoulde be 88, the answer is 68

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
#english review provided.

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：

##REVIEW3: 2023-04-09 09:26  Mohammad Usman Iqbal April 7, 2023
studenent <- "Mohammad-Usma-Iqbal"
githuburl <- "https://github.com/vittorioc/GettingCleaningData"
dataurl <- "https://coursera-assessments.s3.amazonaws.com/assessments/1680694769409/3d2f9cff-124d-4743-b79d-2012a75443d5/Course%20Project.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
ncol(data5) # shoulde be 88, the answer is 68

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# english review provided.
# good job, 66 or 86, this is question, mean|std, mean()|std()

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：

##REVIEW4: 2023-04-09 09:42   Joey Wannouch April 8, 2023
studenent <- "github-joeyw95"
githuburl <- "https://github.com/joeyw95/Human-Activity-Recognition-Analysis.git"
dataurl <- "https://coursera-assessments.s3.amazonaws.com/assessments/1680694769409/3d2f9cff-124d-4743-b79d-2012a75443d5/Course%20Project.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
# 85860
ncol(data5) # shoulde be 88, the answer is 68
# 4

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# Excellent Job. In fact, for the first question, i only want to give you 6 score, fore mean std match, i think should match mean|std (86 result )is enough, but you try to match mean()|std() (66 result). It's minor issue ONLY

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：

##REVIEW5: 2023-04-09 09:53 Lindsey Behrens April 8, 2023
studenent <- "github-phreekypheesh"
githuburl <- "https://github.com/phreekypheesh/GCD-Course-Project"
dataurl <- "https://coursera-assessments.s3.amazonaws.com/assessments/1680900068334/8bce0b48-c58e-42f8-bc80-ff3d948284b7/Averages.txt"
destfile <- paste0(reviewdir,"/","review-data-",studenent,".txt")
download.file(dataurl,destfile)
data5 <- read.csv(destfile,sep = "")

nrow(data5) # should be 180,
ncol(data5) # shoulde be 88, the answer is 68

#课程作业的批改要求如下：
#Please use the space below to provide constructive feedback to the student who submitted the work. Point out the submission's strengths as well as areas in need of improvement. You may also use this space to explain your grading decisions.

#我的中文评语如下：
# The tidy data is not correct. The other work is acceptable.In fact the tidy dataset has 180 obs (30x6) and 68 variable (if you filter/match mean()|std()) or 88 variable (if you filter/match mean|std). Try again to update your result. 2023-04-09 10:01

#请按课程作业的批改要求，我的中文评语翻译为英文，注意调整语气，尊重事实，给予鼓励：
# -----------
# restore the old work directory after work.
setwd(oldwd)
