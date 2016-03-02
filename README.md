#How the script run_analysis.R works. 
#####################################
There is the following process that this scrip does:
####################################################
#Library to use: library(dplyr)

### Read files
#########################

#Activity : activity_labels.txt

#Features : features.txt

# Train files :
	UCI HAR Dataset\train\X_train.txt
	UCI HAR Dataset\train\Y_train.txt
	UCI HAR Dataset\train\subject_train.txt

# Test files
	UCI HAR Dataset\test\X_test.txt
	UCI HAR Dataset\test\Y_test.txt
	UCI HAR Dataset\test\subject_test.txt


### 2.- Extracts only the measurements on the mean and standard deviation for each measurement.
##############################################################################################
# Filter only columns name with "mean()" and "std()" using grep


### 3.- Uses descriptive activity names to name the activities in the data set
#################################################################################
# Merge ytrain with activity desc and ytest with activity "desc"

# Filter data only with column "mean()" and "std()" using "select"

# Replace "-" with "" in the names of variable using "gsub"

# Union subjtest,ytestdesc,xtestesub and subjtrain,ytraindesc,xtrainsub


### 4.- Appropriately labels the data set with descriptive variable names.
#############################################################################
# Change names to "Subject", "Activity", "desc.activity"

#Create data frame of text "Train" and "Test" and change the names to "Type Data"

#Union data in order to indicate "Train" or "Test"


### 1.- Merges the training and the test sets to create one data set.
#######################################################################
# Combine data of train and test


### 5.- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################################################################################################################
# Generate mean by subject and activity of the data 

# write final data to disk using row.name = FALSE
