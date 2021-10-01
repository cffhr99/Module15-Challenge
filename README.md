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
### T.test on Lot 1
![t.test_lot1](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test2.png?raw=true) 
### T.test on Lot 2
![t.test_lot2](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test3.png?raw=true) 
### T.test on Lot 3
![t.test_lot3](https://github.com/cffhr99/Module15-Challenge/blob/main/images/T_test4.png?raw=true)  
