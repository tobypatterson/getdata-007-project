# Overview

This repository hosts files for Project #1 of Getting and Cleaning Data.

https://class.coursera.org/getdata-007

# Requirements

Two non-standard libraries are required to execute the script.
* reshape2: https://github.com/hadley/reshape
* plyr: http://plyr.had.co.nz/

If either of these libraries are not installed, execution of the script is stopped.  You will need to install these libraries prior to completely running the script.

# Running the code

Before running the analysis script, one must download the source datafile from [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and place all data files into a `data/` directory of the current directory.

The [CodeBook.md] describes the variables, the data, and the work that has been performed to clean up the data.

The file [run_analysis.R] can be loaded into an R interpretor such as Rstudio, and executed without any parameters. The script outputs a file [output.txt], which is the result of the analysis.