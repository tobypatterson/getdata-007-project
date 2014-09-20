# Overview

This repository hosts files for Project #1 of Getting and Cleaning Data, https://class.coursera.org/getdata-007.  

The [CodeBook](codebook.md) describes the variables, the data, and the work that has been performed to tidy the data.

## Requirements

Two non-standard libraries are required to execute the script.
* reshape2: https://github.com/hadley/reshape
* plyr: http://plyr.had.co.nz/

If either of these libraries are not installed, execution of the script will stop, and one should install these libraries before trying again. The script will not install any libraries.

## Running the code

Before running the analysis script, one must download the source datafile from [UCI](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and place all data files into a `data/` directory of the current directory.

## Running the Code

The file [run_analysis.R](run_analysis.R) can be loaded into an R interpretor such as Rstudio, and executed without any parameters. The script outputs a file [project_output.txt](project_output.txt), which is the result of the analysis.
