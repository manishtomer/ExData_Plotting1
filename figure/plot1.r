

plotfile<-read.csv.sql(file="./coursera/house.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007' "
                  , sep = ";", eol = "\n")
png(file="./figure/plot1.png", width = 480, height = 480)
hist(plotfile$Global_active_power, freq=T, col="red", main = paste("Global Active power"), xlab="Global Active Power(kiowatts)")
dev.off()
