#Run Analysis

The script reads data from [Samsung Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracts average values of each mean and standard deviation variable for each activity and each subject.

####Files:
CodeBook.md - text file with explanations for variables in the resulting set  
README.md - this file  
run_analysis.R - script for R interpreter

####Usage:  
1. Place it in the same directory you've extracted the data set  
2. Set working directory to the same directory you've extracted the data set  
  ```
  setwd("")
  ```  
3. Source the script into your environment  
  ```
  source("run_analysis.R")
  ```  
4. Execute analysing function  
  ```
  assignment()
  ```  
5. Now you have tidy data set in your working directory  
  ```
  tidy_set.txt
  ```  
