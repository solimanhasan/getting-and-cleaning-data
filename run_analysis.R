library(dplyr)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "dataset.zip")
unzip("dataset.zip")

path <- "UCI HAR Dataset"
x_train <- read.table(file.path(path, "train", "X_train.txt"))
y_train <- read.table(file.path(path, "train", "y_train.txt"))
subject_train <- read.table(file.path(path, "train", "subject_train.txt"))

x_test <- read.table(file.path(path, "test", "X_test.txt"))
y_test <- read.table(file.path(path, "test", "y_test.txt"))
subject_test <- read.table(file.path(path, "test", "subject_test.txt"))

features <- read.table(file.path(path, "features.txt"))
activities <- read.table(file.path(path, "activity_labels.txt"))

colnames(x_train) <- features[, 2]
colnames(x_test) <- features[, 2]
colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"
colnames(y_train) <- "activity"
colnames(y_test) <- "activity"
colnames(activities) <- c("activity", "activity_name")

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

mean_std_columns <- grep("-(mean|std)\\(\\)", features[, 2])

x_data <- x_data[, mean_std_columns]
names(x_data) <- gsub("\\()", "", features[mean_std_columns, 2])
names(x_data) <- gsub("-", "_", names(x_data))

full_data <- cbind(subject_data, y_data, x_data)

full_data <- merge(full_data, activities, by = "activity", all.x = TRUE)
full_data <- full_data %>%select(subject, activity_name, everything(), -activity)
tidy_data <- full_data %>%
  group_by(subject, activity_name) %>%
  summarise_all(mean)

write.table(tidy_data, "tidy_dataset.txt", row.name = FALSE)
