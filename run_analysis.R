# Data Sample: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 
#
# 1. Merge train and the test data sets.

temp1 <- read.table("UCI HAR Dataset/train/X_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(temp1, temp2)
temp1 <- read.table("UCI HAR Dataset/train/subject_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
Sub<- rbind(temp1, temp2)
temp1 <- read.table("UCI HAR Dataset/train/y_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(temp1, temp2)

# 2. Gets  measurements on the mean and standard deviation(std).

features <- read.table("UCI HAR Dataset/features.txt")
g_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, g_features]
names(X) <- features[g_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

# 3. User describtive verbiage to name the activities.

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"

names(Sub) <- "subject"
cleaned <- cbind(Sub, Y, X)
write.table(cleaned, "merged-data.txt")

# 4. Second data with the avg values per "activity" & "subject".

uniqueSubjects = unique(Sub)[,1]
numSubjects = length(unique(Sub)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned)[2]
result = cleaned[1:(numSubjects*numActivities), ]
row = 1
for (s in 1:numSubjects) {
for (a in 1:numActivities) {
result[row, 1] = uniqueSubjects[s]
result[row, 2] = activities[a, 2]
temp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
result[row, 3:numCols] <- colMeans(temp[, 3:numCols])
row = row+1
}
}
write.table(result, "tidy.txt")