library(ggplot2)
library(ggthemes)

data(airquality)

airquality$Month <- factor(airquality$Month,
                           labels = c("May", "Jun", "Jul", "Aug", "Sep"))

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot()

p10

p10 <- p10 + scale_x_discrete(name = "Month") +
  scale_y_continuous(name = "Mean ozone in parts per billion")

p10

p10 <- p10 + scale_y_continuous(name = "Mean ozone in\nparts per billion")

p10

p10 <- p10 + scale_y_continuous(name = "Mean ozone in\nparts per billion",
                                breaks = seq(0, 175, 25),
                                limits=c(0, 175))
p10

p10 <- p10 + ggtitle("Boxplot of mean ozone by month")

p10

fill <- "gold1"
line <- "goldenrod2"

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot(fill = fill, colour = line) +
  scale_y_continuous(name = "Mean ozone in\nparts per billion",
                     breaks = seq(0, 175, 25),
                     limits=c(0, 175)) +
  scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")

p10

fill <- "#4271AE"
line <- "#1F3552"

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot(fill = fill, colour = line) +
  scale_y_continuous(name = "Mean ozone in\nparts per billion",
                     breaks = seq(0, 175, 25),
                     limits=c(0, 175)) +
  scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")

p10

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot(fill = fill, colour = line,
               alpha = 0.7) +
  scale_y_continuous(name = "Mean ozone in\nparts per billion",
                     breaks = seq(0, 175, 25),
                     limits=c(0, 175)) +
  scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")

p10

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot(fill = fill, colour = line, alpha = 0.7,
               outlier.colour = "#1F3552", outlier.shape = 20) +
  scale_y_continuous(name = "Mean ozone in\nparts per billion",
                     breaks = seq(0, 175, 25),
                     limits=c(0, 175)) +
  scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")

p10

p10 <- p10 + theme_bw()
p10

p10 <- ggplot(airquality, aes(x = Month, y = Ozone)) +
  geom_boxplot(fill = fill, colour = line, alpha = 0.7,
               outlier.colour = "#1F3552", outlier.shape = 20) +
  scale_y_continuous(name = "Mean ozone in\nparts per billion",
                     breaks = seq(0, 175, 25),
                     limits=c(0, 175)) +
  scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")

p10

p10 <- p10 + theme_economist()
p10

p10 <- p10 + geom_jitter()
p10




