png("./R/Exploratory Data Analysis/Project 1/plot4.png")

par(mfrow = c(2, 2))

data <- read.delim(file = "./R/Exploratory Data Analysis/Project 1//household_power_consumption.txt",sep = ";",stringsAsFactors=FALSE)
sub <- subset(x = data, Date == "1/2/2007" | Date == "2/2/2007")

sub1 <- subset(x=sub,Global_active_power != "?")
sub1$Date <- strptime(paste(sub1$Date,sub1$Time), "%d/%m/%Y %H:%M:%S")

with(sub1, {
  plot(Date,as.double(Global_active_power),type="l",ylab="Global Active Power")
  plot(sub1$Date,as.numeric(sub$Voltage),type="l",ylab="Voltage",xlab="datetime")  
  plot(sub1$Date,as.numeric(sub$Sub_metering_1),type="l",ylab="Energy sub meeting",xlab="")
  lines(sub1$Date,as.numeric(sub$Sub_metering_2),col="red")
  lines(sub1$Date,as.numeric(sub$Sub_metering_3),col="blue")
  legend("topright", lty = "solid", col = c("black", "blue","red"), legend = c("Sub_metering_1", "Sub_metering_1","Sub_metering_1"),bty="n")
  plot(sub1$Date,as.numeric(sub$Global_reactive_power),type="l",ylab="Global_reactive_power",xlab="datetime")
}
)

dev.off() 