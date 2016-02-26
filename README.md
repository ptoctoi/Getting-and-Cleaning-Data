How the script run_analysis.R works
There is the following process that this scrip does:
a) Read files of data:
	a.1)activity_labels.txt
	a.2)features.txt
	a.3)Train files
		X_train.txt
		Y_train.txt
		subject_train.txt
	a.4)Test files
		X_test.txt
		Y_test.txt
		subject_test.txt

b)Merge all data (train and test) of the subject with the activity description(activity_labels)

c)Filter only columns of the data that are "mean()" and "std()"

d)Filter data only with columns that was found in c)

e)Clean "-" of the data

f) Union the data with the descriptions

g)Change names of variable Activity

h)Create data frame of text "Train" and "Test"

i)Union data in order to indicate "Train" or "Test"

j)Combine data of train and test

k) Generate mean by subject and activity

l) write final data to disk
