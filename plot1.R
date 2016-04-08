## plot 1

  ## histogram of Global Active power 01/02/2007 - 02/02/2007
  setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Project1")
  
  ## read in the household electrical consumption data for 01/02/2007 - 02/02/2007
  ElecCons <- read.csv("household_power_consumption.txt", sep=";",  skip = 66637, nrows= 2879)
  names(ElecCons)<- c("date","time", "GAP","GRP","Voltage","GI","Sm1","Sm2","Sm3")
  
  ## Open png device
  png(file = "plot1.png", width = 480, height = 480)
  
  ## plot histogram of Global Active power 01/02/2007 - 02/02/2007
  hist(ElecCons$GAP,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  
  dev.off()
  

