===============================================================================
## Human Activity Recognition Using Smartphones Dataset
Getting and Cleaning Data Course Project
22.11.2016
===============================================================================
## Description of the R-source run_analysis.R 

R packages
  library(stringr)
  library(dplyr)

R-script to get data file, transform and clean the datasets of 
project files UCI HAR Datasets

## R-sripts run_analysis( arg_dir ) 
    using functions
    - merge_test_and_train_data( dir )
          using function get_data( dir, subjectfile, xfile,  yfile )
    - select_columns_mean_std( my_data )
    - merge_activity_and_dfdata( dir, dfdata)
        using function get_activities(dir = dir)
    - create_tidy_df_of_average ( dir, dfdata )
        using function merge_activity_and_dfdata( dir, dfdata )

-------------------------------------------------------------------------------        
        
## function run_analysis( arg_dir = getwd()
  argument: dirctory
  return  : data.frame with columns (activity_id, volunteers, 
            extracts only the measurements on the mean and 
            standard deviation )
  tasks   :
    - merges the training and the test sets to create one data set
    - extracts only the measurements on the mean and standard deviation 
      for each measurement
    - Uses descriptive activity names to name the activities in the data set
    - write csv-file "measurements_on_mean_deviation.csv" data frame with the 
      measurements on the mean and standard deviation for each measurement
    - appropriately labels the data set with descriptive variable names
    - from the data set in step 4, creates a second, independent tidy data set 
      with the average of each variable for each activity and each subject
    - write txt-file "average_measurements_on_mean_std.txt" with tidy data set
  using   ;
    - function merge_test_and_train_data( dir )    
    - function select_columns_mean_std( my_data )
    - function merge_activity_and_dfdata( dir, dfdata )
    - function create_tidy_df_of_average( dir, dfdata )
    - function arrange( ... )
    - function write.csv2( ... )        
    - function write.table( ... )    
  
-------------------------------------------------------------------------------          

# function merge_test_and_train_data( dir )
  argument: directory
  return  : data.frame 'my_data'
  tasks   :
    - read the train and test dataset 
      files: "features.txt"
             "subject_test.txt", "X_test.txt", "y_test.txt", 
             "subject_train.txt", "X_train.txt", "y_train.txt"  
    - put them together
  using   :
    - function get_data( dir, features_labels, subjectfile, xfile, yfile )
    - function read.fwf( ... )
    - function rbind( ... )
    - function arrange( ... )
    
-------------------------------------------------------------------------------   

# function get_data( dir, features_labels, subjectfile, xfile, yfile )
  arguments: dir              directory
             features_labels  labels of the features
             subjectfile      filename of the corresponding subjects (volunteers)
             xfile            filename of the measurement data
             yfile            filename of the corresponding activities
  return   : data.frame with columns ("volunteers", "activity_id", 
                              ...measurement data...)
  tasks    ;
    - read subject, measurement and volunteers from data sets
    - labels the data set with descriptive variable names
    - provide the data frame 'my_data'
  using   :
    - read.fwf( ... )
    - cbind( ... )
    
-------------------------------------------------------------------------------     

# function select_columns_mean_std( my_data )
  argument: data.frame "my_data"
  return  : data.frame with columns (activity_id, volunteers, 
            extracts only the measurements on the mean and 
            standard deviation )
  tasks   :
    - look for the columns with pattern 'mean()' or 'std()' 
    - select the relevant subset from input data frame
  using   :
    - grep( ... )
    - subset( ... )

-------------------------------------------------------------------------------      
    
# function merge_activity_and_dfdata( dir, dfdata )
  argument: directory
            data.frame "my_data" with column 'activity_id' 
  return  : data.frame with columns (activity_id, volunteers, 
            measurements and activity description )
  tasks   :
    - get the data frame 'activities'
    - merge them with the data fram 'dfdata'
  using   :
    - function get_activities( dir )
    - function merge( ... )
  
------------------------------------------------------------------------------- 
# function get_activities( dir )
  argument: directory
  return  : data.frame
  tasks   : 
    - read activities from data file "features.txt"
    - provide the data frame 'activities'
  using   :
    - read.fwf( ... )
    - strsplit( ... )
    - cbind( ... )

------------------------------------------------------------------------------- 

# function create_tidy_df_of_average( dir , dfdata )
  argument: directory
            dfdata    "my_mean_std" 
  return  : data.frame with columns (activity_id, activity description, 
            volunteers, mean of measurements and )
  tasks   :
    - create groups of each activity and each volunteers into data 
      frame "by_activity_id_volunteers" 
    - evaluate means for features of each activity and each volunteers
    - merge the activity description
    - create new column names
    - sort the tidy dataset by the columns 'activity_id' and 'volunteers' 
  using   :
    - merge_activity_and_dfdata( dir, dfdata )
    - arrange( ... )
    - group_by( ... )
    - summarize_all( ... )
    - mean( ... )
    - arrange( ... )

