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

https://abee82.shinyapps.io/mpg_app/

Source code can be found on 

[Github](https://github.com/brownaa/DDP-Course-Project)  
and  
[Git Pages]()
