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

####License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1]  

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.  

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.  
