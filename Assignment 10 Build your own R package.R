plot_summary <- function(data) {
  library(ggplot2)
  
  numeric_vars <- data[, sapply(data, is.numeric)]
  categorical_vars <- data[, sapply(data, is.factor)]
  
  # Print histograms for numeric variables
  for (col in names(numeric_vars)) {
    p <- ggplot(data, aes_string(x = col)) +
      geom_histogram(fill = "blue", color = "black", bins = 30) +
      ggtitle(paste("Histogram of", col))
    print(p)
  }
  
  # Print bar charts for categorical variables
  for (col in names(categorical_vars)) {
    p <- ggplot(data, aes_string(x = col)) +
      geom_bar(fill = "green") +
      ggtitle(paste("Bar chart of", col))
    print(p)
  }
}
interactive_chart <- function(data, x, y) {
  library(ggplot2)
  library(plotly)
  
  p <- ggplot(data, aes_string(x = x, y = y)) +
    geom_point(color = "red") +
    ggtitle(paste("Scatter plot of", y, "vs", x))
  
  # Print the interactive plot immediately
  print(ggplotly(p))
}
tidy_summary <- function(data) {
  numeric_vars <- data[, sapply(data, is.numeric)]
  
  summary_tbl <- data.frame(
    variable = names(numeric_vars),
    mean = sapply(numeric_vars, mean, na.rm = TRUE),
    median = sapply(numeric_vars, median, na.rm = TRUE),
    sd = sapply(numeric_vars, sd, na.rm = TRUE)
  )
  
  print(summary_tbl)
  
  return(summary_tbl)
}
plot_summary(mtcars)
interactive_chart(mtcars, "mpg", "hp")
tidy_summary(mtcars)