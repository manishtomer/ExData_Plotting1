

plotfile<-read.csv.sql(file="./coursera/house.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007' "
                  , sep = ";", eol = "\n")
plotfile$datetime<-as.POSIXct( strptime(paste(plotfile$Date, plotfile$Time), "%d/%m/%Y %H:%M:%S"))

png(file="./figure/plot3.png", width = 480, height = 480)

box()
plot(plotfile$datetime,plotfile$Sub_metering_1, col="black", type="l",axes=T,ann=T, xlab = "", ylab="Energy sub metering")
par(new=T)
lines(plotfile$datetime,plotfile$Sub_metering_1, type="l",col="black", xlab = "", ylab="Energy sub metering")
par(new=T)
lines(plotfile$datetime,plotfile$Sub_metering_2, type="l",col="red", xlab = "", ylab="Energy sub metering")
par(new=T)
lines(plotfile$datetime,plotfile$Sub_metering_3, type="l",col="blue", xlab = "", ylab="Energy sub metering")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
dev.off()


