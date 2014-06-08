

plotfile<-read.csv.sql(file="./coursera/house.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007' "
                  , sep = ";", eol = "\n")
plotfile$datetime<-as.POSIXct( strptime(paste(plotfile$Date, plotfile$Time), "%d/%m/%Y %H:%M:%S"))



png(file="./figure/plot2.png", width = 480, height = 480)
plot(plotfile$datetime, plotfile$Global_active_power, type="l", xlab = "", ylab="Global Active Power(kiowatts)")
dev.off()
