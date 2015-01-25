# Getting-Cleaning-Data   -Project 


This is a repository for code written for the Getting and Cleaning Data -Coursera course through Johns Hopkins University

## Course Project


1- Unzip the source ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") into a    folder on your local drive, like  C:\Users\yourname\Getting Cleaning Data\

2- Put run_analysis.R into C:\Users\yourname\Getting Cleaning Data\UCI HAR Dataset\

3- In RStudio: setwd("C:\Users\yourname\Getting Cleaning Data\UCI HAR Dataset\"),

4- source("run_analysis.R") 
   NOTE: It is important to note: the run_analysis.R needs to be in UCI HAR Dataset directory.     
   run_analysis.R only assumes the location where it is saved and ran.

5- data <- read.table("tidy.txt") - Use this command to read the data file created from run_analysis.R
   180 observations/rows
   68 variables/columns
   Reason: 30 subjects and 6 activities for each subject.

6- View(data) - to view the data in cvs display at your R Studio console

## Options

7- View(head(data)) - to view the data in cvs display the first 6 observations at your R Studio console

8- View(tail(data)) - to view the last 6 observation of the data generated at your R Studio console
