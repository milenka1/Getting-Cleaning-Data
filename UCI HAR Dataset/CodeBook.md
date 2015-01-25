#Course Project Code Book

Please refer to README.md at repository Getting Cleaning Data  for instruction on how to run the scrip and how to view results.

Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (run_analysis.R) performs multiple steps to clean up the data and create tidy set of data.

Following activities are performed by run_analysis.R script:

1.Merges the training and test data to create one data set, namely train/X_train.txt with test/X_test.txt
2.Reads features.txt and gets only the measurements on the mean and standard deviation for each measurement.
3.Reads activity_labels.txt and puts descriptive names to name the activities in the data set:
    
    walking

    walkingupstairs

    walkingdownstairs

    sitting

    standing

    laying

    
4.Script appropriately labels the data set with descriptive names: 
    all feature names (attributes) and activity names.
    Result - merged_data.txt.

  The names of the attributes sample:

    tbodyacc-mean-x 

    tbodyacc-mean-y 

    tbodyacc-mean-z 

    tbodyacc-std-x 

    tbodyacc-std-y 

    tbodyacc-std-z 

    tgravityacc-mean-x 

    tgravityacc-mean-y

5. Script creates second tidy data set with average for each measurement for each activity & each subject. 
    Result- tidy.txt


     As a summary you can expect to see :
                - 30 subjects 
                -  6 activities
                -  total of 180 observations 
