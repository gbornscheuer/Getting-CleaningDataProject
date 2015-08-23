# Course: Getting & Cleaning Data
# The following code is part of the Course Project
# Date: 22-08-2015
# Name of the source code: run_analysis.R
#
# The comments included here explains this code. Extra documentation can be found in the files:
## - README.md: is the repo 
## - codebook.md
## - resultado.txt
#
# dplyr package must be loaded
# First the data needed is read:
#				1: vars: stores the variables (features)
#				2: test: stores test group data (30% of the volunteers)
#				3: train: stores training group data (70% of the volunteers) 
#				4: ltrain: stores the activity codes of the training group for each activity
#				5: ltest: stores the activity codes of the test group for each activity
#				6: stest: stores the id. code of the test volunteers for each activity
#				7: strain stores the id. code of the train volunteers for each activity
#				8: l: stores the activity labels
#
vars <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/features.txt")
test <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/X_test.txt")
train <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/X_train.txt")
ltrain <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/y_train.txt")
ltest <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/y_test.txt")
stest <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/subject_test.txt")
strain <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/subject_train.txt")
l <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/activity_labels.txt")
#
# Get the vars
#
vars2 <- as.character(vars[, 2])
#
# 1. Join the two measurements files, call the resulting file: todo (all in spanish, sorry by that)
#
todo <- rbind(test, train)
#
# 2. Select the columns variables that represent mean and standard deviation for each measurement
#
names(todo) <- vars2
colpos <- grep("mean|std", vars2)
ss <- subset(todo, select = colpos)
#
# ss is the name of the subset
#
# 3. preparing the label columns
#
ltodo <- rbind(ltest, ltrain)
ltodov <- ltodo[, 1]
ltodof <- factor(ltodov, labels = c("LAYING", "SITTING", "STANDING", "WALKING", "WALKING DOWNSTAIRS", "WALKING UPSTAIRS"))
#
# join the label column to the subset (ltodo is for label todo)
#
todol <- cbind(ltodof, ss)
#
# join the subject column to the subset (stodo is for subject todo)
# todosl includes all the data
#
stodo <- rbind(stest, strain)
todo.sl <- cbind(stodo, todol)
#
# 4. naming the new columns subject and activity
#
names(todo.sl)[1] <- "subject"
names(todo.sl)[2] <- "activity"
#
# 5. sort, by subject and activity within subject; group by activity and compute means 
#
orden.todo.sl <-  arrange(todo.sl, subject, activity)
subtotales <- orden.todo.sl %>% group_by(subject, activity) %>% summarise_each(funs(mean),matches("mean"), matches("std"))
#
# 4. Better names to the variables
#
names(subtotales) <- paste("mean.by.activity:", names(subtotales), sep = "")
names(subtotales) <- gsub("Gyro", ".gyroscope", names(subtotales))
names(subtotales) <- gsub("Acc", ".accelerometer", names(subtotales))
names(subtotales) <- gsub("Mag", ".magnitude", names(subtotales))
names(subtotales)[1] <- "subject"
names(subtotales)[2] <- "activity"
