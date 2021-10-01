# Module15-Challenge：MechaCar_Statistical_Analysis
## Overview
## Purpose
 - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
 - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
 - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
 - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
## Linear Regression to Predict MPG
![linear_regression](https://github.com/cffhr99/Module15-Challenge/blob/main/images/linear.png?raw=true)  
From the summary of linear regression model above, the variables *vehicle_length*, *ground_clearance* and *vehicle_weight* are statistically significant since there *p-values* are under the confident level 0.05. According to the *R-squred：0.6825* and *p-value:5.35e-11*, the model fits the data well and it can accurately predict the MPG. However, there are still something needed to consider:
 - It is necessary to remove the insignificant variables (*spoiler_angle*, *AWD*) and refit a new linear regression to compare?
 - *vehicle_length* and *vehicle_weight* always have positive correlation. So they are not independent each other. It is necessary to consider the correlation between these two variables.
## Summary Statistics on Suspension Coils
![t.test_overall](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test1.png?raw=true)  
The *p-value* is greater than 0.05, which means that there is not enought evidence to reject null hypothesis that the population mean of 1500.  
### T.test on Lot 1
![t.test_lot1](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test2.png?raw=true)  
### T.test on Lot 2
![t.test_lot2](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test3.png?raw=true) 
### T.test on Lot 3
![t.test_lot3](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test4.png?raw=true)  
From the results above, *Lot 1* and *Lot 2* are not statistically significant from the population mean of 1500 since there *p-values* are quite larger than 0.05. The *Lot 3* is significant with *p-value: 0.04168* less than 0.05.

## Study Design: MechaCar vs Competition
A new study will be designed on *maintenance cost* and *horse power*. *horse power* can determine the performance while driving and *maintenance cost* is a key that consumers always consider before buying a new car.
 - The metrics to test are *maintenance cost* and *horse power*.
 - Null Hypothesis: *maintenance cost* and *horse power* has insignificant relations with *MPG*. Alternative Hypothesis: *maintenance cost* and *horse power* has significant relations with *MPG*.
 - (1) Linear regression model will be used to test the relationship between  *maintenance cost*,*horse power* and *MPG*.
 - (2) Using anova test to test *maintenance cost* and *horse power* based on number of cylinders.
 - The further data need to be collected is the number of cylinders of vehicles, horsepower and average maintenance cost of vehicles.
