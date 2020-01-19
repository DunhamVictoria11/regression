# Predicting data using one-factor regression analysis

The data frame http://d396qusza40orc.cloudfront.net/statistics/lec_resources/states.csv
Here you can see a piece of data:

[![image.png](https://i.postimg.cc/rF9jSvHt/image.png)](https://postimg.cc/dLLGFSwq)

Let's build a scatter plot for our data. Note that the relationship is linear.  We use regression analysis to determine the significance of the relationship between the dependent variable - the level of salary and the predictor - the level of education. Our goal is to predict the future indicators.

[![regr.png](https://i.postimg.cc/m2wDBwcs/regr.png)](https://postimg.cc/fJVZvYj2)

Using regression analysis in R, we obtained the following values:
# Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 64.78097    6.80260   9.523 9.94e-13 ***
hs_grad     -0.62122    0.07902  -7.862 3.11e-10 ***

Residual standard error: 2.082 on 49 degrees of freedom
Multiple R-squared:  0.5578,	Adjusted R-squared:  0.5488 
F-statistic: 61.81 on 1 and 49 DF,  p-value: 3.109e-10

Next, using the regression coefficients (b0=64.7810, b1=-0.6212), we construct the regression line equation.
# y = 64,67-0,62*x (where x = education level)

And if we now go to find out what percentage of poverty will be if the predictor is 98%, we get the value 3,91

The obtained value of the determination coefficient, equal to 56%, indicates that 56% of the variability of the dependent variable is explained by our model.


