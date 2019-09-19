# 1. Merge the training and the test sets to create one data set

# Load the feature names
features <- read.table("features.txt")$V2
# Load the training features using the feature names as the column names
X_train <- read.table("train/X_train.txt", col.names = features)
# Load the activity column of the training data
y_train <- read.table("train/y_train.txt", col.names = "activity")
# Load the subject column of the training data
subject_train <- read.table("train/subject_train.txt", col.names = "subject")
# Merge the training data into one dataframe
train <- cbind(X_train, y_train, subject_train)
# Load the test features using the feature names as the column names
X_test <- read.table("test/X_test.txt", col.names = features)
# Load the activity column of the test data
y_test <- read.table("test/y_test.txt", col.names = "activity")
# Load the subject column of the test data
subject_test <- read.table("test/subject_test.txt", col.names = "subject")
# Merge the test data into one dataframe
test <- cbind(X_test, y_test, subject_test)
# Merge the train and test datasets
data <- rbind(train, test)


# 2. Extract only the measurements on the mean and standard deviation for each measurement

cols <- make.names(c(grep(pattern = "mean\\(\\)|std\\(\\)", features, value = TRUE), "activity", "subject"))
data <- data[cols]


# 3. Use descriptive activity names to name the activities in the data set

# Load the table that maps the activity number e.g. 1 to the activity name e.g. WALKING
activity_labels <- gsub("_", " ", tolower(read.table("activity_labels.txt")$V2))
# Replace the activity numbers in the data with activity names
data$activity <- factor(activity_labels[data$activity], ordered = FALSE)


# 4. Label the data set with descriptive variable names

cnames <- colnames(data)
# Remove dots from the column names
cnames <- gsub("\\.", "", cnames)
# Capitalise 'mean' and 'std' in column names
cnames <- sub("mean", "Mean", cnames)
cnames <- sub("std", "Std", cnames)
# Replace 't' and 'f' with 'time' and 'freq' at the beginning of column names
cnames <- sub("^t", "time", cnames)
cnames <- sub("^f", "freq", cnames)
colnames(data) <- cnames


# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject

tidy <- aggregate(. ~ activity + subject, data = data, drop = TRUE, FUN = mean, simplify = TRUE)

write.table(tidy, "tidy.txt", row.names = FALSE)
