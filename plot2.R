#### Exploratory Data Analysis Project ####
# Reading Data
data = read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

# Converting and subsetting the data
data$Date = as.Date(data$Date, format = "%d/%m/%Y")
data = subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
data$datetime <- as.POSIXct(data$datetime)

# Plotting of Graph 2
plot(Global_active_power ~ datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "", data=data)
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()

