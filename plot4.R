alldata <- read.csv('household_power_consumption.txt', sep = ";",  quote="", na.strings="?", stringsAsFactors=FALSE)
data <- alldata[alldata$Date == '1/2/2007' | alldata$Date == '2/2/2007',]

data$Time_date <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')

Sys.setlocale("LC_TIME", "English") 

png(file = "plot4.png")

par(mfcol = c(2, 2))

plot(data$Time_date, data$Global_active_power, type="l", 
     ylab='Global Active Power', xlab='' )

plot(data$Time_date, data$Sub_metering_1, type="l", xlab = '',
     ylab = 'Energy sub metering')
lines(data$Time_date, data$Sub_metering_2, col="red")
lines(data$Time_date, data$Sub_metering_3, col="blue")
legend("topright", bty = "n", lty=c(1,1), col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$Time_date, data$Voltage, type="l", 
     ylab='Voltage', xlab='datetime' )

plot(data$Time_date, data$Global_reactive_power, type="l", 
     ylab='Global_reactive_power', xlab='datetime' )

dev.off()