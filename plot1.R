#### Exploratory Data Analysis Project ####
# Reading Data
data = read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

# Converting and subsetting the data
data$Date = as.Date(data$Date, format = "%d/%m/%Y")
data = subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Plotting of Graph 1
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
