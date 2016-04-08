  ## plot4 

  ## histogram of Global Active power 01/02/2007 - 02/02/2007
  setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Project1")
  
  ## read in the household electrical consumption data for 01/02/2007 - 02/02/2007
  ElecCons <- read.csv("household_power_consumption.txt", sep=";",  skip = 66637, nrows= 2879)
  names(ElecCons)<- c("date","time", "GAP","GRP","Voltage","GI","Sm1","Sm2","Sm3")
  
  ## Open png device
  png(file = "plot4.png", width = 480, height = 480)
  
  ## Create DateTime variable
  ElecCons$date <- as.Date(ElecCons$date, "%d/%m/%Y")
  ElecConsDateTime <- as.POSIXct(paste(ElecCons$date, ElecCons$time), format="%Y-%m-%d %H:%M:%S")
  
  ## arrange plots 2 x 2
  par(mfrow=c(2,2))
  
  ## plot line graph of Global active power
  plot(x = ElecConsDateTime, y = ElecCons$GAP, type ="l", xlab = "", ylab ="Global Active Power")
  
  ## plot line graph of Voltage
  plot(x = ElecConsDateTime, y = ElecCons$Voltage, type ="l", xlab = "datetime", ylab ="Voltage")
  
  ## Plot electrical submetering 1-3 with legend
  plot(x = ElecConsDateTime, y = ElecCons$Sm1, type ="l", xlab = "", ylab ="Energy sub metering")
  lines(ElecConsDateTime, ElecCons$Sm2, type="l",  col="red")
  lines(ElecConsDateTime, ElecCons$Sm3, type="l",  col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),col = c("black", "red", "blue"))
  
  ## Plot Global reactive power
  plot(x = ElecConsDateTime, y = ElecCons$GRP, type ="l", xlab = "datetime", ylab ="Global Reactive Power")
  dev.off()
  
  
