## Code book of Data Set resultado.txt product of R script run_analysis.R

### Background and Complementary Information

The resultado dataset is obtained from the UCI HAR Data Set (see README.md for source and license information).

The remainder of this document we will refer to the UCI HAR dataset as the Samsung data set.

Users of newdataset should first read the Samsung data set documentation to familiarize 
themselves with the experimental study design, and the measurement, computation and data
structuring of the Samsung data from which newdataset derives.

resultado.txt dataset was made by the following steps:

Merging the Samsung training and the test sets to create one data set. 
The Samsung training and test sets are fully consistent, they simply differ on the levels 
recorded for variable 'subject', as the experiment subjects were randomly divided into two groups, 
and performed the same activities.
Extracting only the measurements on the mean and standard deviation of each Samsung measurement 
into and intermediate data set.
Replacing the intermediate levels of factor variable 'activity' with descriptive activity names.
Labelling the intermediate variables with descriptive names.
Averaging each intermediate variable for each activity and each person (subject).
Saving and documenting the resulting tidy data set as this newdataset.
Variables

Measured variables of the Samsung experiment were summarized into averages of means and 
standard deviations of the measurements. Thus newdataset variables are continuous, numeric values 
(no associated unit of measurement). Two additional newdataset ordinal variables (subject id, activity)
 identify the subjects and the activities that they were requested to perform for the Samsung experiment.

The tidy newdataset file, newdataset.txt, includes all values of all variables. 
You can read the file into R efficiently with:

  read.table(newdataset.txt, comment.char="", header=TRUE)
The variable (column) names of newdataset are very long, average length = 66.7, in an attempt to make 
them self-describing (per project instructions). If you need to do extensive computation work with 
newdataset you may want to shorten the names.

There are no 'NA' values in newdataset.

Reproducibility

You can reproduce newdataset from the Samsung data set by running script run_analysis.R. 
See file README.md for further information. See also file output.of.run_analysis.txt for a trace 
of the most recent run of the R script file. Both run_analysis.R and output.of.run_analysis.txt 
display instructions on how to run the script.

Data Set Card

Name: resultado
Created by: run_analysis.R on Friday Augost 21 2015
Codebook: codebook.md
ReadMe: README.md (this file)
File: ./newdataset.txt
Table size: 180 by 81
Variables

1: "subject"
2: "activity"
3: "mean.by.activity:tBody.accelerometer-mean()-X"
4: "mean.by.activity:tBody.accelerometer-mean()-Y" 
5: "mean.by.activity:tBody.accelerometer-mean()-Z"
6: "mean.by.activity:tGravity.accelerometer-mean()-X"
7: "mean.by.activity:tGravity.accelerometer-mean()-Y"
8: "mean.by.activity:tGravity.accelerometer-mean()-Z"
9: "mean.by.activity:tBody.accelerometerJerk-mean()-X"
10:"mean.by.activity:tBody.accelerometerJerk-mean()-Y"
11:"mean.by.activity:tBody.accelerometerJerk-mean()-Z"
12:"mean.by.activity:tBody.gyroscope-mean()-X"
13:"mean.by.activity:tBody.gyroscope-mean()-Y"
14:"mean.by.activity:tBody.gyroscope-mean()-Z"
15:"mean.by.activity:tBody.gyroscopeJerk-mean()-X"
16:"mean.by.activity:tBody.gyroscopeJerk-mean()-Y"
17:"mean.by.activity:tBody.gyroscopeJerk-mean()-Z"
18:"mean.by.activity:tBody.accelerometer.magnitude-mean()"
19:"mean.by.activity:tGravity.accelerometer.magnitude-mean()"
20:"mean.by.activity:tBody.accelerometerJerk.magnitude-mean()"
21:"mean.by.activity:tBody.gyroscope.magnitude-mean()"
22:"mean.by.activity:tBody.gyroscopeJerk.magnitude-mean()"
23:"mean.by.activity:fBody.accelerometer-mean()-X"
24:"mean.by.activity:fBody.accelerometer-mean()-Y"
25:"mean.by.activity:fBody.accelerometer-mean()-Z"
26:"mean.by.activity:fBody.accelerometer-meanFreq()-X"
27:"mean.by.activity:fBody.accelerometer-meanFreq()-Y"
28:"mean.by.activity:fBody.accelerometer-meanFreq()-Z"
29:"mean.by.activity:fBody.accelerometerJerk-mean()-X" 
30:"mean.by.activity:fBody.accelerometerJerk-mean()-Y"
31:"mean.by.activity:fBody.accelerometerJerk-mean()-Z"
32:"mean.by.activity:fBody.accelerometerJerk-meanFreq()-X"
33:"mean.by.activity:fBody.accelerometerJerk-meanFreq()-Y"
34:"mean.by.activity:fBody.accelerometerJerk-meanFreq()-Z"
35:"mean.by.activity:fBody.gyroscope-mean()-X"
36:"mean.by.activity:fBody.gyroscope-mean()-Y"
37:"mean.by.activity:fBody.gyroscope-mean()-Z"
38:"mean.by.activity:fBody.gyroscope-meanFreq()-X"
39:"mean.by.activity:fBody.gyroscope-meanFreq()-Y"
40:"mean.by.activity:fBody.gyroscope-meanFreq()-Z"
41:"mean.by.activity:fBody.accelerometer.magnitude-mean()"
42:"mean.by.activity:fBody.accelerometer.magnitude-meanFreq()"
43:"mean.by.activity:fBodyBody.accelerometerJerk.magnitude-mean()"
44:"mean.by.activity:fBodyBody.accelerometerJerk.magnitude-meanFreq()"
45:"mean.by.activity:fBodyBody.gyroscope.magnitude-mean()"
46:"mean.by.activity:fBodyBody.gyroscope.magnitude-meanFreq()" 
47:"mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-mean()"
48:"mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-meanFreq()"
49:"mean.by.activity:tBody.accelerometer-std()-X" 
50:"mean.by.activity:tBody.accelerometer-std()-Y" 
51:"mean.by.activity:tBody.accelerometer-std()-Z" 
52:"mean.by.activity:tGravity.accelerometer-std()-X" 
53:"mean.by.activity:tGravity.accelerometer-std()-Y" 
54:"mean.by.activity:tGravity.accelerometer-std()-Z" 
55:"mean.by.activity:tBody.accelerometerJerk-std()-X" 
56:"mean.by.activity:tBody.accelerometerJerk-std()-Y" 
57:"mean.by.activity:tBody.accelerometerJerk-std()-Z" 
58:"mean.by.activity:tBody.gyroscope-std()-X" 
59:"mean.by.activity:tBody.gyroscope-std()-Y" 
60:"mean.by.activity:tBody.gyroscope-std()-Z" 
61:"mean.by.activity:tBody.gyroscopeJerk-std()-X" 
62:"mean.by.activity:tBody.gyroscopeJerk-std()-Y" 
63:"mean.by.activity:tBody.gyroscopeJerk-std()-Z" 
64:"mean.by.activity:tBody.accelerometer.magnitude-std()" 
65:"mean.by.activity:tGravity.accelerometer.magnitude-std()" 
66:"mean.by.activity:tBody.accelerometerJerk.magnitude-std()" 
67:"mean.by.activity:tBody.gyroscope.magnitude-std()" 
68:"mean.by.activity:tBody.gyroscopeJerk.magnitude-std()" 
69:"mean.by.activity:fBody.accelerometer-std()-X" 
70:"mean.by.activity:fBody.accelerometer-std()-Y" 
71:"mean.by.activity:fBody.accelerometer-std()-Z" 
72:"mean.by.activity:fBody.accelerometerJerk-std()-X" 
73:"mean.by.activity:fBody.accelerometerJerk-std()-Y" 
74:"mean.by.activity:fBody.accelerometerJerk-std()-Z" 
75:"mean.by.activity:fBody.gyroscope-std()-X" 
76:"mean.by.activity:fBody.gyroscope-std()-Y" 
77:"mean.by.activity:fBody.gyroscope-std()-Z" 
78:"mean.by.activity:fBody.accelerometer.magnitude-std()" 
79:"mean.by.activity:fBodyBody.accelerometerJerk.magnitude-std()" 
80:"mean.by.activity:fBodyBody.gyroscope.magnitude-std()" 
81:"mean.by.activity:fBodyBody.gyroscopeJerk.magnitude-std()"


Variable 'activity' with levels: Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs.

Samsung Data Set Source

Input data from zip file 'UCI HAR Dataset.zip' downloaded from the UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ on Thu Sep 11 21:03:40 2014.

License

This data set is distributed AS-IS and no responsibility implied or explicit can be addressed to 
the authors or their institutions for its use or misuse. Any commercial use is prohibited.