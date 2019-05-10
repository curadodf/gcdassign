#####STEP 1: Merges the training and the test sets to create one data set.

##load test set
xtest <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
subjecttest <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")
ytest <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")

#load train set
subjecttrain <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")
xtrain <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
ytrain <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")

#features
features <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"", comment.char="")

#activity labels
activitylabels <- read.table("C:/Users/danif/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")

###Tagging the test and train data sets
colnames(xtrain) = features[,2]
colnames(ytrain) = "activityid"
colnames(subjecttrain) = "subjectid"

colnames(xtest) = features[,2]
colnames(ytest) = "activityid"
colnames(subjecttest) = "subjectid"

colnames(activitylabels) <- c('activityid','activitytype')

###merging datasets
mergetest <- cbind(subjecttest, ytest, xtest)
mergetrain <- cbind(subjecttrain, ytrain, xtrain)
mergeall <- rbind(mergetest, mergetrain)

#####STEP2: Extracts only the measurements on the mean and standard deviation for each measurement.
colNames = colnames(mergeall)
meanstd = (grepl("activityid" , colNames) | grepl("subjectid" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames))
subsetmeanstd <- mergeall[ , meanstd == TRUE]


#####STEP3: Uses descriptive activity names to name the activities in the data set

# applying new labels as column names
colnames(subsetmeanstd)<- colnames 

#name activities in dataset
activitynames = merge(subsetmeanstd, activitylabels, by='activityid', all.x=TRUE)

#####STEP4: Appropriately labels the data set with descriptive variable names.

# create vector of column names
colnames <- colnames(subsetmeanstd)
# remove characters other than letters
colnames <- gsub("[\\(\\)-]", "", colnames)
# replace abbreviations
colnames <- gsub("^f", "frequencyDomain", colnames)
colnames <- gsub("^t", "timeDomain", colnames)
colnames <- gsub("Acc", "Accelerometer", colnames)
colnames <- gsub("Gyro", "Gyroscope", colnames)
colnames <- gsub("Mag", "Magnitude", colnames)
colnames <- gsub("Freq", "Frequency", colnames)
colnames <- gsub("mean", "Mean", colnames)
colnames <- gsub("std", "StandardDeviation", colnames)
colnames <- gsub("BodyBody", "Body", colnames)

#####STEP 5:From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#average of each variable for each activity and each subject
tidyset <- aggregate(. ~subjectid + activityid, activitynames, mean)
tidyset <- tidyset[order(tidyset$subjectid, tidyset$activityid),]

#export
write.table(tidyset, "tidyset.txt", row.names = FALSE, 
            quote = FALSE)
