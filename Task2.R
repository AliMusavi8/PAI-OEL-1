# Load required libraries
library(ggplot2)
library(dplyr)  # For data manipulation

# Load dataset
data <- read.csv("GlobalTemperatures.csv")
head(data, n = 5)
# Convert dt column to Date type
data$dt <- as.Date(data$dt)

# Remove missing values
data <- na.omit(data)

# 1. Line Chart: Global Temperature Change Over Time
temperature_plot <- ggplot(data, aes(x = dt, y = LandAverageTemperature)) +
  geom_line(color = "blue") +
  labs(title = "Global Temperature Change Over Time",
       x = "Year",
       y = "Average Land Temperature (°C)") +
  theme_minimal()

# Show the temperature trend plot
print(temperature_plot)
ggsave("temperature_trend.png", plot = temperature_plot, width = 8, height = 5)

# 2. Scatter Plot: CO₂ Emissions vs. Temperature Anomaly
# Assuming the dataset has 'CO2Emissions' and 'TemperatureAnomaly' columns
scatter_plot <- ggplot(data, aes(x = dt, y = LandAverageTemperature)) +
  geom_point(color = "red", alpha = 0.6) +
  labs(title = "Date vs Land Average Temperature",
       x = "Date",
       y = "Land Average Temperature") +
  theme_minimal()

# Show the scatter plot
print(scatter_plot)
ggsave("co2_vs_temp.png", plot = scatter_plot, width = 8, height = 5)

