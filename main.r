# loading the library for vizualization
library(ggplot2)

# Loading our data
data <- read.csv(url("http://d396qusza40orc.cloudfront.net/statistics/lec_resources/states.csv"))
# Creating model
fit <- lm(poverty~hs_grad, data = data)
plot_base <- ggplot(data, aes(x = hs_grad, y = poverty))

# Print out scatter plot
plot_base + geom_point() + 
    xlab("Education") + ylab("Poverty") + 
    # Regression line 
    geom_smooth(method = "lm", se = F) 

# Print out the description for further analysis (ex: Coef, Residuals, etc.)
summary(fit)
