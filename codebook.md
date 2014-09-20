# Obtaining the datafile

The original datafile can be obtained by downloading
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The unziped archive contains several files and directories.

* activity_labels.txt A factor of labels that indicate the type of test that a record had been recorded by (the y_ files).
* features.txt A factor describing the various types of test
* features_info.txt A description of the test methodologies and a description of the original data variables
* test/ A directory containing test data
* train/ A directory containing trainging data

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
