x <- read.table(file.choose(), header = TRUE, sep = ",")

install.packages("plyr")
library(plyr)

y <- ddply(x, "Sex", transform, Grade.Average = mean(Grade))

write.table(y, "Sorted_Average.csv", sep = ",")

newx <- subset(x, grepl("[iI]", x$Name))

write.table(newx, "DataSubset.csv", sep = ",")

