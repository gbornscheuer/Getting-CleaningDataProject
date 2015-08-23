## Code book of Data Set resultado.txt product of R script run_analysis.R

### Background 

The resultado dataset is obtained from the UCI HAR Data Set 
(see README.md for source and license information).

It is highly recommnended that before you continue to read this code book, yo read the 
documentation of the experiment that produced the data that is the input to the project
of the course. The documentation is available in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

resultado.txt dataset was made by the following steps:

1. Joining the datasets obtained from the training and the test subjects. 

2. Extracting, according to the project instructions, the measurements on the mean and 
standard deviation. 

3. Replacing the encoded activities (files: y_train.txt and y_test.txt) by their names (features file):
"LAYING!, "SITTING", "STANDING", "WALKING", "WALKING UPSTAIRS", "WALKING DOWNSTAIRS".

4. Computing mean for each activity and each person (subject).

5. Loading as a text file created with write.table() using row.name=FALSE, according to project 
instructions. This file is named: resultado.txt

### Variables names and description

The tidy resultado.txt file, has six rows (one for each activity) for every subject participating
in the experinment (30 subjects).
 
The file resulado.txt can be read into R using 
read.table("resultado.txt", header = TRUE)

Exceptionally, in this case, you don't have to worry for 'NA' values 

Data Set resultado description

Name: resultado
Created by: run_analysis.R on Friday Augost 21 2015
Codebook: codebook.md

#### Variables names

*1:  "subject".
*2:  "activity".
*3:  "mean.by.activity:tBody.accelerometer-mean()-X".
*4:  "mean.by.activity:tBody.accelerometer-mean()-Y".
*5:  "mean.by.activity:tBody.accelerometer-mean()-Z".
*6:  "mean.by.activity:tGravity.accelerometer-mean()-X".
*7:  "mean.by.activity:tGravity.accelerometer-mean()-Y".
*8:  "mean.by.activity:tGravity.accelerometer-mean()-Z".
*9:  "mean.by.activity:tBody.accelerometerJerk-mean()-X".
*10: "mean.by.activity:tBody.accelerometerJerk-mean()-Y".
*11: "mean.by.activity:tBody.accelerometerJerk-mean()-Z".
*12: "mean.by.activity:tBody.gyroscope-mean()-X".
*13: "mean.by.activity:tBody.gyroscope-mean()-Y".
*14: "mean.by.activity:tBody.gyroscope-mean()-Z".
*15: "mean.by.activity:tBody.gyroscopeJerk-mean()-X".
*16: "mean.by.activity:tBody.gyroscopeJerk-mean()-Y".
*17: "mean.by.activity:tBody.gyroscopeJerk-mean()-Z".
*18: "mean.by.activity:tBody.accelerometer.magnitude-mean()".
*19: "mean.by.activity:tGravity.accelerometer.magnitude-mean()".
*20: "mean.by.activity:tBody.accelerometerJerk.magnitude-mean()".
*21: "mean.by.activity:tBody.gyroscope.magnitude-mean()".
*22: "mean.by.activity:tBody.gyroscopeJerk.magnitude-mean()".
*23: "mean.by.activity:fBody.accelerometer-mean()-X".
*24: "mean.by.activity:fBody.accelerometer-mean()-Y".
*25: "mean.by.activity:fBody.accelerometer-mean()-Z".
*26: "mean.by.activity:fBody.accelerometer-meanFreq()-X".
*27: "mean.by.activity:fBody.accelerometer-meanFreq()-Y".
*28: "mean.by.activity:fBody.accelerometer-meanFreq()-Z".
*29: "mean.by.activity:fBody.accelerometerJerk-mean()-X".
*30: "mean.by.activity:fBody.accelerometerJerk-mean()-Y".
*31: "mean.by.activity:fBody.accelerometerJerk-mean()-Z".
*32: "mean.by.activity:fBody.accelerometerJerk-meanFreq()-X".
*33: "mean.by.activity:fBody.accelerometerJerk-meanFreq()-Y".
*34: "mean.by.activity:fBody.accelerometerJerk-meanFreq()-Z".
*35: "mean.by.activity:fBody.gyroscope-mean()-X".
*36: "mean.by.activity:fBody.gyroscope-mean()-Y".
*37: "mean.by.activity:fBody.gyroscope-mean()-Z".
*38: "mean.by.activity:fBody.gyroscope-meanFreq()-X".
*39: "mean.by.activity:fBody.gyroscope-meanFreq()-Y".
*40: "mean.by.activity:fBody.gyroscope-meanFreq()-Z".
*41: "mean.by.activity:fBody.accelerometer.magnitude-mean()".
*42: "mean.by.activity:fBody.accelerometer.magnitude-meanFreq()".
*43: "mean.by.activity:fBodyBody.accelerometerJerk.magnitude-mean()".
*44: "mean.by.activity:fBodyBody.accelerometerJerk.magnitude-meanFreq()".
*45: "mean.by.activity:fBodyBody.gyroscope.magnitude-mean()".
*46: "mean.by.activity:fBodyBody.gyroscope.magnitude-meanFreq()".
*47: "mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-mean()".
*48: "mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-meanFreq()".
*49: "mean.by.activity:tBody.accelerometer-std()-X".
*50: "mean.by.activity:tBody.accelerometer-std()-Y".
*51: "mean.by.activity:tBody.accelerometer-std()-Z".
*52: "mean.by.activity:tGravity.accelerometer-std()-X".
*53: "mean.by.activity:tGravity.accelerometer-std()-Y".
*54: "mean.by.activity:tGravity.accelerometer-std()-Z".
*55: "mean.by.activity:tBody.accelerometerJerk-std()-X".
*56: "mean.by.activity:tBody.accelerometerJerk-std()-Y".
*57: "mean.by.activity:tBody.accelerometerJerk-std()-Z".
*58: "mean.by.activity:tBody.gyroscope-std()-X".
*59: "mean.by.activity:tBody.gyroscope-std()-Y".
*60: "mean.by.activity:tBody.gyroscope-std()-Z".
*61: "mean.by.activity:tBody.gyroscopeJerk-std()-X".
*62: "mean.by.activity:tBody.gyroscopeJerk-std()-Y".
*63: "mean.by.activity:tBody.gyroscopeJerk-std()-Z".
*64: "mean.by.activity:tBody.accelerometer.magnitude-std()".
*65: "mean.by.activity:tGravity.accelerometer.magnitude-std()".
*66: "mean.by.activity:tBody.accelerometerJerk.magnitude-std()".
*67: "mean.by.activity:tBody.gyroscope.magnitude-std()". 
*68: "mean.by.activity:tBody.gyroscopeJerk.magnitude-std()".
*69: "mean.by.activity:fBody.accelerometer-std()-X".
*70: "mean.by.activity:fBody.accelerometer-std()-Y".
*71: "mean.by.activity:fBody.accelerometer-std()-Z".
*72: "mean.by.activity:fBody.accelerometerJerk-std()-X".
*73: "mean.by.activity:fBody.accelerometerJerk-std()-Y".
*74: "mean.by.activity:fBody.accelerometerJerk-std()-Z" .
*75: "mean.by.activity:fBody.gyroscope-std()-X". 
*76: "mean.by.activity:fBody.gyroscope-std()-Y".
*77: "mean.by.activity:fBody.gyroscope-std()-Z". 
*78: "mean.by.activity:fBody.accelerometer.magnitude-std()".
*79: "mean.by.activity:fBodyBody.accelerometerJerk.magnitude-std()" .
*80: "mean.by.activity:fBodyBody.gyroscope.magnitude-std()".
*81: "mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-std()".

The "t" and "f" at the beginning of the original name, after the prefix "mean.by.activity" stands for 
"t" to denote time anf "f" indicate frequency domain signals.

Samsung Data Set Source

Input data from zip file 'UCI HAR Dataset.zip' downloaded from the UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/
Date downloaded 17-08-2015

### License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International 
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the 
authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
