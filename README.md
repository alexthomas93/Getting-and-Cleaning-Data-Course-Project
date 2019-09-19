# Getting and Cleaning Data Course Project
This is the final project of the Getting and Cleaning Data Coursera course.
The purpose of this project is to clean the UCI HAR dataset http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
To clean the dataset extract its files into the project directory then run the `run_analysis.R` script.
The `run_analysis.R` performs the following five operations on the dataset:
1. The training and test datasets are merged into a single dataset.
2. All measurements are dropped except those that are the mean or standard deviation of a signal. 
This does not include the measurements obtained through averaging the signals in a signal window sample.
3. The activity numbers in the data are replaced with descriptive activity names e.g. '1' with 'walking'.
4. The columns of the dataset are replaced with descriptive names e.g. 'tBodyAcc-mean()-X' with 'timeBodyAccMeanX'.
5. Averages every variable for each activity and subject pair.

The resulting tidy dataset is saved to a file called `tidy.txt`.