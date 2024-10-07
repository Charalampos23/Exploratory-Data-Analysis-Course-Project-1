## Read the Individual household electric power consumption Data Set. 
file_path <- "C:/Users/mavro/Desktop/household_power_consumption.txt"
data <- read.table(file_path, header = TRUE, sep =";", quote='\"', na.strings="?", 
                   check.names=TRUE, comment.char = "", stringsAsFactors = FALSE)

## Subset the data from the dates 2007-02-01 and 2007-02-02. 
ds <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))  

## Convert the Date and Time variables to Date/Time classes.
ds$Time = strptime(paste(ds$Date, ds$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
ds$Date <- as.Date(ds$Date, format="%d/%m/%Y")


# Make and save Plot 4 to a PNG file 
# with a width of 480 pixels and a height of 480 pixels.

## Open PNG device 
png("plot4.png", width=480, height=480)

## Create Plot 4
layout(matrix(1:4, nrow = 2, ncol = 2))
plot(ds$Time, ds$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(ds$Time, ds$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(ds$Time, ds$Sub_metering_2, type = "l", col = "red")
points(ds$Time, ds$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black","red","blue"),
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.8)
plot(ds$Time, ds$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(ds$Time, ds$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")

## Close the PNG file device                    
dev.off()
