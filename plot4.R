Datos <- read.table("Semana1/household_power_consumption.txt",
                    sep = ";",
                    na.strings = "?",
                    stringsAsFactors = FALSE,
                    skip = 66637,
                    nrows = 2880)

ColumnNames <- read.table("Semana1/household_power_consumption.txt",
                          sep = ";",
                          na.strings = "?",
                          nrows = 1)

colnames(Datos) <- unlist(ColumnNames)

par(mfrow = c(2, 2))

plot(Datos$Global_active_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global Active Power")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

plot(Datos$Voltage,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Voltage")

title(xlab = "datetime")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

plot(Datos$Sub_metering_1,
     type = "l",
     xaxt = "n", ann = FALSE)

lines(Datos$Sub_metering_2, col = "red")

lines(Datos$Sub_metering_3, col = "blue")

title(ylab = "Energy sub metering")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

legend("topright", col = c("black", "red", "blue"),
       legend = names(Datos)[7:9],
       lty = c(1, 1),
       bty = "n")

plot(Datos$Global_reactive_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global_reactive_power")

title(xlab = "datetime")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

png(filename = "plot4.png")

par(mfrow = c(2, 2))

plot(Datos$Global_active_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global Active Power")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

plot(Datos$Voltage,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Voltage")

title(xlab = "datetime")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

plot(Datos$Sub_metering_1,
     type = "l",
     xaxt = "n", ann = FALSE)

lines(Datos$Sub_metering_2, col = "red")

lines(Datos$Sub_metering_3, col = "blue")

title(ylab = "Energy sub metering")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

legend("topright", col = c("black", "red", "blue"),
       legend = names(Datos)[7:9],
       lty = c(1, 1),
       bty = "n")

plot(Datos$Global_reactive_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global_reactive_power")

title(xlab = "datetime")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

dev.off()
