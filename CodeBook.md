##Getting and Cleaning Data Project Codebook:

#Data Dictionary.

Decoding the variable names:
* Time domain signals (prefix 'time') were captured at a constant rate of 50 Hz.
* Frequency domain signals (prefix ‘fft’) where Fast Fourier Transform (FFT) was applied.
* “body” indicates body acceleration signal.
* “gravity” indicates a gravity acceleration signal.
* “acceleration” indicates an acceleration signal.
* “gyroscope” is the gyroscope measure.
* “jerksignal” indicates the jerk signal derived from acceleration and angular velocity.
* “magnitude” is the magnitude of these three-dimensional signals (XYZ) were calculated using the Euclidean norm.
* “mean” is the mean 
* “std” is the standard deviation*'-X’, ‘-Y’ ‘-Z' is used to denote 3-axial signals in the X, Y and Z directions.
* “Subject” is the subject of the measurements
* “Activity” is the activity being performed when readings taken

#Variables:
* Subject              
* Activity
* time.body.acceleration.mean.X              
* time.body.acceleration.mean.Y
* time.body.acceleration.mean.Z             
* time.body.acceleration.std.X  
* time.body.acceleration.std.Y
* time.body.acceleration.std.Z  
* time.gravity.acceleration.mean.X         
* time.gravity.acceleration.mean.Y          
* time.gravity.acceleration.mean.Z          
* time.gravity.acceleration.std.X 
* time.gravity.acceleration.std.Y     
* time.gravity.acceleration.std.Z
* time.body.acceleration.jerksignal.mean.X        
* time.body.acceleration.jerksignal.mean.Y
* time.body.acceleration.jerksignal.mean.Z        
* time.body.acceleration.jerksignal.std.X
* time.body.acceleration.jerksignal.std.Y              
* time.body.acceleration.jerksignal.std.Z
* time.body.gyroscope.mean.X                
* time.body.gyroscope.mean.Y 
* time.body.gyroscope.mean.Z
* time.body.gyroscope.std.X      
* time.body.gyroscope.std.Y       
* time.body.gyroscope.std.Z
* time.body.gyroscope.jerksignal.mean.X
* time.body.gyroscope.jerksignal.mean.Y
* time.body.gyroscope.jerksignal.mean.Z
* time.body.gyroscope.jerksignal.std.X
* time.body.gyroscope.jerksignal.std.Y 
* time.body.gyroscope.jerksignal.std.Z
* time.body.acceleration.magnitude.mean          
* time.body.acceleration.magnitude.std
* time.gravity.acceleration.magnitude.mean      
* time.gravity.acceleration.magnitude.std
* time.body.acceleration.jerksignal.magnitude.mean
* time.body.acceleration.jerksignal.magnitude.std          
* time.body.gyroscope.magnitude.mean
* time.body.gyroscope.magnitude.std   
* time.body.gyroscope.jerksignal.magnitude.mean
* time.body.gyroscope.jerksignal.magnitude.std              
* fft.body.acceleration.mean.X
* fft.body.acceleration.mean.Y
* fft.body.acceleration.mean.Z 
* fft.body.acceleration.std.X
* fft.body.acceleration.std.Y       
* fft.body.acceleration.std.Z
* fft.body.acceleration.jerksignal.mean.X             
* fft.body.acceleration.jerksignal.mean.Y
* fft.body.acceleration.jerksignal.mean.Z             
* fft.body.acceleration.jerksignal.std.X
* fft.body.acceleration.jerksignal.std.Y  
* fft.body.acceleration.jerksignal.std.z
* fft.body.gyroscope.mean.X     
* fft.body.gyroscope.mean.Y     
* fft.body.gyroscope.mean.Z
* fft.body.gyroscope.std.X          
* fft.body.gyroscope.std.Y          
* fft.body.gyroscope.std.Z
* fft.body.acceleration.magnitude.mean               


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropyar
* Coeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two 
* signalsmaxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal bands
* Energy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* tgravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
