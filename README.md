Getting and Cleaning Data Course Project

The goal of this project was to prepare a tidy dataset that can be used for later analysis. All work was performed in data collected from the accelerometers from the Samsung Galaxy S smartphone. 

To obtain a deeper understanding of the data, please refer to the description in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

"Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors."

This repository contains the following files:

CodeBook.md - a code book that describes the variables, the data, and any transformations or work that performed to clean up the data;

README.md - a text file explaining the analysis files in a clear and understandable manner;

tidyset.txt - the goal of the current project; this text file contains the final, tidy, dataset, with the average of each variable for each activity and each subject.

run_analysis.R - the script that was used to achieve the final tidy dataset.

Data was created with the following steps: 
1. The zipped file was downloaded from the course project website and unzipped;
2. All files were manually imported and read using Import Dataset >> From text (base);
3. All sets were initially divided into train (x, y and subject), test (x, y and subject), features and activity labels. They were all imported separetely and then merged, following the script (run_analysis.R);
4. Even though several measures were provided, only means and standard deviations were maintained;
5. Variable and activity names were assigned
6. A second, independent tidy data set with the average of each variable for each activity and each subject was created and exported (tidyset.txt).

All analysis were conducted in RStudio version 1.1.463 on Windows 8 64-bit. The 'plyr' package was loaded, version 1.8.4.
