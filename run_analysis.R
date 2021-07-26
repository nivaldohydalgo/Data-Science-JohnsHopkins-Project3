# ============================================================================ #
# File.....: run_analysis.R
# Objective: Run analysis from course project
# Course...: Getting and Cleaning Data - Coursera
# ============================================================================ #

print("********** Executing script run_analysis.R **********")


# GET AND CLEAN ACTIVITY LABELS
# -----------------------------
# 1- Read file and set column names "activity_id" and "activity"
activity_labels <- read_delim("./data/activity_labels.txt", delim = " ", col_names = c("activity_id", "activity"))
# 2- Transform activity names to lowercase
activity_labels <- activity_labels %>% 
    mutate(activity = tolower(activity))


# GET AND CLEAN FEATURES
# ----------------------
# 1- Read file and set column names "id" and "feature"
features <- read_delim("./data/features.txt", delim = " ", col_names = c("id", "feature"))
# 2- Clean and detail column "feature"
features <- features %>% 
    mutate( feature = gsub("-mean", " mean", feature) ) %>% 
    mutate( feature = gsub("-std", " std", feature) ) %>% 
    mutate( feature = gsub("\\()", "", feature) ) %>% 
    mutate( feature = gsub("BodyBody", "Body", feature) ) %>% 
    mutate( feature = gsub("^t", "time", feature) ) %>% 
    mutate( feature = gsub("^f", "frequency", feature) ) %>% 
    mutate( feature = gsub("Body", " body", feature) ) %>% 
    mutate( feature = gsub("Acc", " acceleration", feature) ) %>% 
    mutate( feature = gsub("Gravity", " gravity", feature) ) %>% 
    mutate( feature = gsub("Jerk", " jerk", feature) ) %>% 
    mutate( feature = gsub("Gyro", " gyrocope", feature) ) %>% 
    mutate( feature = gsub("Mag", " magnitude", feature) ) %>%   
    mutate( feature = gsub("-", " ", feature) )  



# GETTING AND PREPARE FILES OF TRAIN (/data/train/)
# -------------------------------------------------


# Get and clean file of VOLUNTEER ID
# ----------------------------------
# 1- Read file and set column names "volunteer_id"
volunteer_train <- read_delim("./data/train/subject_train.txt", delim = " ", col_names = c("volunteer_id"))


# Get and clean file of ACTIVITY ID
# ---------------------------------
# 1- Read file and set column names "activity_id"
activity_train <- read_delim("./data/train/y_train.txt", delim = " ", col_names = c("activity_id"))


# Get and clean file of FEATURE VECTORS
# -------------------------------------
# 1- Read file of feature vectors 
features_train <- read_table("./data/train/X_train.txt", col_names = FALSE)
# 2- Set columns names of features
colnames(features_train) <- c(as.array(features$feature))


# Join files of TRAIN
# -------------------
# 1- Join tables of volunteers, activitys and features
train_results <- bind_cols(volunteer_train, activity_train, features_train)


# GETTING AND PREPARE FILES OF TEST (/data/test/)
# -----------------------------------------------


# Get and prepare file of VOLUNTEER ID
# ------------------------------------
# 1- Read file and set column names "volunteer_id"
volunteer_test <- read_delim("./data/test/subject_test.txt", delim = " ", col_names = c("volunteer_id"))


# Get and prepare file of ACTIVITY ID
# -----------------------------------
# 1- Read file and set column names "activity_id"
activity_test <- read_delim("./data/test/y_test.txt", delim = " ", col_names = c("activity_id"))


# Get and prepare file of FEATURE VECTORS
# ---------------------------------------
# 1- Read file of feature vectors
features_test <- read_table("./data/test/X_test.txt", col_names = FALSE)
# 2- Set columns names of feactures
colnames(features_test) <- c(as.array(features$feature))


# Join files of TEST
# ------------------
# 1- Join tables of volunteers, activitys and features
test_results <- bind_cols(volunteer_test, activity_test, features_test)


# JOIN TABLES TRAIN AND TEST
# --------------------------


# Join and Clean data sets 
# ------------------------
# 1- Join tables train_results and test_results
human_activity_activity <- bind_rows(train_results, test_results)
# 2- Relocate column activity(name activity) in second position and exclude id_activity
human_activity_activity <- human_activity_activity %>% 
    left_join(activity_labels, by = "activity_id") %>% 
    relocate(activity, .after = "volunteer_id") %>% 
    select(-activity_id)


# Select rows contains mean and std
# ---------------------------------
# 1- Extracts only the measurements on the mean and standard deviation
human_activity_mean_std <- human_activity_activity %>% 
    select( volunteer_id, activity, matches('mean|std'), -starts_with("angle"), -contains("meanFreq") )


# Pivot the data set from- measured variables
# -------------------------------------------
# 1- Generate news columns "feature_vector" and "measured_value"
human_activity_mean_std <- human_activity_mean_std %>% 
  pivot_longer( !c("volunteer_id", "activity"), names_to = "feature_vector", values_to = "measured_value" )


# Cleaning finally data set
# -------------------------
# 1- Create column variable_estimated with values: "mean" and "standard deviation"
# 2- Relocate column "variable_estimated"
# 3- exclude "mean" and "std" from the description of "feature_vector"
human_activity_mean_std <- human_activity_mean_std %>% 
  mutate( variable_estimated = ifelse(str_detect(feature_vector,' mean'), "mean", ifelse(str_detect(feature_vector,' std'), "standard deviation", "") ) ) %>% 
  relocate( variable_estimated, .after = "feature_vector" ) %>%  
  mutate( feature_vector = gsub( " mean| std", "", feature_vector )) 
  
  

# CREATE NEW TABLE SUMMARIZING COLUMN VALUES FOR MEAN 
# ---------------------------------------------------


# CREATE NEW TABLE SUMMARY
# 1- Group data set by "volunteer_id", "activity", "feature_vector", "variable_estimated"
# 2- Summarise by mean of "measured_value"
human_activity_summarized <- human_activity_mean_std %>% 
    group_by( volunteer_id, activity, feature_vector, variable_estimated ) %>% 
    summarise( measured_mean = mean(measured_value) )



print("********** Finished script run_analysis.R **********")