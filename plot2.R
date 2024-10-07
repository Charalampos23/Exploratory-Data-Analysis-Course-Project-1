## Read the Individual household electric power consumption Data Set. 
file_path <- "C:/Users/mavro/Desktop/household_power_consumption.txt"
data <- read.table(file_path, header = TRUE, sep =";", quote='\"', na.strings="?", 
                   check.names=TRUE, comment.char = "", stringsAsFactors = FALSE)

## Subset the data from the dates 2007-02-01 and 2007-02-02. 
ds <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))  

## Convert the Date and Time variables to Date/Time classes.
ds$Time = strptime(paste(ds$Date, ds$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
ds$Date <- as.Date(ds$Date, format="%d/%m/%Y")

# Make and save Plot 2 to a PNG file 
# with a width of 480 pixels and a height of 480 pixels.

## Open PNG device 
png("plot2.png", width=480, height=480)

## Create Plot 2
with(ds, 
     plot(Time, Global_active_power, type = "l", xlab = "",
          ylab = "Global Active Power (kilowatts)"))
     
## Close the PNG file device                    
dev.off()
