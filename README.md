### COURSERA - DATA SCIENCE
### Course 03 - Getting and Cleaning Data
#### Course Project - Author Nivaldo Hydalgo
#### *** JOB DESCRIPTION ***

##### script for getting and cleaning data
run_analisys.R

##### library to run the script
library(tidyverse)

##### command to run the script
source("run_analysis.R")

##### source of analyzed data
./data/activity_labels.txt
./data/features.txt
./data/train/subject_train.txt
./data/train/X_train.txt
./data/train/y_train.txt
./data/test/subject_test.txt
./data/test/X_test.txt
./data/test/y_test.txt


#### CLEAN FILES GENERATED FOR EVALUATION

###### tidy data set with means and standard deviation for each observed activities:
human_activity_mean_std.csv

###### tidy data set with the average of each variable for each activity and each subject: 
human_activity_summarized.csv


##### **Attention**  
All commands used to get and clean the files are described in the script file "run.analysis.R" itself.


###### Save files on CSV  
write_csv( human_activity_mean_std, "human_activity_mean_std.csv" )
write_csv( human_activity_summarized, "human_activity_summarized.csv" )

