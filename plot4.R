#four facet plot with GAP, Voltage, sub monitor, and GRP line graphs over time
png("plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

plot(data_sub$dt_tm, data_sub$Global_active_power, type = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
lines(data_sub$dt_tm, data_sub$Global_active_power)

plot(data_sub$dt_tm, data_sub$Voltage, type = "n",
     xlab = "datetime",
     ylab = "Voltage")
lines(data_sub$dt_tm, data_sub$Voltage)

plot(data_sub$dt_tm, data_sub$Sub_metering_1, type = "n",
     xlab = "",
     ylab = "Energy sub metering")
lines(data_sub$dt_tm, data_sub$Sub_metering_1, col = "black")
lines(data_sub$dt_tm, data_sub$Sub_metering_2, col = "red")
lines(data_sub$dt_tm, data_sub$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       box.lty = 0)

plot(data_sub$dt_tm, data_sub$Global_reactive_power, type = "n",
     ylim = c(0, 0.5),
     xlab = "datetime",
     ylab = "Global_rective_power",
     yaxt = "n")
lines(data_sub$dt_tm, data_sub$Global_reactive_power)
axis(side = 2, 
     yaxp = c(0, 0.5, 5),
     at = c(0, 0.1, 0.2, 0.3, 0.4, 0.5),
     labels = c("0.0", "0.1", "0.2", "0.3", "0.4", "0.5"))

dev.off()