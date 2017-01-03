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

Datos$Date <- as.Date(Datos$Date, format = "%d/%m/%Y")

