x <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
y <- x[as.Date(x$Date,format="%d/%m/%Y") >= as.Date("01/02/2007",format="%d/%m/%Y") & as.Date(x$Date,format="%d/%m/%Y") <= as.Date("02/02/2007",format="%d/%m/%Y"),]

#y <- x[(x$Date == "1/2/2007" | x$Date == "2/2/2007"),]
dt <- strptime(paste(y$Date,y$Time),"%d/%m/%Y %H:%M:%S")
y$dt <- dt

