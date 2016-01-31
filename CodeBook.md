#CodeBook

##Describes the variables, the data, and any transformations or work that was performed to clean up the data in run_analysis.R.

###Variables used :-

Data Frames:

1. X_train : Original dataset read from './train/X_train.txt'.
2. y_train : Contains the training labels stored in './train/y_train.txt'.
3. s_train : Contains data that identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
4. train : Combines X_train,y_train and s_train into one dataset.
5. X_test : Original dataset read from './test/X_test.txt'.
6. y_test : Contains the test labels stored in './test/y_test.txt'.
7. s_test: Contains data that identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
8. test : Combines X_test,y_test and s_test into one dataset.
9. dt : Merging test and train into a single dataset.
10. features : Contains the names of the variables(column names) measured in train and test dataset.
11. act_labels : Dataset that links the class labels with their activity name.
12. sub_dt : Subeset of the original dataset dt. It has only mean and std measurements.
13. melt_data : Melted dataset formed using the melt function that contains Subject and activity_id as id's and all other variables as measured variables.
14. tidy_data : Final data set to be submitted. Created by using the dcast() function to cast melt_data into a tidy data set which is grouped by Subject and activity_id and the means of each varibale of identical observations to give a single unique observation.

Vectors: 
1. subject : Numeric Variable that temporarily stores the subject code of the activity name.
2. name : Name of the activity corresponding to the subject.
3. id : Id's used to melt sub_dt to create a melt.
4. other_var : All other columns of sub_dt(other than id) dataset which are used as variables in the melt() fucntion.
 
 
