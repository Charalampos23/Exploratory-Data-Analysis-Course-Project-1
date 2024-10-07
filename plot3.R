## Read the Individual household electric power consumption Data Set. 
file_path <- "C:/Users/mavro/Desktop/household_power_consumption.txt"
data <- read.table(file_path, header = TRUE, sep =";", quote='\"', na.strings="?", 
                   check.names=TRUE, comment.char = "", stringsAsFactors = FALSE)

## Subset the data from the dates 2007-02-01 and 2007-02-02. 
ds <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))  

## Convert the Date and Time variables to Date/Time classes.
ds$Time = strptime(paste(ds$Date, ds$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
ds$Date <- as.Date(ds$Date, format="%d/%m/%Y")

# Make and save Plot 3 to a PNG file 
# with a width of 480 pixels and a height of 480 pixels.

## Open PNG device 
png("plot3.png", width=480, height=480)

## Create Plot 3
with(ds, 
     plot(Time, Sub_metering_1, type="l", ylab="Energy sub metering"), xlab="")
     lines(ds$Time, ds$Sub_metering_2, type="l", col= "red")
     lines(ds$Time, ds$Sub_metering_3, type="l", col= "blue")
     legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
            lty= 1, lwd=2, col = c("black", "red", "blue"))

## Close the PNG file device                    
dev.off()
