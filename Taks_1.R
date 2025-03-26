data <- read.csv("WHR2024.csv")

# 2. Display the first 5 rows (head())
head(data, n = 5)

# 3. Get basic summary statistics (summary())
summary(data)

# 4. Identify missing values
missing_values <- colSums(is.na(data))
print("Missing values per column:")
print(missing_values)

# 5. Save the cleaned dataset as cleaned_happiness.csv
# Assuming you performed cleaning steps (e.g., handling missing values)
# For this example, we will save the original dataset as "cleaned_happiness.csv"
# If you performed cleaning, replace 'data' with your cleaned dataframe name

write.csv(data, "cleaned_happiness.csv", row.names = FALSE)
cat("Cleaned dataset saved as cleaned_happiness.csv in the working directory.\n")
