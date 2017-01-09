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

plot(Datos$Sub_metering_1,
     type = "l",
     xaxt = "n", ann = FALSE)

lines(Datos$Sub_metering_2, col = "red")

lines(Datos$Sub_metering_3, col = "blue")

title(ylab = "Energy submetering")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

legend("topright", col = c("black", "red", "blue"),
       legend = names(Datos)[7:9],
       lty = c(1, 1))

png(filename = "plot3.png")

plot(Datos$Sub_metering_1,
     type = "l",
     xaxt = "n", ann = FALSE)

lines(Datos$Sub_metering_2, col = "red")

lines(Datos$Sub_metering_3, col = "blue")

title(ylab = "Energy submetering")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

legend("topright", col = c("black", "red", "blue"),
       legend = names(Datos)[7:9],
       lty = c(1, 1))

dev.off()