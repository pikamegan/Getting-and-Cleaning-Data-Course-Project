## Coursera Getting and Cleaning Data Course Project

The purpose of this project is to collect, work with, and clean a data set.

The course data for this project can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

A full description of the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

# Analysis Files
- ```Code_Book.md``` is an R Markdown file that explains the variables, data and steps to tidy the data.
- ```run_analysis.R``` is an R script that details the steps taken to tidy the data set, including steps from downloading the original data to creating a new file for the tidy data set.
- ```tidy_data.txt``` is a text file that contains the final tidy data set, with the averages of each variable grouped by activity and subject.

# How the script works
```run_analysis.R``` contains the code for transforming the original data into a tidy data set. The main steps are as follow:
1. Load the individual data tables into R
2. Merge these training and test sets together into one large data set
3. Rename columns in the large data set according to the feature variables in the original features data table.
4. The final tidy data set should only contain the columns which have the measurements on mean and standard deviation for each measurement. The R script performs this using grep to extract these columns based on their column names.
5. Rename the activities (currently they are represented by numbers) based on their names from the activity labels data table.
6. Rename the column names for the features by using gsub to expand abbreviations, fix typos, connect words with underscores (_) and make everything lowercase for readability.
7. The final tidy data set should only contain the average of each variable grouped by subject and activity. The R script performs this using the dplyr package.
8. Finally, save the complete tidy data set to a new file with the write.table function.
