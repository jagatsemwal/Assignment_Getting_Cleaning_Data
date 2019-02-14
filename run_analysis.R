
##Save the folder "UCI HAR Dataset" to your working directory
##loading data into R console

X_test<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/test/X_test.txt")), header = FALSE, stringsAsFactors=FALSE)
X_train<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/train/X_train.txt")), header = FALSE, stringsAsFactors=FALSE)
y_test<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/test/y_test.txt")), header = FALSE, stringsAsFactors=FALSE)
y_train<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/train/y_train.txt")), header = FALSE, stringsAsFactors=FALSE)
subject_test<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/test/subject_test.txt")), header = FALSE, stringsAsFactors=FALSE)
subject_train<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/train/subject_train.txt")), header = FALSE, stringsAsFactors=FALSE)
features<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/features.txt")), header = FALSE, stringsAsFactors=FALSE)
activity_labels<-read.table(file=(paste0(getwd(),"/UCI HAR Dataset/activity_labels.txt")), header = FALSE, stringsAsFactors=FALSE)

##adding subject_test,y_test columns to X_test dataset

test_df<-cbind(subject_test,y_test,X_test)

##adding subject_train,y_train columns to X_train dataset

train_df<-cbind(subject_train,y_train,X_train)

##Merging test and training data sets

df<-rbind(test_df,train_df)

##Specifying column names from features.txt file

names(df)<-c("subject","activity",features[,2])

##changing column names to lowercase

names(df)<-tolower(names(df))

##filter column names

m<-grep("mean",names(df))
s<-grep("std",names(df))

subset_df<-df[,c(1,2,m,s)]

##applying descriptive activity names to the activity column

subset_df[,2]<-activity_labels[subset_df[,2],2]

##removing special characters from column names

names(subset_df)<-sub("^t","time",names(subset_df))
names(subset_df)<-sub("^f","freq",names(subset_df))
names(subset_df)<-gsub("_","",names(subset_df))
names(subset_df)<-gsub("()","",names(subset_df))
names(subset_df)<-gsub("-","",names(subset_df))
names(subset_df)<-gsub("\\(","",names(subset_df))
names(subset_df)<-gsub("\\)","",names(subset_df))

library(dplyr)


print("Tidy dataset named subset_df has been created for you to examine")

##Independent tidy dataset with mean for each column by subject and activity


grouped_df<-group_by(subset_df,subject,activity)
ColMeanBySubAct<-summarize_all(grouped_df,mean)

print("Independent tidy dataset named ColMeanBySubAct with mean for each variable by subject and activity has been created, please examine")



