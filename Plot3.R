source("read.R")
png(file="plot3.png", width = 480, height = 480, units = "px")
plot(y$dt,y$Sub_metering_1,type="l",xlab="",ylab="Energy sub meeting",col="black")
lines(y$dt,y$Sub_metering_2,type="l",col="red")
lines(y$dt,y$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off();
