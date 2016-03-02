Description of variables that are in tidy_data.txt, the values are the average of each variable for each activity and each subject
##############################################################

Part I:
#######
"subject" : An number that identify a subject (1..30 .Unique identifier assigned to each subject)

"desc.activity": Activity that was measured
###########################################
 
 			   "WALKING"

                   "WALKING_UPSTAIRS"

                   "WALKING_DOWNSTAIRS"

                   "SITTING"

                   "STANDING"

                   "LAYING"


Part II:
########
These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
############################################################
tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag



The set of variables that were estimated from these signals are:
################################################################
 
	mean: Mean value

	std: Standard deviation


Then the variable is of the form (without "-"): (signal + mean or std)
 
Example: 
	signal: tBodyAcc-X
  
	mean

	variable ==> tBodyAccmean..X


The followig were the variables:
################################
"tBodyAccmean..X"
 
"tBodyAccmean..Y"

"tBodyAccmean..Z"

"tGravityAccmean..X"
 
"tGravityAccmean..Y"
 
"tGravityAccmean..Z"
 
"tBodyAccJerkmean..X"
 
"tBodyAccJerkmean..Y"
 
"tBodyAccJerkmean..Z"
 
"tBodyGyromean..X"
 
"tBodyGyromean..Y"
 
"tBodyGyromean..Z"
 
"tBodyGyroJerkmean..X"
 
"tBodyGyroJerkmean..Y"
 
"tBodyGyroJerkmean..Z"
 
"tBodyAccMagmean.."
 
"tGravityAccMagmean.."
 
"tBodyAccJerkMagmean.."
 
"tBodyGyroMagmean.."
 
"tBodyGyroJerkMagmean.."
 
"fBodyAccmean..X"
 
"fBodyAccmean..Y"
 
"fBodyAccmean..Z"
 
"fBodyAccmeanFreq..X"
 
"fBodyAccmeanFreq..Y" 

"fBodyAccmeanFreq..Z"
 
"fBodyAccJerkmean..X"
 
"fBodyAccJerkmean..Y"
 
"fBodyAccJerkmean..Z"
 
"fBodyAccJerkmeanFreq..X"
 
"fBodyAccJerkmeanFreq..Y"
 
"fBodyAccJerkmeanFreq..Z"
 
"fBodyGyromean..X"
 
"fBodyGyromean..Y"
 
"fBodyGyromean..Z"
 
"fBodyGyromeanFreq..X"
 
"fBodyGyromeanFreq..Y"
 
"fBodyGyromeanFreq..Z"
 
"fBodyAccMagmean.."
 
"fBodyAccMagmeanFreq.."
 
"fBodyBodyAccJerkMagmean.."
 
"fBodyBodyAccJerkMagmeanFreq.."
 
"fBodyBodyGyroMagmean.."
 
"fBodyBodyGyroMagmeanFreq.."
 
"fBodyBodyGyroJerkMagmean.."
 
"fBodyBodyGyroJerkMagmeanFreq.."
 
"tBodyAccstd..X"

"tBodyAccstd..Y"
 
"tBodyAccstd..Z"
 
"tGravityAccstd..X"
 
"tGravityAccstd..Y"
 
"tGravityAccstd..Z"
 
"tBodyAccJerkstd..X"
 
"tBodyAccJerkstd..Y"
 
"tBodyAccJerkstd..Z"
 
"tBodyGyrostd..X"
 
"tBodyGyrostd..Y"
 
"tBodyGyrostd..Z"
 
"tBodyGyroJerkstd..X"
 
"tBodyGyroJerkstd..Y"
 
"tBodyGyroJerkstd..Z"
 
"tBodyAccMagstd.."
 
"tGravityAccMagstd.."
 
"tBodyAccJerkMagstd.."
 
"tBodyGyroMagstd.."
 
"tBodyGyroJerkMagstd.."
 
"fBodyAccstd..X"
 
"fBodyAccstd..Y"
 
"fBodyAccstd..Z"
 
"fBodyAccJerkstd..X"
 
"fBodyAccJerkstd..Y"
 
"fBodyAccJerkstd..Z"
 
"fBodyGyrostd..X"
 
"fBodyGyrostd..Y"
 
"fBodyGyrostd..Z"
 
"fBodyAccMagstd.."
 
"fBodyBodyAccJerkMagstd.."
 
"fBodyBodyGyroMagstd.."
 
"fBodyBodyGyroJerkMagstd.."