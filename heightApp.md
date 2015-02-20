Child Height Prediction
========================================================
author: AmrB
date: Feb 19 2015

Application Description
========================================================

Child Height Prediction application predicts the height of a child based on the height of the parents.

User selects the desired measurement unit (centimeters or inches), enters mother's and father's weight in the corresponding boxes, and clicks Submit button.

The predicted height for both male and female child will be displayed in the corresponding boxes.

Application Algorithm
========================================================

The algorithm is based on the average difference in height between men and women of 13 cm.

Son's height is calculated by adding 13 cm to the mother's height and averaging with the father's height. 

Daughter's height is calculated by subtracting 13 cm from the father's height and averaging with the mother's height.

Based on user's choice the results are displayed in either centimeters or inches.

Male child height prediction
========================================================


```r
# Values for parents' height and the measurement units are captured from user input.  For example:
heightM <- 170
heightF <- 180
units <- 1  # 1 for cm, 2 for in
# Male child height is calculated:
sonHeight <- function(heightM, heightF, units) 
  if (units==1)
  {(heightM + 13 + heightF) / 2
  } else {round((heightM + 13*0.3937 + heightF) / 2 ,2)
  }
sonHeight(heightM, heightF, units)
```

```
[1] 181.5
```

Female child height prediction
========================================================


```r
# Values for parents' height and the measurement units are captured from user input.  For example:
heightM <- 170
heightF <- 180
units <- 1  # 1 for cm, 2 for in
# Female child height is calculated:
daughterHeight <- function(heightM, heightF, units) 
  if (units==1)
  {(heightM - 13 + heightF) / 2
  } else {round((heightM - 13*0.3937 + heightF) / 2 ,2)
  }
daughterHeight(heightM, heightF, units)
```

```
[1] 168.5
```
