### COURSERA - DATA SCIENCE
### Course 03 - Getting and Cleaning Data
#### Course Project - Author Nivaldo Hydalgo

### *** DESCRIPTION OF FILE CONTENT ***


## File:  human_activity_mean_std.csv  
##### tidy data set with means and standard deviation for each observed activities:

##### Fields description:
| NAME | TYPE | DESCRIPTION |
| --- | --- | --- |
| volunteer_id        | number  | Id of volunteer activity |
|                     |         | Range: 1:30 |
| activity            | string   | Name of activity observable - activitys: walking, walking_upstairs, walking_downstairs, sitting, standing, laying |
| feature_vector      | string  | Evaluated feature vector |          
| variable_estimated  | string  | Measure variable applied to Feature Vector |
| measured_value      | number  | Value measured by applying the estimated variable on the Feature Vector | 


## File:  human_activity_summarized.csv  
###### tidy data set with the average of each variable for each activity and each subject: 

##### Fields description:
| NAME                | TYPE     | DESCRIPTION                                      |
| ------------------- | -------- | ------------------------------------------------ |
| volunteer_id        | number   | Id of volunteer activity - range: 1:30           |
| activity            | string   | Name of activity observable - activitys: walking, walking_upstairs, walking_downstairs, sitting, standing, laying |
|  feature_vector     | string   | Evaluated feature vector                         |
|  variable_estimated | string   | Measure variable applied to Feature Vector       |
|  measured_mean      | number   | Average of value measured by applying the estimated variable on the Feature Vector | 


#### Additional information about data read files:
/data/features_info.txt
/data/README.txt

