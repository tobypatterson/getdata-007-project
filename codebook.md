# Obtaining the datafile

The original datafile can be obtained by downloading
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The unziped archive contains several files and directories.

* activity_labels.txt A factor of labels that indicate the type of test that a record had been recorded by (the y_ files).
* features.txt A factor describing the various types of test
* features_info.txt A description of the test methodologies and a description of the original data variables
* test/ A directory containing test data
* train/ A directory containing training data

# Assembling the data

The original data files were loaded and merged.  First, the main datasets were concatenated (X_test.txt and X_train.txt) sequentially.  Then the corresponding test type data files (Y_test.txt and Y_train.txt) were loaded, and their variables were appended adjacently to the main variables. Finally, data about the test subjects (subject_test.txt and subject_train.txt) were likewise appended adjacently to the data variables.

# Data Manipulation

Some modifications to the main dataset were main. Data relating to test types (the Y files) were changed from their numeric values to their text names, found in the reference file features.txt.  Variable names were also updated from their numeric positional values to human readable labels, found in the file features.txt.  Some of these labels were changed slightly to remove unnecessary punctuation.

Finally, all variables except those related to mean and standard deviation calculations were removed.

# Data Aggregation

The final stage of work involved transforming the data into their sums. Using the tests and subjects as reference, all other variables were aggregated into their mean values.  The resulting dataset consists of 180 observations and 68 variables within each.

# Data Reference

| Position       | Name                      | Data Type    | Description |
|:-------------- |:------------------------- |:------------ |:------------|
| 1 | Subject  | integer     | ID of the subject |
| 2 | Activity | string | Name of the activity |
| 3 | Time.BodyAcc.mean.X | float | Average mean value of Time.BodyAcc.mean.X |
| 4 | Time.BodyAcc.mean.Y | float | Average mean value of Time.BodyAcc.mean.Y |
| 5 | Time.BodyAcc.mean.Z | float | Average mean value of Time.BodyAcc.mean.Z |
| 6 | Time.BodyAcc.std.X | float | Average std value of Time.BodyAcc.std.X |
| 7 | Time.BodyAcc.std.Y | float | Average std value of Time.BodyAcc.std.Y |
| 8 | Time.BodyAcc.std.Z | float | Average std value of Time.BodyAcc.std.Z |
| 9 | Time.GravityAcc.mean.X | float | Average mean value of Time.GravityAcc.mean.X |
| 10 | Time.GravityAcc.mean.Y | float | Average mean value of Time.GravityAcc.mean.Y |
| 11 | Time.GravityAcc.mean.Z | float | Average mean value of Time.GravityAcc.mean.Z |
| 12 | Time.GravityAcc.std.X | float | Average std value of Time.GravityAcc.std.X |
| 13 | Time.GravityAcc.std.Y | float | Average std value of Time.GravityAcc.std.Y |
| 14 | Time.GravityAcc.std.Z | float | Average std value of Time.GravityAcc.std.Z |
| 15 | Time.BodyAccJerk.mean.X | float | Average mean value of Time.BodyAccJerk.mean.X |
| 16 | Time.BodyAccJerk.mean.Y | float | Average mean value of Time.BodyAccJerk.mean.Y |
| 17 | Time.BodyAccJerk.mean.Z | float | Average mean value of Time.BodyAccJerk.mean.Z |
| 18 | Time.BodyAccJerk.std.X | float | Average std value of Time.BodyAccJerk.std.X |
| 19 | Time.BodyAccJerk.std.Y | float | Average std value of Time.BodyAccJerk.std.Y |
| 20 | Time.BodyAccJerk.std.Z | float | Average std value of Time.BodyAccJerk.std.Z |
| 21 | Time.BodyGyro.mean.X | float | Average mean value of Time.BodyGyro.mean.X |
| 22 | Time.BodyGyro.mean.Y | float | Average mean value of Time.BodyGyro.mean.Y |
| 23 | Time.BodyGyro.mean.Z | float | Average mean value of Time.BodyGyro.mean.Z |
| 24 | Time.BodyGyro.std.X | float | Average std value of Time.BodyGyro.std.Z |
| 25 | Time.BodyGyro.std.Y | float | Average std value of Time.BodyGyro.std.Y |
| 26 | Time.BodyGyro.std.Z | float | Average std value of Time.BodyGyro.std.Z |
| 27 | Time.BodyGyroJerk.mean.X | float | Average mean value of Time.BodyGyroJerk.mean.X |
| 28 | Time.BodyGyroJerk.mean.Y | float | Average mean value of Time.BodyGyroJerk.mean.Y |
| 29 | Time.BodyGyroJerk.mean.Z | float | Average mean value of Time.BodyGyroJerk.mean.Z |
| 30 | Time.BodyGyroJerk.std.X | float | Average std value of Time.BodyGyroJerk.std.X |
| 31 | Time.BodyGyroJerk.std.Y | float | Average std value of Time.BodyGyroJerk.std.Y |
| 32 | Time.BodyGyroJerk.std.Z | float | Average std value of Time.BodyGyroJerk.std.Z |
| 33 | Time.BodyAccMag.mean | float | Average mean value of Time.BodyAccMag.mean |
| 34 | Time.BodyAccMag.std | float | Average std value of Time.BodyAccMag.std |
| 35 | Time.GravityAccMag.mean | float | Average mean value of Time.GravityAccMag.mean |
| 36 | Time.GravityAccMag.std | float | Average std value of Time.GravityAccMag.std |
| 37 | Time.BodyAccJerkMag.mean | float | Average mean value of Time.BodyAccJerkMag.mean |
| 38 | Time.BodyAccJerkMag.std | float | Average std value of Time.BodyAccJerkMag.std |
| 39 | Time.BodyGyroMag.mean | float | Average mean value of  |
| 40 | Time.BodyGyroMag.std | float | Average std value of Time.BodyGyroMag.std |
| 41 | Time.BodyGyroJerkMag.mean | float | Average mean value of Time.BodyGyroJerkMag.mean |
| 42 | Time.BodyGyroJerkMag.std | float | Average std value of Time.BodyGyroJerkMag.std |
| 43 | Frequency.BodyAcc.mean.X | float | Average std value of Frequency.BodyAcc.mean.X |
| 44 | Frequency.BodyAcc.mean.Y | float | Average std value of Frequency.BodyAcc.mean.Y |
| 45 | Frequency.BodyAcc.mean.Z | float | Average mean value of Frequency.BodyAcc.mean.Z |
| 46 | Frequency.BodyAcc.std.X | float | Average std value of Frequency.BodyAcc.std.X |
| 47 | Frequency.BodyAcc.std.Y | float | Average mean value of Frequency.BodyAcc.std.Y  |
| 48 | Frequency.BodyAcc.std.Z | float | Average std value of Frequency.BodyAcc.std.Z |
| 49 | Frequency.BodyAccJerk.mean.X | float | Average mean value of Frequency.BodyAccJerk.mean.X |
| 50 | Frequency.BodyAccJerk.mean.Y | float | Average mean value of Frequency.BodyAccJerk.mean.Y |
| 51 | Frequency.BodyAccJerk.mean.Z | float | Average mean value of Frequency.BodyAccJerk.mean.Z |
| 52 | Frequency.BodyAccJerk.std.X | float | Average std value of Frequency.BodyAccJerk.std.X |
| 53 | Frequency.BodyAccJerk.std.Y | float | Average std value of Frequency.BodyAccJerk.std.Y |
| 54 | Frequency.BodyAccJerk.std.Z | float | Average std value of Frequency.BodyAccJerk.std.Z |
| 55 | Frequency.BodyGyro.mean.X | float | Average mean value of Frequency.BodyGyro.mean.X |
| 56 | Frequency.BodyGyro.mean.Y | float | Average mean value of Frequency.BodyGyro.mean.Y |
| 57 | Frequency.BodyGyro.mean.Z | float | Average mean value of Frequency.BodyGyro.mean.Z |
| 58 | Frequency.BodyGyro.std.X | float | Average std value of Frequency.BodyGyro.std.X |
| 59 | Frequency.BodyGyro.std.Y | float | Average std value of  |
| 60 | Frequency.BodyGyro.std.Z | float | Average std value of Frequency.BodyGyro.std.Z |
| 61 | Frequency.BodyAccMag.mean | float | Average mean value of Frequency.BodyAccMag.mean |
| 63 | Frequency.BodyAccMag.std | float | Average std value of Frequency.BodyAccMag.std |
| 64 | Frequency.BodyBodyAccJerkMag.mean | float | Average mean value of Frequency.BodyBodyAccJerkMag.mean |
| 65 | Frequency.BodyBodyAccJerkMag.std | float | Average std value of Frequency.BodyBodyAccJerkMag.std |
| 66 | Frequency.BodyBodyGyroMag.std | float | Average std value of Frequency.BodyBodyGyroMag.std |
| 67 | Frequency.BodyBodyGyroJerkMag.mean | float | Average mean value of Frequency.BodyBodyGyroJerkMag.mean |
| 68 | Frequency.BodyBodyGyroJerkMag.std | float | Average std value of Frequency.BodyBodyGyroJerkMag.std |