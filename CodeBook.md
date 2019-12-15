## Code Book

The data utilized in the project were collected from the accelerometers from the Samsung Galaxy S smartphone used in an experiment.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The dataset includes the following files:
=========================================

- 'features.txt': List of all features.

- 'X_train.txt': Training set with 561 variables.

- 'y_train.txt': Training labels denoting activity type.

- 'X_test.txt': Test set with 561 variables.

- 'y_test.txt': Test labels denoting activity type.

- 'subject_train.txt': Labels of test subject for each observation within training set

- 'subject_test.txt': Labels of test subject for each observation within test set
