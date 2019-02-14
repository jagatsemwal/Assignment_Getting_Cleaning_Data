# Assignment_Getting_Cleaning_Data
Peer-graded Assignment
Note: Save the data folder "UCI HAR Dataset" to your working directory before you run the script. The file and folder names must remain as in the original downloaded data
The script first load the data into R Console
Then the subject and activity columns are added to the test and train dataset using cbind
The two dataset test and train are then merged together using rbind
Column names are redefined using features.txt file
Column names are then changed to lowercase 
Columns are then filtered for words 'mean' 'std'
Activity names are updated from activity_labels.txt file
Special characters like (),_, are removed from column names
t is replaced by time and f by frequency where required at the start of the column names 
"Tidy dataset subset_df is ready for you
dplyr package is loaded to r console
subset_df is then grouped_by subject and activity and saved into a new dataset grouped_df
independent dataset with mean for each variable by subject and activity is saved in dataset named ColMeanBySubAct
