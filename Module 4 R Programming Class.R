Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

#Side-by-Side Boxplot (Blood Pressure vs Final Decision)
boxplot(bloodp ~ finaldecision,
        names = c("Low Care", "High Care"),
        main = "Blood Pressure by Final Emergency Decision",
        ylab = "Blood Pressure",
        xlab = "Final Decision")

#Histogram (Blood Pressure Distribution)
hist(bloodp,
     main = "Histogram of Patient Blood Pressure",
     xlab = "Blood Pressure",
     col = "lightgray",
     breaks = 6)
