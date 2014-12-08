alldata <- read.csv('household_power_consumption.txt', sep = ";",  quote="", na.strings="?", stringsAsFactors=FALSE)
data <- alldata[alldata$Date == '1/2/2007' | alldata$Date == '2/2/2007',]

data$Time_date <- strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')

Sys.setlocale("LC_TIME", "English") 

png(file = "plot2.png")

plot(data$Time_date, data$Global_active_power, type="l", 
     ylab='Global Active Power (kilowatts)', xlab='' )


dev.off()