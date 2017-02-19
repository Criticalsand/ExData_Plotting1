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
png(filename = "plots/plot4.png", width = 480, height = 480, units = "px")

# Plot data
par(mfrow = c(2, 2))
# Plot(1, 1)
plot(prjData$DateTime, prjData$Global_active_power, ylab = "Global Active Power",
     type = "l")
# Plot(1, 2)
plot(prjData$DateTime, prjData$Voltage, ylab = "Voltage", xlab = "datetime", 
     type = "l")
# Plot(2, 1)
plot(prjData$DateTime, prjData$Sub_metering_1, ylab = "Energy sub metering", 
     xlab = "", type = "l")
lines(prjData$DateTime, prjData$Sub_metering_2, col = "red")
lines(prjData$DateTime, prjData$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = "solid" )
# Plot(2, 2)
plot(prjData$DateTime, prjData$Global_reactive_power, ylab = "Global_reactive_power",
     xlab = "datetime", type = "l")

# CLose device
dev.off()
