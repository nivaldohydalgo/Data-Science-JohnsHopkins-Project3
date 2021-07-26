## -------------------------------------------------------- ##
##                 COURSERA - DATA SCIENCE
##         Course 03 - Getting and Cleaning Data
##        Course Project - Author Nivaldo Hydalgo
##          *** DESCRIPTION OF FILE CONTENT ***
## -------------------------------------------------------- ##

## File:  human_activity_mean_std.csv  
## ----------------------------------
# tidy data set with means and standard deviation for each observed activities:

# Fields description:
# NAME                TYPE      DESCRIPTION
# ------------------- --------- -------------------------------------------------
  volunteer_id        number    Id of volunteer activity
                                Range: 1:30
  ------------------- --------- -------------------------------------------------
  activity            string    Name of activity observable
                                Possible activitys:   1. walking
                                                      2. walking_upstairs
                                                      3. walking_downstairs
                                                      4. sitting  
                                                      5. standing 
                                                      6. laying           
  ------------------- --------- -------------------------------------------------
  feature_vector      string    Evaluated feature vector           
  ------------------- --------- -------------------------------------------------
  variable_estimated  string    Measure variable applied to Feature Vector
  ------------------- --------- -------------------------------------------------
  measured_value                Value measured by applying the estimated 
                                variable on the Feature Vector 
  ------------------- --------- -------------------------------------------------


## File:  human_activity_summarized.csv  
## ------------------------------------
# tidy data set with the average of each variable for each activity and each subject: 

# Fields description:
# NAME            TYPE        DESCRIPTION
# --------------- ----------- -------------------------------------------------
  volunteer_id        number    Id of volunteer activity
                                Range: 1:30
  ------------------- --------- -------------------------------------------------
  activity            string    Name of activity observable
                                Possible activitys:   1. walking
                                                      2. walking_upstairs
                                                      3. walking_downstairs
                                                      4. sitting  
                                                      5. standing 
                                                      6. laying           
  ------------------- --------- -------------------------------------------------
  feature_vector      string    Evaluated feature vector           
  ------------------- --------- -------------------------------------------------
  variable_estimated  string    Measure variable applied to Feature Vector
  ------------------- --------- -------------------------------------------------
  measured_mean                 Average of value measured by applying the estimated 
                                variable on the Feature Vector 
  ------------------- --------- -------------------------------------------------


# Additional information about data read files:
/data/features_info.txt
/data/README.txt

