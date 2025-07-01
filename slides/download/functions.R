# Order the data set according to specifications.
order_data <- function(df, order_by) {
    checkmate::assert_data_frame(df)
    checkmate::assert_character(order_by, min.len = 1)

    cat("Original dataset:\n")
    print(head(df))

    df_order <- do.call(order, df[order_by])
    df_ordered <- df[df_order, , drop = FALSE]

    cat("\nDataset ordered by the", toString(order_by), "columns\n")

    df_ordered
}

# Example:

# Create a simple dummy dataset
data <- data.frame(
    id = 1:10,
    value = sample(1:100, 10),
    category = sample(c("A", "B", "C"), 10, replace = TRUE)
)

order_data(data, "value")
order_data(data, c("category", "value"))
