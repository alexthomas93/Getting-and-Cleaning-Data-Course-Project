# Code Book
This code book provides an overview of the `tidy.txt` dataset.
The dataset is space-separated contains 180 rows and 68 columns.
The `README.md` file explains how this dataset was produced.

## Experimental Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, waking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'Measurements' section below for more details. 

## Variables

### `activity`
Factor variable that identifies the activity.
Has six levels: laying, sitting, standing, walking, walking downstairs, and walking upstairs. 

### `subject`
Integer variable that identifies the subject.
Takes values from 1 to 30.

### Measurements
The remaining variables are derived from the accelerometer and gyroscope 3-axial raw signals.
These time domain signals were captured at a constant rate of 50 Hz.
Variables beginning with `time` were derived from these signals.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Variables beginning with `timeBodyAcc` and `timeGravityAcc` were derived form these signals.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Variables beginning with `timeBodyAccJerk` and `timeBodyGyroJerk` were derived from these signals.
Additionally the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
Variables beginning with `timeBodyAccMag`, `timeGravityAccMag`, `timeBodyAccJerkMag`, `timeBodyGyroMag`, `timeBodyGyroJerkMag`) were derived from these signals.
Finally a Fast Fourier Transform (FFT) was applied to some of these signals to produce frequency domain signals.
Variables beginning with `freqBodyAcc`, `freqBodyAccJerk`, `freqBodyGyro`, `freqBodyAccJerkMag`, `freqBodyGyroMag`, `freqBodyGyroJerkMag` were derived from these signals.
Variables ending in `X`, `Y`, or `Z` denote 3-axial signals in the X, Y and Z directions.
The variables containing `Mean` or `Std` denote the mean and standard deviation of signals.
All these variables are numeric, and were normalised to be between -1 and 1.
The variables are as follows:
- `timeBodyAccMeanX`
- `timeBodyAccMeanY`
- `timeBodyAccMeanZ`
- `timeBodyAccStdX`
- `timeBodyAccStdY`
- `timeBodyAccStdZ`
- `timeGravityAccMeanX`
- `timeGravityAccMeanY`
- `timeGravityAccMeanZ`
- `timeGravityAccStdX`
- `timeGravityAccStdY`
- `timeGravityAccStdZ`
- `timeBodyAccJerkMeanX`
- `timeBodyAccJerkMeanY`
- `timeBodyAccJerkMeanZ`
- `timeBodyAccJerkStdX`
- `timeBodyAccJerkStdY`
- `timeBodyAccJerkStdZ`
- `timeBodyGyroMeanX`
- `timeBodyGyroMeanY`
- `timeBodyGyroMeanZ`
- `timeBodyGyroStdX`
- `timeBodyGyroStdY`
- `timeBodyGyroStdZ`
- `timeBodyGyroJerkMeanX`
- `timeBodyGyroJerkMeanY`
- `timeBodyGyroJerkMeanZ`
- `timeBodyGyroJerkStdX`
- `timeBodyGyroJerkStdY`
- `timeBodyGyroJerkStdZ`
- `timeBodyAccMagMean`
- `timeBodyAccMagStd`
- `timeGravityAccMagMean`
- `timeGravityAccMagStd`
- `timeBodyAccJerkMagMean`
- `timeBodyAccJerkMagStd`
- `timeBodyGyroMagMean`
- `timeBodyGyroMagStd`
- `timeBodyGyroJerkMagMean`
- `timeBodyGyroJerkMagStd`
- `freqBodyAccMeanX`
- `freqBodyAccMeanY`
- `freqBodyAccMeanZ`
- `freqBodyAccStdX`
- `freqBodyAccStdY`
- `freqBodyAccStdZ`
- `freqBodyAccJerkMeanX`
- `freqBodyAccJerkMeanY`
- `freqBodyAccJerkMeanZ`
- `freqBodyAccJerkStdX`
- `freqBodyAccJerkStdY`
- `freqBodyAccJerkStdZ`
- `freqBodyGyroMeanX`
- `freqBodyGyroMeanY`
- `freqBodyGyroMeanZ`
- `freqBodyGyroStdX`
- `freqBodyGyroStdY`
- `freqBodyGyroStdZ`
- `freqBodyAccMagMean`
- `freqBodyAccMagStd`
- `freqBodyBodyAccJerkMagMean`
- `freqBodyBodyAccJerkMagStd`
- `freqBodyBodyGyroMagMean`
- `freqBodyBodyGyroMagStd`
- `freqBodyBodyGyroJerkMagMean`
- `freqBodyBodyGyroJerkMagStd`