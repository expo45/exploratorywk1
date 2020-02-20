library(tidyverse)
#loading data
data <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE, colClasses = "character")
str(data)

#formatting relevant variables
data %>%
    filter(row_number() > 1) %>%
    mutate(dt_tm = as.POSIXct(strptime(paste(Date, Time, sep = " "),
                              format = "%d/%m/%Y %H:%M:%S"))) %>%
    mutate(Global_active_power = as.numeric(Global_active_power)) %>%
    mutate(Global_reactive_power = as.numeric(Global_reactive_power)) %>%
    mutate(Voltage = as.numeric(Voltage)) %>%
    mutate(Global_intensity = as.numeric(Global_intensity)) %>%
    mutate(Sub_metering_1 = as.numeric(Sub_metering_1)) %>%
    mutate(Sub_metering_2 = as.numeric(Sub_metering_2)) %>%
    mutate(Sub_metering_3 = as.numeric(Sub_metering_3)) -> data

#filtering to only relevant dates
data %>%
    filter(dt_tm >= as.POSIXct(strptime("2007-02-01 00:00:00", 
                                        format = "%Y-%m-%d %H:%M:%S")) &
           dt_tm <= as.POSIXct(strptime("2007-02-02 23:59:59", 
                                        format = "%Y-%m-%d %H:%M:%S"))) -> data_sub

#save plots as .png 480px square, naming convention "plot1.png", "plot2.png", etc
#separate R code file for each plot