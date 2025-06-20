library(dplyr)

# Create a simple dummy dataset
data <- data.frame(
    id = 1:10,
    value = sample(1:100, 10),
    category = sample(c("A", "B", "C"), 10, replace = TRUE)
)

# Print the original dataset
cat("Original dataset:\n")
print(data)

# Reshuffle the dataset by ordering it by the 'value' column
data_ordered <- data %>%
    arrange(value)

# Print the reshuffled dataset
cat("\nDataset ordered by 'value' column:\n")
print(data_ordered)

# You can also order by multiple columns or in descending order
data_ordered_desc <- data %>%
    arrange(category, desc(value))

cat("\nDataset ordered by 'category' (ascending) and 'value' (descending):\n")
print(data_ordered_desc)
