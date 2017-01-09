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

plot(Datos$Global_active_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global Active Power (kilowatts)")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

png(filename = "plot2.png")

plot(Datos$Global_active_power,
     type = "l",
     xaxt = "n", ann = FALSE)

title(ylab = "Global Active Power (kilowatts)")

axis(1, at = c(1, 1441, 2880), lab = c("Thu", "Fri", "Sat"))

dev.off()
