#Library to use
library(dplyr)

### Read files
#########################

#Activity 
activity <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\activity_labels.txt")

#Features 
features <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\features.txt")

# Train files
xtrain <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\train\\X_train.txt")
ytrain <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\train\\Y_train.txt")
subjtrain <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\train\\subject_train.txt")

# Test files
xtest <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\test\\X_test.txt")
ytest <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\test\\Y_test.txt")
subjtest <- read.table("C:\\Users\\ptocto\\Documents\\Dataset\\UCI HAR Dataset\\test\\subject_test.txt")

### 2.- Extracts only the measurements on the mean and standard deviation for each measurement.
##############################################################################################
# Filter only column with "mean()" and "std()"
featuresm <- grep("mean()",features)
featuress <- grep("std()",features$V2)
featuresf <- c(featuresm,featuress)


### 3.- Uses descriptive activity names to name the activities in the data set
#################################################################################
# Merge ytrain with activity desc  
ytraindesc <- merge(ytrain,activity,by.x = "V1", by.y = "V1")
# Merge ytest with activity desc  
ytestdesc <- merge(ytest,activity,by.x = "V1", by.y = "V1")



# Filter data only with column "mean()" and "std()"
xtrainsub <- select(xtrain, featuresf)
xtestesub <- select(xtest, featuresf)

totrow  <- ncol(xtrainsub)

# Replace names without "-"
for (i in 1:totrow)
{
  names(xtrainsub)[i] <-  gsub("-","",features[featuresf[i],2])
  names(xtestesub)[i] <-  gsub("-","",features[featuresf[i],2])
}

# Union subjtest,ytestdesc,xtestesub
filefinal <- data.frame(subjtest,ytestdesc,xtestesub)
# Union subjtrain,ytraindesc,xtrainsub
filefinal2 <- data.frame(subjtrain,ytraindesc,xtrainsub)

### 4.- Appropriately labels the data set with descriptive variable names.
#############################################################################
# Change names
names(filefinal)[1] <-  "Subject"
names(filefinal)[2] <-  "Activity"
names(filefinal)[3] <- "desc.activity"

names(filefinal2)[1] <-  "Subject"
names(filefinal2)[2] <-  "Activity"
names(filefinal2)[3] <- "desc.activity"

#Create data frame of text "Train" and "Test"
vtipotrain <- data.frame(matrix("Train",nrow = 7352, ncol=1))
vtipotest <- data.frame(matrix("Test",nrow = 2947, ncol=1))
names(vtipotrain)[1] <-  "Type Data"
names(vtipotest)[1] <-  "Type Data"

#Union data in order to indicate "Train" or "Test"
filefinaltrain <- data.frame(vtipotest,filefinal)
filefinaltest <- data.frame(vtipotrain,filefinal2)

### 1.- Merges the training and the test sets to create one data set.
#######################################################################
# Combine data of train and test
FileTrainTest <- rbind(filefinaltrain,filefinaltest)


### 5.- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################################################################################################################
# Generate mean by subject and activity
tidydata <- aggregate(FileTrainTest[, 5:ncol(FileTrainTest)],
                      by=list(subject = FileTrainTest$Subject, 
                              desc.activity = FileTrainTest$desc.activity),
                      mean)
# write final data to disk
write.table(tidydata, file = "./tidy_data.txt", row.name = FALSE)