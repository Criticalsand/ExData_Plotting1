
# Download the dataset if not exist
# Set working directory
setwd("~/Dropbox/Data Science/Exploratory Data Analysis/Exploratory 
      Data Analysis Course Project/Course Project 1")

# Download required package and load into library
install.packages("lubridate")
library(lubridate)

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata
%2Fdata%2Fhousehold_power_consumption.zip"
fileName <- "Electric Power Consumption"

if(!file.exists("household_power_consumption.txt")) {
    download.file(fileURL, fileName, method = "curl")
    unzip(fileName)
}


# Read the table between 2007-02-01 and 2007-02-02
powerData <- read.csv("household_power_consumption.txt", sep = ";", 
                      na.strings = "?")
prjData <- powerData[powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007",]

# Convert Date and Time variables to Data/Time classes
prjData$DateTime <- dmy(prjData$Date) + hms(prjData$Time)
prjData$DateTime <- as.POSIXlt(prjData$DateTime)

# Write data set to file
write.table(prjData, file = "prjData.txt", row.names = FALSE)
