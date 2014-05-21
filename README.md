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

The dataset includes the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* '/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Script Explanation

Assumptions
*reshape2 package is installed (needed for melt and dcast)
*only those variables specifically related to mean and standard deviation are retained.  Data for meanFreq are not kept as they are weighted averages of the frequency components to obtain a mean frequency, and not the mean itself.

Logic
*SET ENVIRONMENTAL/DIRECTORY INFORMATION
*READ DATA IN
*MERGE ALL DATA TOGETHER
  *Merge Training data with Subject info for training data
  *Merge Test data with subject info for test data
  *Lastly merge the training and test data together
*CLEAN and RESET COLUMN HEADERS to better describe the observation
*CLEAN THE DATA
*Remove all observations not related to mean or standard deviation
*CLEAN THE ACTIVITY DATA IN THE FILE
  *Set all activities to lowercase letters
  *Replace number representation with actual activity description
*CALCULATE AVERAGE/MEAN FOR ALL GROUPINGS (subject+activity)
*WRITE THE TIDY DATA as .txt and .csv fiels in the working directory.


##Notes
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

For more information about this dataset contact: activityrecognition@smartlab.ws

##License info

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


