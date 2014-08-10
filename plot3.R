png("./R/Exploratory Data Analysis/Project 1/plot3.png")

par(mfrow=c(1,1))

data <- read.delim(file = "./R/Exploratory Data Analysis/Project 1//household_power_consumption.txt",sep = ";",stringsAsFactors=FALSE)
sub <- subset(x = data, Date == "1/2/2007" | Date == "2/2/2007")

sub1 <- subset(x=sub,Global_active_power != "?")
sub1$Date <- strptime(paste(sub1$Date,sub1$Time), "%d/%m/%Y %H:%M:%S")
plot(sub1$Date,as.numeric(sub1$Sub_metering_1),type="l",ylab="Energy sub metering",xlab="")
lines(sub1$Date,as.numeric(sub1$Sub_metering_2),col="red")
lines(sub1$Date,as.numeric(sub1$Sub_metering_3),col="blue")
legend("topright", lty = "solid", col = c("black", "blue","red"), legend = c("Sub_metering_1", "Sub_metering_1","Sub_metering_1"))

dev.off() 