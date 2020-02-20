#line graph of global active power over time
png("plot2.png", width = 480, height = 480, units = "px")
plot(data_sub$dt_tm, data_sub$Global_active_power, type = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
lines(data_sub$dt_tm, data_sub$Global_active_power)
dev.off()