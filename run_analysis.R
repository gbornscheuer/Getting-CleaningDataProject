vars <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/features.txt")
test <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/X_test.txt")
train <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/X_train.txt")
ltrain <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/y_train.txt")
ltest <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/y_test.txt")
stest <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/subject_test.txt")
strain <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/subject_train.txt")
l <- read.table("C:/Documents and Settings/guillermo/Escritorio/SamsungHAR/activity_labels.txt")
vars2 <- as.character(vars[, 2])
todo <- rbind(test, train)
names(todo) <- vars2
colpos <- grep("mean|std", vars2)
ss <- subset(todo, select = colpos)
ltodo <- rbind(ltest, ltrain)
ltodov <- ltodo[, 1]
ltodof <- factor(ltodov, labels = c("LAYING", "SITTING", "STANDING", "WALKING", "WALKING DOWNSTAIRS", "WALKING UPSTAIRS"))
todol <- cbind(ltodof, ss)
stodo <- rbind(stest, strain)
todo.sl <- cbind(stodo, todol)
names(todo.sl)[1] <- "subject"
names(todo.sl)[2] <- "activity"
orden.todo.sl <-  arrange(todo.sl, subject, activity)
subtotales <- orden.todo.sl %>% group_by(subject, activity) %>% summarise_each(funs(mean),matches("mean"), matches("std"))
## names(subtotales) <- sub("^t|f","mean.by.activity:", names(subtotales))
names(subtotales) <- paste("mean.by.activity:", names(subtotales), sep = "")
names(subtotales) <- gsub("Gyro", ".gyroscope", names(subtotales))
names(subtotales) <- gsub("Acc", ".accelerometer", names(subtotales))
names(subtotales) <- gsub("Mag", ".magnitude", names(subtotales))
names(subtotales)[1] <- "subject"
names(subtotales)[2] <- "activity"
## ss10 <- orden.todo.sl[, c(1:5)]
## print(head(ss10, 10))
## print(tail(ss10, 10))
