
# Set working directory
setwd("~/Dropbox/Data Science/Exploratory Data Analysis/Exploratory 
      Data Analysis Course Project/Course Project 1")

# Load data set for plot
source("getData.R")

# Create plots folder
if (!file.exists("plots")) {
    dir.create("plots")
}

# Create device
png(filename = "plots/plot1.png", width = 480, height = 480, units = "px")

# Plot data
hist(prjData$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)", ylab = "Frequency", col = "red")

# Close device
dev.off()
