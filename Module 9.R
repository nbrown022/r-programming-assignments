data("mtcars")
head(mtcars)
# Scatter plot
plot(mtcars$wt, mtcars$mpg,
     main = "Base: MPG vs Weight",
     xlab = "Weight",
     ylab = "MPG")

# Histogram
hist(mtcars$hp,
     main = "Base: Distribution of Horsepower",
     xlab = "Horsepower")
library(lattice)

# Conditional scatter plot
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs Weight by Cylinders")

# Boxplot
bwplot(hp ~ factor(cyl),
       data = mtcars,
       main = "Lattice: Horsepower by Cylinders")
library(ggplot2)

# Scatter plot with regression line
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: MPG vs Weight by Cylinders")

# Faceted histogram
ggplot(mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 20) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: Horsepower Distribution by Cylinders")