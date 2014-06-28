source("read.R")
png(file="plot1.png", width = 480, height = 480, units = "px")
hist(as.numeric(y$Global_active_power),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
dev.off();
