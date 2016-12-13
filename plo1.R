

setwd("C://Users//mmcbr//Documents//pm")

## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

agg<- aggregate(Emissions ~ year, NEI, FUN = sum)

png(filename="plot1.png")
options(scipen =7)
plot(x=agg$year, y=agg$Emissions, ylim = c(0, 7500000))
lines(agg)
dev.off()