alldata <- read.csv('household_power_consumption.txt', sep = ";",  quote="", na.strings="?", stringsAsFactors=FALSE)
data <- alldata[alldata$Date == '1/2/2007' | alldata$Date == '2/2/2007',]

png(file = "plot1.png")

hist(data$Global_active_power, main='Global Active Power', col = 'red',
     xlab='Global Active Power (kilowatts)')

dev.off()