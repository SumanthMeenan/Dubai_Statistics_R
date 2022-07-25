library(ggplot2)

my_data <- read.csv("ABC-Data.txt", header = TRUE, sep = "\t")

cor.test(ABC_Data$HSP, ABC_Data$GPA)

model <- lm(ABC_Data$GPA ~ ABC_Data$HSP)
summary(model)
confint(model)

ggplot(my_data, aes(my_data$GPA, my_data$HSP)) + geom_point() +  stat_smooth(method = lm)