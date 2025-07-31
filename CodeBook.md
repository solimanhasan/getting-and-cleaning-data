# CodeBook

## 1. Introduction
The dataset `tidy_dataset.txt` was created as part of the Coursera course "Getting and Cleaning Data". It is based on the UCI Human Activity Recognition Using Smartphones Data Set. The tidy data contains the average of each variable for each activity and each subject.

## 2. Variables

- **subject**: Identifier of the subject (1–30)
- **activity**: Activity performed (e.g., WALKING, STANDING)
- The remaining columns are the mean of various measurements, such as:
  - `tBodyAcc-mean()-X`
  - `tBodyAcc-std()-Y`
  - `tGravityAcc-mean()-Z`
  - ...
  (List a few examples; you don't need to copy them all.)

Each variable is numeric and represents an average value of a signal.

## 3. Transformation and Cleaning Steps

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation.
3. Used descriptive activity names.
4. Labeled the dataset with descriptive variable names.
5. Created a second, independent tidy data set with the average of each variable for each activity and each subject.

## 4. Data Summary

- Rows: 180 (30 subjects × 6 activities)
- Columns: 68
- Format: Text file with tabular structure, saved as `tidy_dataset.txt`.
