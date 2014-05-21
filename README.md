GettingCleaningDataProject
==========================

##Introduction to Experiment
www.smartlab.ws

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Additional information on the actual experiment can be find at the bottom of the ReadMe.MD

##Introduction to Experiment

The script provided (run_analysis.R) creates a tidy data set from “Human Activity Recognition Using Smartphone Data”.  The test and training data files are combined and (along with subject ID and activity) only the means of mean and standard deviations are retained in the final dataset, at the granularity of subject and their activity.  

##Assumptions

It is assumed that all data is unzipped and in the following directories within the current working directory:.
*UCI HAR Dataset
    *test
        *subject_test.txt
        *X_test.txt
        *y_test.txt
    *train
       *subject_train.txt
       *X_train.txt
       *y_train.txt
    *activity_labels.txt
    *features.txt
    *features_info.txt
    *README.txt

 All data in the “Inertial Signals” folder are ignored.
