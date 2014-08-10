png("./R/Exploratory Data Analysis/Project 1/plot2.png")

par(mfrow=c(1,1))

data <- read.delim(file = "./R/Exploratory Data Analysis/Project 1//household_power_consumption.txt",sep = ";",stringsAsFactors=FALSE)
sub <- subset(x = data, Date == "1/2/2007" | Date == "2/2/2007")

sub1 <- subset(x=sub,Global_active_power != "?")
sub1$Date <- strptime(paste(sub1$Date,sub1$Time), "%d/%m/%Y %H:%M:%S")
plot(sub1$Date,as.double(sub1$Global_active_power),type="l",xlab="",ylab="Global Active Power (killowatts)")

dev.off() 