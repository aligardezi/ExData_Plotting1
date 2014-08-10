png("./R/Exploratory Data Analysis/Project 1/plot1.png")

par(mfrow=c(1,1))

data <- read.delim(file = "./R/Exploratory Data Analysis/Project 1//household_power_consumption.txt",sep = ";",stringsAsFactors=FALSE)
sub <- subset(x = data, Date == "1/2/2007" | Date == "2/2/2007")

# plot 1
sub1 <- subset(x=sub,Global_active_power != "?")
sub1Hist <- hist(as.double(sub1$Global_active_power))
plot(sub1Hist,main = "Global Active Power",xlab="Global Active Power (killowatts)",col="red")

dev.off() 