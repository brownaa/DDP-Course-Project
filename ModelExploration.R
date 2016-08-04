library(MASS)
require(dplyr)

data(mtcars)
mycars = mtcars
mycars <- mutate(mycars, am = as.factor(am), cyl = as.factor(cyl), vs = as.factor(vs),
                 gear = as.factor(gear), carb = as.factor(carb))
levels(mycars$am) <- c("Automatic", "Manual")
levels(mycars$vs) <- c("V", "Straight")

fit = lm(mpg ~ . , data = mycars)

# summary(fit)$coef

step = stepAIC(fit, direction = "both")
step$anova

newfit = lm(mpg ~ cyl + hp + wt + am, data = mycars)

