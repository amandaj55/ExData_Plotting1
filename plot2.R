  ## plot2 

  ## line graph of Global Active power 01/02/2007 - 02/02/2007
  setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Project1")
  
  ## read in the household electrical consumption data for 01/02/2007 - 02/02/2007
  ElecCons <- read.csv("household_power_consumption.txt", sep=";",  skip = 66637, nrows= 2879)
  names(ElecCons)<- c("date","time", "GAP","GRP","Voltage","GI","Sm1","Sm2","Sm3")
  
  ## Open png device
  png(file = "plot2.png", width = 480, height = 480)
  
  ## Create DateTime variable
  ElecCons$date <- as.Date(ElecCons$date, "%d/%m/%Y")
  ElecConsDateTime <- as.POSIXct(paste(ElecCons$date, ElecCons$time), format="%Y-%m-%d %H:%M:%S")
  
  ## Plot line graph of Global Active power 01/02/2007 - 02/02/2007
  plot(x = ElecConsDateTime, y = ElecCons$GAP, type ="l", xlab = "", ylab ="Global Active Power (kilowatts)")
  
  
  dev.off()
  
  
