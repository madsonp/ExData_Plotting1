ds <- read.csv("~/household_power_consumption.txt", header = TRUE, sep=";", dec=".") #Import dataset. Rename it to short "ds"
ds$Date<-as.Date(ds$Date, format="%d/%m/%Y") #Convert Date column format
class(ds$Date) #confirm format changing
dsf <- subset (ds,
               Date >= "2007-02-01" & Date <= "2007-02-02"
               ) #Filter by proposal Date
dsf$Global_active_power<- as.numeric(dsf$Global_active_power) #Convert to numeric
hist(dsf$Global_active_power, col="red", main= "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
