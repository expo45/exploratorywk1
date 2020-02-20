#histogram of global active power
png("plot1.png", width = 480, height = 480, units = "px")
hist(data_sub$Global_active_power, 
     breaks = seq(0, 8, 0.5),
     col = "red", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", 
     main = "Global Active Power",
     xaxt = "n")
axis(side = 1, at = c(0, 2, 4, 6), labels = c(0, 2, 4, 6))
dev.off()