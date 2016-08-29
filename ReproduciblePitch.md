ReproduciblePitch
========================================================
author: Aaron Brown
date: August 29, 2016
autosize: true

Intro
========================================================

This widget was created for the [Developing Data Products](https://www.coursera.org/learn/data-products/) class as part of the [Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science) on [Coursera](http://www.coursera.org).

This widget uses the **mtcars** dataset in **library(MASS)** to build a regression model

Regression model selection
========================================================

In order to select the best model, the **stepAIC()** function was used.

After some munging of **mtcars** dataset, the best model selected by AIC was

*mpg ~ cyl + hp + wt + am*

The App
========================================================

The app is currently running on Shiny:

[MPG App](https://abee82.shinyapps.io/mpg_app/)

Source code can be found on 

[Github](https://github.com/brownaa/DDP-Course-Project)

Data
================================


```r
data("mtcars")
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```
