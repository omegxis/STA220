setwd("/Users/Zachary/Desktop/STA220 R files/Tutorial #2")

sea_turtles<-read.csv(file = "TURTLES.csv", header = TRUE, sep = ",")

attach(sea_turtles)

names(sea_turtles)

alexander_length<-Length

library(mosaic)
favstats(~alexander_length)

hist(alexander_length, main = "Shell Length of Sea Turtles (in cm)")

sort(alexander_length)

stem(alexander_length)

library(ggplot2)

dotplot = ggplot(sea_turtles, aes(x = alexander_length))
dotplot + geom_dotplot(binwidth = 2)

boxplot(alexander_length, main = "Shell Length of Sea Turtles (in cm)", ylab = "Count", xlab = "alexander_length")
