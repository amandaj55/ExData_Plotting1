  ## plot3 
  ## line graph of Energy sub metering 1 - 3 for 01/02/2007 - 02/02/2007
  
  setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Project1")
  
  ## read in the household electrical consumption data for 01/02/2007 - 02/02/2007
  ElecCons <- read.csv("household_power_consumption.txt", sep=";",  skip = 66637, nrows= 2879)
  names(ElecCons)<- c("date","time", "GAP","GRP","Voltage","GI","Sm1","Sm2","Sm3")
  
  ## Open png device
  png(file = "plot3.png", width = 480, height = 480)
  
  ## Create DateTime variable
  ElecCons$date <- as.Date(ElecCons$date, "%d/%m/%Y")
  ElecConsDateTime <- as.POSIXct(paste(ElecCons$date, ElecCons$time), format="%Y-%m-%d %H:%M:%S")
  
  ## Plot Submetering 1
  plot(x = ElecConsDateTime, y = ElecCons$Sm1, type ="l", xlab = "", ylab ="Energy sub metering")
  
  ## Add lines for submetering 2 and 3
  lines(ElecConsDateTime, ElecCons$Sm2, type="l",  col="red")
  lines(ElecConsDateTime, ElecCons$Sm3, type="l",  col="blue")
  
  ## Add legend
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),col = c("black", "red", "blue"))
  
  dev.off()
  
  
