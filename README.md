# Getting and Cleaning Data - Course Project

## Overview

This project is part of the *Getting and Cleaning Data* course on Coursera. The goal is to clean and prepare a dataset collected from the accelerometers of smartphones, and to create a tidy dataset for later analysis.

The original data comes from the [UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones).

## Files in This Project

- `run_analysis.R`: The script that performs the data cleaning and outputs a tidy dataset.
- `tidy_data.txt`: The final tidy dataset output.
- `CodeBook.md`: Describes the variables, the data, and the transformations performed.
- `README.md`: This file, explaining the project structure and contents.

## Steps Performed in run_analysis.R

1. **Download and unzip the dataset** if it doesn't exist locally.
2. **Load the training and test datasets**, including the measurements, labels, and subject identifiers.
3. **Assign descriptive column names** using the `features.txt` file.
4. **Merge the training and the test datasets** into one full dataset.
5. **Extract only the measurements on the mean and standard deviation** for each measurement.
6. **Use descriptive activity names** to name the activities in the dataset.
7. **Label the dataset with descriptive variable names**, replacing abbreviations.
8. **Create a second, independent tidy dataset** with the average of each variable for each activity and each subject.
9. **Save the tidy dataset** to a text file `tidy_data.txt`.

## How to Run

Simply source the `run_analysis.R` file in R or RStudio. The script will download, clean, and generate the tidy dataset.

```r
source("run_analysis.R")
