#####################################################################
## Project UCI HAR Datasets
## Getting and Cleaning Data Course Project
##
## script to get data file, transform and clean the datasets
## of project files UCI HAR Datasets
##
## R packages
##   library(stringr)
##   library(dplyr)
##
## function:
## run_analysis( arg_dir ) 
##   using functions
##   - merge_test_and_train_data( dir )
##       using function 
##         get_data( dir, subjectfile, xfile,  yfile )
##   - select_columns_mean_std( my_data )
##   - merge_activity_and_dfdata( dir, dfdata)
##       using function 
##         get_activities(dir = dir)
##   - create_tidy_df_of_average ( dir, dfdata )
##       using function 
##         merge_activity_and_dfdata( dir, dfdata )
##
## 22.11.2016

##-------------------------------------------------------------------
## function get_activities()
## read activities from dataset "features.txt" and
## provide the data frame 'activities'
## argument: directory
## return  : data.frame
##-------------------------------------------------------------------
get_activities <- function( dir = getwd() ) {
  
  ## data.frame "activities" with two columns
  ## activity_id  activity_desc
  ## -------------------------------
  ## 1            WALKING
  ## 2            WALKING_UPSTAIRS
  ## 3            WALKING_DOWNSTAIRS
  ## 4            SITTING
  ## 5            STANDING
  ## 6            LAYING  
    
  ## constants
  gc_width <- 128    
  
  ## set work directory
  setwd(dir)
  
  ## labels activity
  activity_label <- read.fwf(file = "activity_labels.txt", widths = gc_width, header = FALSE, sep = "\n")
  
  activities <- strsplit( as.character(activity_label[[1]]), split = "\\ " )
  
  activity_id <- NA; activity_desc <- NA
  for ( idx in 1:length(activities) ) { 
    activity_id[idx] <- activities[[idx]][1] 
    activity_desc[idx] <- activities[[idx]][2] 
  }
  
  ## data.frame with columns ("activity_id", "activity_desc")
  as.data.frame(cbind(activity_id, activity_desc))  
  
}


##-------------------------------------------------------------------
## function get_data()
## read subject, measurement and volunteers from datasets and
## provide the data frame 'my_data'
## arguments: dir              directory
##            features_labels  labels of the features
##            subjectfile      filename of the corresponding subjects 
##                             (volunteers)
##            xfile            filename of the measurement data
##            yfile            filename of the corresponding activities
## return   : data.frame with columns ("volunteers", "activity_id", 
##                                      ...measurement data...)
##-------------------------------------------------------------------
get_data <- function( dir = getwd(), 
                      features_labels, 
                      subjectfile = "subject_test.txt", 
                      xfile = "X_test.txt",  
                      yfile = "y_test.txt") {
  
  ## constants
  gc_width <- 128
  
  ## set work directory
  setwd(dir)  
  
  ## count of features
  gc_anz_feat <- dim(features_labels)[1]  
  
  ## volunteers (range of values 1 - 30) 
  subject_data <- read.fwf(file = subjectfile, widths = gc_width, header = FALSE, sep = "\n")
  subject_data[,1] <- as.factor(subject_data[,1])
  
  ## x, y, z measurement data
  x_data <- read.fwf(file = xfile, widths = rep(16, gc_anz_feat), header = FALSE, sep = "\n")
  y_data <- read.fwf(file = yfile, widths = gc_width, header = FALSE, sep = "\n")
  y_data[,1] <- as.factor(y_data[,1])
  
  ## build the data frame with column names
  x_data_matrix <- as.matrix(x_data[[1]])
  dim(x_data_matrix) <- c(dim(y_data)[1], gc_anz_feat)
  x_data <- as.data.frame(x_data_matrix)
  
  ## 4) Appropriately labels the data set with descriptive variable names
  colnames(x_data) <- as.vector(features_labels[[1]])
  colnames(y_data) <- "activity_id"
  colnames(subject_data) <- "volunteers"
  
  ## return data.frame with columns ("volunteers", "activity_id", ...measurement data...)
  cbind(subject_data, y_data, x_data)  

}  
  

##-------------------------------------------------------------------
## function merge_test_and_train_data()
## read the train and test dataset and put them together
## argument: directory
## return  : data.frame 'my_data'
##-------------------------------------------------------------------
merge_test_and_train_data <- function(dir = getwd()) {
  
  ## constants
  gc_width <- 128  
  
  ## set work directory
  setwd(dir)
  
  ## labels features
  features_labels <- read.fwf(file = "features.txt", widths = gc_width, header = FALSE, sep = "\n")
  
  ## test data
  setwd(dir); setwd("./test")
  test_data <- get_data( dir = getwd(), 
                         features_labels, 
                         subjectfile = "subject_test.txt", 
                         xfile = "X_test.txt",  
                         yfile = "y_test.txt" )
  
  ## train data
  setwd(dir); setwd("./train")
  train_data <- get_data( dir = getwd(),
                          features_labels, 
                          subjectfile = "subject_train.txt", 
                          xfile = "X_train.txt",  
                          yfile = "y_train.txt" )
  
  ## 1) Merges the training and the test sets to create one data set.
  my_data <- rbind(test_data, train_data)
  
  ## return: merge of training and test data set
  arrange(my_data, as.integer(my_data$volunteers), as.integer(my_data$activity_id))
  
}


##-------------------------------------------------------------------
## function select_columns_mean_std()
## look for the columns with pattern 'mean()' or 'std()' and 
## select the relevant columns
## argument: data.frame "my_data"
## return  : data.frame with columns (activity_id, volunteers, 
##           extracts only the measurements on the mean and 
##           standard deviation )
##------------------------------------------------------------------
select_columns_mean_std <- function( dfdata ) {

  ## get columns for extract with pattern 'mean()' or 'std()'
  vNames <- sort( c(grep("mean()", colnames(dfdata)), 
                    grep("std()", colnames(dfdata))) )
  
  ## prepare for extract
  my_extract <- c("volunteers", "activity_id", colnames(dfdata)[vNames])

  ## extract subset
  subset(dfdata, TRUE, select = my_extract)

}


##-------------------------------------------------------------------
## function merge_activity_and_dfdata()
## get the data frame 'activities' and merge them with the 
## data fram 'dfdata'
## argument: directory
##           data.frame "my_data" with column 'activity_id' 
## return  : data.frame with columns (activity_id, volunteers, 
##           measurements and activity description )
##-------------------------------------------------------------------
merge_activity_and_dfdata <- function( dir = getwd(), dfdata) {
  
  ## get data frame 'activities' 
  activities <- get_activities(dir = dir)
  
  ## merge with data frame 'activities'  
  my_df <- merge( activities, 
                  dfdata,
                  by_y = activities$activity_id,
                  by_y = dfdata$activity_id )  
  
}


##-------------------------------------------------------------------
## function create_tidy_df_of_average()
## - create groups of each activity and each volunteers into data frame by_activity_id_volunteers 
## - evaluate means for features of each activity and each volunteers
## - merge the activity description
## - create new column names
## - sort the tidy dataset by the columns 'activity_id' and 'volunteers' 
## argument: directory
##           dfdata    "my_mean_std" 
## return  : data.frame with columns (activity_id, activity description, volunteers, 
##           mean of measurements and )
##-------------------------------------------------------------------
create_tidy_df_of_average <- function( dir = getwd(), dfdata ) {

  ## sort dataframe
  my_dfdata <- arrange( dfdata, 
                        as.integer(as.character(activity_id)), 
                        as.integer(as.character(volunteers)) )

  ## average    
  by_activity_id_volunteers <- group_by(my_dfdata, activity_id, volunteers)
  my_mean_std_tidy <- summarize_all( by_activity_id_volunteers, mean )

  ## descriptive activity names to name the activities in the data set
  my_mean_std_tidy <- merge_activity_and_dfdata( dir = dir, dfdata = my_mean_std_tidy)
  
  ## new column header
  oldColnames <- strsplit(colnames(my_mean_std_tidy), " ")
  for ( idx in 4:length(oldColnames) ) {
    colnames(my_mean_std_tidy)[idx] <- paste( "mean-of-", 
                                              oldColnames[[idx]][2], 
                                              sep="" )
    idx <- idx + 1
  }

  ## sort of tidy data frame
  arrange( my_mean_std_tidy, 
           as.integer(as.character(activity_id)), 
           as.integer(as.character(volunteers)) )  

}


##-------------------------------------------------------------------
## function run_analysis()
## - merges the training and the test sets to create one data set
## - extracts only the measurements on the mean and standard deviation 
##   for each measurement
## - Uses descriptive activity names to name the activities in the data set
## - write csv-file "measurements_as_mean_deviation.csv" data frame with the 
##   measurements on the mean and standard deviation for each measurement
## - appropriately labels the data set with descriptive variable names
## - from the data set in step 4, creates a second, independent tidy data set 
##   with the average of each variable for each activity and each subject
## - write txt-file "average_measurements_as_mean_deviation.txt" with tidy data set
## argument: dirctory
## return  : data.frame with columns (activity_id, volunteers, 
##           extracts only the measurements on the mean and 
##           standard deviation )
##-------------------------------------------------------------------
run_analysis <- function( arg_dir = getwd() ) { 

  ## packages  
  library(stringr)
  library(dplyr)
  
  ## set work directory
  setwd(arg_dir)
  
  ## 1) Merges the training and the test sets to create one data set.  
  my_data <- merge_test_and_train_data( dir = arg_dir )


  ## 2) Extracts only the measurements on the mean and standard deviation for each measurement
  my_mean_std <- select_columns_mean_std( my_data )
  

  ## 3) Uses descriptive activity names to name the activities in the data set
  my_mean_std_desc <- merge_activity_and_dfdata( dir = arg_dir, dfdata = my_mean_std )
  
  my_mean_std_desc <- arrange( my_mean_std_desc, 
                               as.integer(as.character(activity_id)), 
                               as.integer(as.character(volunteers)) )
  
  ## create dataset for data frame with the measurements on the mean and standard deviation for each measurement 
  write.csv2(my_mean_std_desc, "measurements_as_mean_deviation.csv", dec=",", row.names=FALSE)
  
  ## 4) Appropriately labels the data set with descriptive variable names
  ## look at function get_data()

  ## 5) From the data set in step 4, creates a second, independent tidy data set with the 
  ##    average of each variable for each activity and each subject.
  my_mean_std_tidy <- create_tidy_df_of_average( dir = arg_dir, dfdata = my_mean_std )
  
  ## create dataset for data frame with average of each variable for each activity and each subject
  ## write.csv2(my_mean_std_tidy, "average_measurements_as_mean_deviation.csv", dec=",", row.names=FALSE)
  
  ## create dataset for data frame with average of each variable for each activity and each subject
  write.table(my_mean_std_tidy, "average_measurements_as_mean_deviation.txt", row.names=FALSE)  
  
  ## return data frame with extracts only the measurements on the mean and standard deviation
  my_mean_std_tidy

}
