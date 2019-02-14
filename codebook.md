Tidy Dataset 'subset_df'
Dim: Rows:10299 Columns:88

Column names
 [1] "subject"                            "activity"                           "timebodyaccmeanx"                  
 [4] "timebodyaccmeany"                   "timebodyaccmeanz"                   "timegravityaccmeanx"               
 [7] "timegravityaccmeany"                "timegravityaccmeanz"                "timebodyaccjerkmeanx"              
[10] "timebodyaccjerkmeany"               "timebodyaccjerkmeanz"               "timebodygyromeanx"                 
[13] "timebodygyromeany"                  "timebodygyromeanz"                  "timebodygyrojerkmeanx"             
[16] "timebodygyrojerkmeany"              "timebodygyrojerkmeanz"              "timebodyaccmagmean"                
[19] "timegravityaccmagmean"              "timebodyaccjerkmagmean"             "timebodygyromagmean"               
[22] "timebodygyrojerkmagmean"            "freqbodyaccmeanx"                   "freqbodyaccmeany"                  
[25] "freqbodyaccmeanz"                   "freqbodyaccmeanfreqx"               "freqbodyaccmeanfreqy"              
[28] "freqbodyaccmeanfreqz"               "freqbodyaccjerkmeanx"               "freqbodyaccjerkmeany"              
[31] "freqbodyaccjerkmeanz"               "freqbodyaccjerkmeanfreqx"           "freqbodyaccjerkmeanfreqy"          
[34] "freqbodyaccjerkmeanfreqz"           "freqbodygyromeanx"                  "freqbodygyromeany"                 
[37] "freqbodygyromeanz"                  "freqbodygyromeanfreqx"              "freqbodygyromeanfreqy"             
[40] "freqbodygyromeanfreqz"              "freqbodyaccmagmean"                 "freqbodyaccmagmeanfreq"            
[43] "freqbodybodyaccjerkmagmean"         "freqbodybodyaccjerkmagmeanfreq"     "freqbodybodygyromagmean"           
[46] "freqbodybodygyromagmeanfreq"        "freqbodybodygyrojerkmagmean"        "freqbodybodygyrojerkmagmeanfreq"   
[49] "angletbodyaccmean,gravity"          "angletbodyaccjerkmean,gravitymean"  "angletbodygyromean,gravitymean"    
[52] "angletbodygyrojerkmean,gravitymean" "anglex,gravitymean"                 "angley,gravitymean"                
[55] "anglez,gravitymean"                 "timebodyaccstdx"                    "timebodyaccstdy"                   
[58] "timebodyaccstdz"                    "timegravityaccstdx"                 "timegravityaccstdy"                
[61] "timegravityaccstdz"                 "timebodyaccjerkstdx"                "timebodyaccjerkstdy"               
[64] "timebodyaccjerkstdz"                "timebodygyrostdx"                   "timebodygyrostdy"                  
[67] "timebodygyrostdz"                   "timebodygyrojerkstdx"               "timebodygyrojerkstdy"              
[70] "timebodygyrojerkstdz"               "timebodyaccmagstd"                  "timegravityaccmagstd"              
[73] "timebodyaccjerkmagstd"              "timebodygyromagstd"                 "timebodygyrojerkmagstd"            
[76] "freqbodyaccstdx"                    "freqbodyaccstdy"                    "freqbodyaccstdz"                   
[79] "freqbodyaccjerkstdx"                "freqbodyaccjerkstdy"                "freqbodyaccjerkstdz"               
[82] "freqbodygyrostdx"                   "freqbodygyrostdy"                   "freqbodygyrostdz"                  
[85] "freqbodyaccmagstd"                  "freqbodybodyaccjerkmagstd"          "freqbodybodygyromagstd"            
[88] "freqbodybodygyrojerkmagstd"

Independent dataset 'ColMeanBySubAct'
Dim: Rows:180 Columns:88
This dataset is has been derived from the above dataset, mean for each column by subject and activity(first and second columns) has been summarized in this dataset.
Column names are same as in the the above dataset.
