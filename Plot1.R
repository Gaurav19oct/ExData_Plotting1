setwd("C:/Users/pgp29378/Desktop/Coursera/EDA/Week-1")
#Setup the directory where you have your text file.

#Read the text file
data <- read.table("household_power_consumption.txt",header=TRUE,sep=';',na.strings="?")
require("lubridate")
data$Date = as.Date(dmy(data$Date))
data <- subset(data,data$Date == "2007-02-01"|data$Date == "2007-02-02")


hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()







