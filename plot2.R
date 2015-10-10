setwd("C:/Users/pgp29378/Desktop/Coursera/EDA/Week-1")
#Setup the directory where you have your text file.
#Read the text file
data <- read.table("household_power_consumption.txt",header=TRUE,sep=';',na.strings="?")
require("lubridate")
data$Date = as.Date(dmy(data$Date))
data <- subset(data,data$Date == "2007-02-01"|data$Date == "2007-02-02")

#Create plot
datetime <- paste(data$Date, data$Time)
data$Datetime <- as.POSIXct(datetime)
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)",xlab="")

#saving in png graphic device
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()