data <- read.csv("D:\User\Courses\R Programming\Week1//household_power_consumption.txt", sep=";", na.strings="?",stringsAsFactors = FALSE)
df<- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))
df$Voltage <- as.numeric(as.character(df$Voltage))
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))
df$Datetime <-paste(df$Date, df$Time)

#Plot1
png("plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
