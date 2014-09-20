##############################################################
#
# A function to melt down information about mobile electronic sensor readings
#
# Requires reshape2, plyr
# Presumes data files have been downloaded into a ./data/ directory
#
# Project: Getting and Cleaning Data Course Project #1
# Class:   Johns Hopkins Getting and Cleaning Data (getdata-007)
# URL:     https://class.coursera.org/getdata-007/human_grading
# Author:  Toby Patterson
# Date:    September 2014
#
##############################################################

# Check if we have all required packages
packages = installed.packages()[,1] 

# Requires reshape2
if (! 'reshape2' %in% packages) stop('Package "reshape2" not installed')
library(reshape2)

# Requires reshape2
if (! 'plyr' %in% packages) stop('Package "plyr" not installed')
library(plyr)

#
# A Utility function to read a datafile
#
# @param  file File to read into a table
#
# @return Dataframe containing table data
#
readTableData = function(file,path='./data',...) {
  path = paste(path, file, sep="/")
  
  # Make sure that the file exists
  if (!file.exists(path)) stop(paste('The file does not exist: ',path))
  
  read.table(path, row.names=NULL,...)
}

# Read the base data files
data <- rbind(
  readTableData('test/x_test.txt'),
  readTableData('train/x_train.txt')
);

# Merges the training and the test sets to create one data set.
# Append two additional columns of data using cbind() and rbind()
data <- cbind(
  data,
  # Type of test performed
  rbind(
    readTableData('test/y_test.txt',col.names=c('AID')),
    readTableData('train/y_train.txt',col.names=c('AID'))
  ),
  rbind(
    readTableData('test/subject_test.txt',col.names=c('SID')),
    readTableData('train/subject_train.txt',col.names=c('SID'))
  )
)


# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Use grepl() to filter the data by a list of featuers STD() and MEAN()
features <- readTableData('features.txt')
feature_matches <- grepl('(std|mean)\\(',features[,2])
data <- data[feature_matches]


# Uses descriptive activity names to name the activities in the data set
# Replace the activity IDs with the activity names, literally in the data
activities <- readTableData('activity_labels.txt',col.names=c('AID','Activity'),colClasses=c('numeric', 'character'))
#data$AID <- factor(data$AID,levels=activities$AID,labels=activities$Activity) # doesn't pass with transform
data$AID <- activities[match(data$AID, activities$AID),2]


# Appropriately labels the data set with descriptive variable names.
# Remove the paranthasis, and change other punctuation to dots
# ransform ^(t|f) to (Time|Frequency) respectfully
new_names <- features[feature_matches,][2]
new_names <- gsub('[()]+', '', new_names$V2)
new_names <- gsub('[[:punct:]]', '.', new_names)
new_names <- sub('^t', 'Time.', new_names)
new_names <- sub('^f', 'Frequency.', new_names)
names(data) <- c(new_names, 'Activity', 'Subject')


# From the data set in step 4, creates a second, independent tidy data set 
#  with the average of each variable for each activity and each subject.
# Melt down with reshape2 functions, then cast the data into a summary DF
melted <- melt(data, id=c("Subject","Activity"))
output <- dcast(melted, Subject+Activity ~ variable, mean)

# Output the data to a text file that can be uploaded
write.table(output, file='project_output.txt',row.name=FALSE)
