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

hist(Datos$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")

png(filename = "plot1.png")

hist(Datos$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()
