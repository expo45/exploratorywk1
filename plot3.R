#linge graph of sub meters over time
png("plot3.png", width = 480, height = 480, units = "px")
plot(data_sub$dt_tm, data_sub$Sub_metering_1, type = "n",
     xlab = "",
     ylab = "Energy sub metering")
lines(data_sub$dt_tm, data_sub$Sub_metering_1, col = "black")
lines(data_sub$dt_tm, data_sub$Sub_metering_2, col = "red")
lines(data_sub$dt_tm, data_sub$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)
dev.off()