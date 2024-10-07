## Introduction

README
Introduction
This project utilizes the Individual Household Electric Power Consumption Data Set from the UCI Machine Learning Repository. The dataset contains measurements of electric power consumption in a single household over nearly four years, sampled every minute.

Dataset Overview
Total Rows: 2,075,259
Columns: 9
Key Variables:
Date: Format dd/mm/yyyy
Time: Format hh:mm
Global_active_power: Minute-averaged active power (kW)
Global_reactive_power: Minute-averaged reactive power (kW)
Voltage: Minute-averaged voltage (V)
Global_intensity: Minute-averaged current intensity (A)
Sub_metering_1: Energy sub-metering No. 1 (Wh)
Sub_metering_2: Energy sub-metering No. 2 (Wh)
Sub_metering_3: Energy sub-metering No. 3 (Wh)
Loading the Data
When importing the dataset into R:

Estimate memory requirements before loading the data.
Focus on data from 2007-02-01 to 2007-02-02 to improve efficiency.
Use strptime() and as.Date() to convert Date and Time variables to Date/Time classes.
Note: Missing values are represented as ?.
Making Plots
The objective is to visualize household energy usage over the specified two-day period. Follow these steps:

Fork and clone the GitHub repository.

Create the following plots and save each as a PNG file (480x480 pixels):

plot1.png
plot2.png
plot3.png
plot4.png
Each plot must be constructed using a corresponding R code file (plot1.R, plot2.R, etc.), which should include:

Code to read the data.
Code to generate the PNG file.
Add both the PNG files and R code files to your Git repository.

Push your repository to GitHub, ensuring it contains four PNG files and four R code files.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Your task is to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First you will need to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository. There should be four PNG files and four R code files.