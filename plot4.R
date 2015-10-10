setwd("C:/Users/pgp29378/Desktop/Coursera/EDA/Week-1")
#Setup the directory where you have your text file.
#Read the text file
data <- read.table("household_power_consumption.txt",header=TRUE,sep=';',na.strings="?")
require("lubridate")
data$Date = as.Date(dmy(data$Date))
data <- subset(data,data$Date == "2007-02-01"|data$Date == "2007-02-02")


png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power",xlab="")

plot(data$Voltage~data$Datetime, type="l",ylab="Voltage", xlab="datetime")

plot(data$Sub_metering_1~data$Datetime, type="l",ylab="Energy sub metering",xlab="")
lines(data$Sub_metering_2~data$Datetime,col="red")
lines(data$Sub_metering_3~data$Datetime,col="blue")
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(data$Global_reactive_power~data$Datetime, type="l",ylab="Global_reactive_power", xlab="datetime")

dev.off()
